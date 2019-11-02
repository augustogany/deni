<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
//modelos
use App\Busine;
use App\SocialNetwork;
use App\Horario;
use App\Categoria;
use App\Start;

use Artesaos\SEOTools\Facades\SEOTools;

class FrontendController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //SEO Tools
        SEOTools::setTitle(setting('site.title'));
        SEOTools::setDescription(setting('site.description'));
        //CONSULTAS ELOQUEN
        $busine=Busine::all();
        $category=Categoria::limit(7)
                ->where('deleted_at', null)
                ->orderBy('updated_at', 'desc')
                ->get();
        // return $category;
        return view('welcome',compact('busine','category'));
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
       
        
        //CONSULTAS
        $detail=Busine::where('slug',$slug)->first();
        // return $detail;
        $redes=SocialNetwork::where('busine_id',$detail->id)->get();

        $horario=Horario::where('busine_id',$detail->id)->first();
         //SEO Tools
         SEOTools::setTitle($detail->name);
         SEOTools::setDescription($detail->description);

        return view('company',compact('detail','redes','horario'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function like($slug){
        $detail=Busine::where('slug', $slug)->first();
        // return $detail;
        // $var=Start::where('')
        $var=Start::where('user_id', Auth::user()->id)
                    ->where('busine_id', $detail->id)
                    ->first();
     if ($var) {
         return back();
     }else{
        Start::create([
            'puntuacion'=>1,
            'busine_id'=>$detail->id,
            'user_id'=>Auth::user()->id
        ]);
        return back();  
     }
        
    }
    
    public function search(Request $request)
    {
        //return $request->criterio;
        //SEO Tools
        SEOTools::setTitle(setting('site.title'));
        SEOTools::setDescription(setting('site.description'));
        //CONSULTAS ELOQUEN4
        $busine=Busine::where('name', 'like', '%'.$request->criterio.'%')->get();
        //return $busine;
        $category=Categoria::limit(7)
                ->where('deleted_at', null)
                ->orderBy('updated_at', 'desc')
                ->get();
        // return $category;
        return view('welcome',compact('busine','category'));
        
    }
    
    
}
