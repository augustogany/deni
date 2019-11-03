<?php $__env->startSection('title', 'Detalle Negocios'); ?>
<?php $__env->startSection('sharesocial'); ?>
<div class="content" style="margin-left: 0%; margin-right:10%; line-height: 72px; position:relative;">
    
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="container mt-5 pt-3">
  <!-- Section: Product detail -->
  <section id="productDetails" class="pb-5">

    <!-- News card -->
    <div class="card mt-5 hoverable">

      <div class="row mt-5">

        <div class="col-lg-6">

          <!-- Carousel Wrapper -->
          <div id="carousel-thumb" class="carousel slide carousel-fade carousel-thumbnails" data-ride="carousel">

            <!-- Slides -->
            <div class="carousel-inner text-center text-md-left" role="listbox">

              
     
              <?php if($detail->images!= ""): ?>
                  <?php $__empty_1 = true; $__currentLoopData = json_decode($detail->images); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                      <?php if($loop->first): ?>
                          <div class="carousel-item active">
                            <img src="<?php echo e(asset('storage/'.$item)); ?>" alt="First slide"class="img-fluid">
                          </div>
                        <?php else: ?>
                          <div class="carousel-item">
                            <img src="<?php echo e(asset('storage/'.$item)); ?>" alt="First slide"class="img-fluid">
                          </div>
                      <?php endif; ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                  <?php endif; ?>
              <?php endif; ?> 
            </div>
            <!-- Slides -->
          
            <!-- Thumbnails -->
            <a class="carousel-control-prev" href="#carousel-thumb" role="button" data-slide="prev">

              <span class="carousel-control-prev-icon" aria-hidden="true"></span>

              <span class="sr-only">Previous</span>

            </a>

            <a class="carousel-control-next" href="#carousel-thumb" role="button" data-slide="next">

              <span class="carousel-control-next-icon" aria-hidden="true"></span>

              <span class="sr-only">Next</span>

            </a>
            <!-- Thumbnails -->

          </div>
          <!-- Carousel Wrapper -->

        </div>

        <div class="col-lg-5 mr-3 text-center text-md-left">

          <h2
            class="h2-responsive text-center text-md-left product-name font-weight-bold dark-grey-text mb-1 ml-xl-0 ml-4">

            <strong><?php echo e($detail->name); ?></strong>

          </h2>
          <?php
          $categoria=App\Categoria::where('id', $detail->categoria_id)->first();

           ?>
        
          <h5><span class="badge badge-danger product mb-4 ml-xl-0 ml-4"><?php echo e($categoria->name); ?></span></h5>

          

            

            

          

          <!-- Accordion wrapper -->
          <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

            <!-- Accordion card -->
            <div class="card">

              <!-- Card header -->
              <div class="card-header" role="tab" id="headingOne1">

                <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="true"
                  aria-controls="collapseOne1">

                  <h5 class="mb-0">

                    Descripcion

                    <i class="fas fa-angle-down rotate-icon"></i>

                  </h5>

                </a>

              </div>

              <!-- Card body -->
              <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1"
                data-parent="#accordionEx">

                <div class="card-body">

                  <p><?php echo e($detail->description); ?></p>
                  <i class="fas fa-globe mr-3"></i><a href="https://<?php echo e($detail->site); ?>" target="_blanck">: <?php echo e($detail->site); ?></a><br>
                  <i class="fas fa-map-marked-alt mr-3"></i>: <?php echo e($detail->addres); ?>


                </div>

              </div>

            </div>
            <!-- Accordion card -->
         
            <!-- Accordion card -->
            <div class="card">

              <!-- Card header -->
              <div class="card-header" role="tab" id="headingTwo2">

                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2"
                  aria-expanded="false" aria-controls="collapseTwo2">

                  <h5 class="mb-0">

                    Redes Sociales

                    <i class="fas fa-angle-down rotate-icon"></i>
                    
                  </h5>

                </a>

              </div>

              <!-- Card body -->
              <div id="collapseTwo2" class="collapse" role="tabpanel" aria-labelledby="headingTwo2"data-parent="#accordionEx">
                <div class="card-body">
                    <?php $__empty_1 = true; $__currentLoopData = $redes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                        <a href="<?php echo e($item->link); ?>" target="_blank"><i class="<?php echo e($item->icon); ?>"></i><?php echo e($item->link); ?></a><br>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                    <?php endif; ?> 
                </div>

              </div>
             
            </div>
            <!-- Accordion card -->

            <!-- Accordion card -->
            <div class="card">

              <!-- Card header -->
              <div class="card-header" role="tab" id="headingThree3">

                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree3"
                  aria-expanded="false" aria-controls="collapseThree3">

                  <h5 class="mb-0">

                    Horarios

                    <i class="fas fa-angle-down rotate-icon"></i>

                  </h5>

                </a>

              </div>

              <!-- Card body -->
              <div id="collapseThree3" class="collapse" role="tabpanel" aria-labelledby="headingThree3"
                data-parent="#accordionEx">

                <div class="card-body">
                  
                <?php if($horario != ""): ?>
                    <?php
                      $nombre_dias = array('Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sábado', 'Domingo');
                      $horarios=json_decode($horario->dias);
                    ?>
                    <p><i class="far fa-calendar-alt"></i>
                      <?php for($i = 0; $i < count($horarios); $i++): ?>
                            <?php echo e($nombre_dias[$i]); ?>

                      <?php endfor; ?>
                   </p> 
                    <p><i class="far fa-clock"></i> :<?php echo e($horario->hora_inicio); ?></p>
                    <p><i class="fas fa-clock"></i> :<?php echo e($horario->hora_final); ?></p>
                <?php endif; ?>
               
                </div>
            
              </div>

            </div>
            <!-- Accordion card -->

          </div>
          <!-- Accordion wrapper -->

          <!-- Add to Cart -->
          <section class="color">

            <div class="mt-5">

              

              

              
              <div  class="row">
                <div class="col-md-12 text-center">
                  <div class="form-group">
                  
                   <a href="https://wa.me/591<?php echo e($detail->watsapp); ?>" target="blanck" class="btn btn-success btn-rounded btn-md"><i class="fab fa-whatsapp"></i> Chatear</a>
                   <a href="https://<?php echo e($detail->sharemap); ?>" target="_blanck" class="btn btn-warning btn-rounded btn-md"><i class="fas fa-map-pin"></i> ubicacion</a>
                   <a href="<?php echo e(route('like', $detail->slug)); ?>" class="btn btn-primary btn-rounded btn-md"><i class="fas fa-thumbs-up"></i> Me Gusta</a>
                    
                </div>   
              </div>
              </div>

            </div>

          </section>
          <!-- Add to Cart -->

        </div>

      </div>

    </div>

  </section>

  <!-- Section: Product detail -->
  <div class="divider-new">

    <h3 class="h3-responsive font-weight-bold blue-text mx-3">Descripcion del Negocio</h3>
  </div>

  <!-- Product Reviews -->
  <section id="reviews" class="pb-5">

    <!-- Main wrapper -->
    
    <?php echo $detail->description_long; ?>

    <!-- Main wrapper -->

  </section>

  <!-- Product comments -->
  <div class="divider-new">

    <h3 class="h3-responsive font-weight-bold blue-text mx-3">Comentarios</h3>

  </div>

  <!-- Section: Products-->
  <section id="products" class="pb-5">
 <!-- Parrafo -->
    <p class="text-center w-responsive mx-auto mb-5 dark-grey-text"></p>

   
      <!-- Carousel Wrapper -->
    <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">
      <?php echo $__env->make('comments::components.comments', ['model' => $detail], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    
  </section>
   <!-- Section: comments -->

 
  <!-- Product Reviews -->
  <div class="divider-new">

    <h3 class="h3-responsive font-weight-bold blue-text mx-3">Negocios Relacionados</h3>

  </div>

  <!-- Section: Products v.5 -->
  <section id="products" class="pb-5">

    

    <!-- Carousel Wrapper -->
    <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">

      <!-- Controls -->
      <div class="controls-top">

        <a class="btn-floating primary-color" href="#multi-item-example" data-slide="prev">

          <i class="fas fa-chevron-left"></i>

        </a>

        <a class="btn-floating primary-color" href="#multi-item-example" data-slide="next">

          <i class="fas fa-chevron-right"></i>

        </a>

      </div>
      <!-- Controls -->

      <!-- Indicators -->
      <ol class="carousel-indicators">

        <li class="primary-color" data-target="#multi-item-example" data-slide-to="0" class="active"></li>

        <li class="primary-color" data-target="#multi-item-example" data-slide-to="1"></li>

        <li class="primary-color" data-target="#multi-item-example" data-slide-to="2"></li>

      </ol>
      <!-- Indicators -->

      <!-- Slides -->
      <div class="carousel-inner" role="listbox">

        <!-- First slide -->
        <div class="carousel-item active">

          
          
          <?php if($detail->busine_relation != ""): ?>
        
          <?php $__empty_1 = true; $__currentLoopData = json_decode($detail->busine_relation); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
         
            <?php
              $relation =App\Busine::where('id', $item)->first();  
            ?>
           
              <div class="col-md-4 clearfix d-none d-md-block mb-4">
                <!-- Card 3-->
                <div class="card card-ecommerce">

                  <!-- Card image -->
                  <div class="view overlay">
              
                    <img src="<?php echo e(asset('storage/'.$relation->image)); ?>" class="img-fluid"
                      alt="">
                      
                    <a>

                      <div class="mask rgba-white-slight"></div>

                    </a>

                  </div>
                  <!-- Card image -->
                 
                  <!-- Card content -->
                  <div class="card-body">

                    <!-- Category & Title -->
                    <h5 class="card-title mb-1">

                      <strong>

                        <a href="" class="dark-grey-text"><?php echo e($relation->name); ?></a>

                      </strong>

                    </h5>

                    <span class="badge badge-info mb-2">categoria</span>
                   
                    <!-- Rating -->
                    <ul class="rating">

                      <li>

                        <i class="fas fa-star blue-text"></i>

                      </li>

                      <li>

                        <i class="fas fa-star blue-text"></i>

                      </li>

                      <li>

                        <i class="fas fa-star blue-text"></i>

                      </li>

                      <li>

                        <i class="fas fa-star blue-text"></i>

                      </li>

                      <li>

                        <i class="fas fa-star blue-text"></i>

                      </li>

                    </ul>

                    <!-- Card footer -->
                    <div class="card-footer pb-0">

                      <div class="row mb-0">

                        <span class="float-left">

                          <strong><?php echo e($relation->description); ?></strong>

                        </span>

                        

                      </div>

                    </div>

                  </div>
                  <!-- Card content -->

                </div>
                <!-- Card -->
              </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
              <?php endif; ?>
          <?php endif; ?> 
        </div>
        <!-- First slide -->

        <!-- Second slide -->
        
        <!-- Second slide -->

        <!-- Third slide -->
        

          

          
          
          

          
                  <!-- Third slide -->
                
                  
                </div>
                <!-- Slides -->

              </div>
              <!-- Carousel Wrapper -->

  </section>
   <!-- Section: Products v.5 -->
  

<?php $__env->startSection('js'); ?>
<script>
    $(".content").floatingSocialShare({
      buttons: [
        "facebook", "twitter", "whatsapp"
      ],
      text: {'default': 'share with: ', 'facebook': 'share with facebook'},
      text_title_case: true,
      popup: false,
      place: "content-right",
      url: "https://github.com/ozdemirburak/jquery-floating-social-share"
    });
  </script>

    <?php $__env->stopSection(); ?>


   </div>  
  <?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\deni\resources\views/company.blade.php ENDPATH**/ ?>