@extends('layouts.apchat')

@section('content')
<div class="container">

    <private-chat :user="{{ auth()->user() }}"></private-chat>

</div>
@endsection