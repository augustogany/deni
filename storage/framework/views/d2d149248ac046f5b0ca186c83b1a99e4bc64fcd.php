<?php $__env->startSection('title', 'Inicio'); ?>

<?php $__env->startSection('content'); ?>
    
<div class="container">
  
  <div class="row pt-4">

    <!-- Content -->
    <div class="col-lg-12">

      <!-- Products Grid -->
      <section class="section pt-4">

        <!-- Grid row -->
        <div class="row">

          <!-- Grid column -->
          <div class="col-lg-8 col-md-12 mb-3 pb-lg-2">

            <!-- Image -->
            <div class="view zoom z-depth-1">

              <img src="<?php echo e(asset('storage/'.setting('site.banner'))); ?>" class="img-fluid" alt="sample image">

              <div class="mask rgba-white-light">

                <div class="dark-grey-text d-flex align-items-center pt-4 ml-3 pl-3">

                  <div>

                    

                    <h2 class="card-title font-weight-bold pt-2 "><strong><?php echo e(setting('site.title')); ?></strong></h2>

                    <p class=""><?php echo e(setting('site.description')); ?> </p>

                    <a href="<?php echo e(route('chat')); ?> " target="blanck" class="btn btn-danger btn-md btn-rounded clearfix d-none d-md-inline-block"><i class="fab fa-whatsapp fa-lg"></i> Chat</a>

                  </div>

                </div>

              </div>

            </div>
            <!-- Image -->

          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-lg-4 col-md-12 mb-4">

            <!-- Section: Categories -->
            <section class="section">

           
              <ul class="list-group z-depth-1">
               
                

                
                <?php $__currentLoopData = $category; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php
                        $cantidad=App\Busine::where('categoria_id', $item->id)->count();
                    ?>
                    <?php if($cantidad > 0): ?>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                        <a class="dark-grey-text font-small"><i class="<?php echo e($item->icon); ?>"aria-hidden="true"></i><?php echo e($item->name); ?></a>
                        <span class="badge badge-danger badge-pill"><?php echo e($cantidad); ?></span>
                        </li>
                    <?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      </ul>

            </section>
            <!-- Section: Categories -->

          </div>
          <!-- Grid column -->

        </div>
        <!-- Grid row -->

        <!-- Section small products -->
        <section>

          <!-- Grid row -->
          <div class="row">

            <!-- Grid column -->
            <div class="col-12">

              <!-- Grid row -->
              <div class="row">
                <?php $__currentLoopData = $busine; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <!-- Grid column -->
                <div class="col-lg-6 col-md-6 mb-4">
                 
                  <!-- Card -->
                  <div class="card card-ecommerce">
                   
                    <!-- Grid row -->
                    <div class="row">

                      <!-- Grid column -->
                      <div class="col-6 d-flex align-items-center">

                        <!-- Card image -->
                        <div class="view overlay">

                          <img src="<?php echo e(asset('storage/'.$item->image)); ?>"
                            class="img-fluid" alt="">

                          <a href="<?php echo e(route('company', $item->slug)); ?>">

                            <div class="mask rgba-white-slight"></div>

                          </a>

                        </div>

                        <!-- Card image -->
                      </div>

                      <!-- Grid column -->
                      <div class="col-6 pl-0">

                        <!-- Card content -->
                        <div class="card-body">

                          <!-- Category & Title -->
                          <h5 class="card-title mb-1"><strong><a href="" class="dark-grey-text"><?php echo e($item->name); ?></a></strong>
                          </h5>
                          <?php
                          $categoria=App\Categoria::where('id', $item->categoria_id)->first();
  
                           ?>
                          <span class="badge badge-danger mb-2"><?php echo e($categoria->name); ?></span>

                          <!-- Rating -->
                          <ul class="rating">

                            <li><i class="fas fa-star blue-text"></i></li>

                            <li><i class="fas fa-star blue-text"></i></li>

                            <li><i class="fas fa-star blue-text"></i></li>

                            <li><i class="fas fa-star blue-text"></i></li>

                            <li><i class="fas fa-star blue-text"></i></li>

                          </ul>

                          <!-- Card footer -->
                          <div class="card-footer pb-0">

                            <div class="row mb-0">

                              
                              <p><?php echo e($item->description); ?></p>
                              

                            </div>

                          </div>

                        </div>
                        <!-- Card content -->

                      </div>

                    </div>
                   
                  </div>
                  <!-- Card -->
                
                </div>
                <!-- Grid column -->
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <!-- Grid column -->
                
                <!-- Grid column -->

              </div>
              <!-- Grid row -->

              <!-- Grid row -->
              
              <!-- Grid row -->

              <!-- Grid row -->
              
              <!-- Grid row -->

            </div>
            <!-- Grid column -->

          </div>
          <!-- Grid row -->

        </section>
        <!-- Section small products -->

        <!-- Section advertising 1 -->
        
        <!-- Section advertising 1 -->

        <!-- Section products -->
        
        <!-- Section products -->

        <!-- Section product list -->
        
        <!-- Section product list -->

        <!-- Grid row -->
        

        <!-- Grid row -->
        

        <!-- Grid row -->
        
        <!-- Grid row -->

        <!-- Grid row -->
        
        <!-- Grid row -->

      </section>
      <!-- Products Grid -->

    </div>
    <!-- Content -->

  </div>

</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\deni\resources\views/welcome.blade.php ENDPATH**/ ?>