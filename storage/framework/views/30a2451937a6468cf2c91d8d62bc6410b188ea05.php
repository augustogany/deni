<!DOCTYPE html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">

<head>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <?php echo SEO::generate(); ?>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="../recursos/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="../recursos/css/mdb.min.css" rel="stylesheet">
  <link href="../recursos/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="../css/jquery.floating-social-share.min.css">
  
  <style>

  </style>

</head>


<body class="homepage-v3 hidden-sn white-skin animated">
 
    <!-- Navigation -->
  <?php echo $__env->make('layouts.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <!-- Navigation -->
  
    <!-- Mega menu -->
    <?php echo $__env->make('layouts.megamenu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <!-- Mega menu -->
  
    <!-- Main Container -->
   <?php echo $__env->yieldContent('content'); ?>
       
   <?php echo $__env->yieldContent('sharesocial'); ?>
    <!-- Main Container -->
    <!-- Footer -->
   <?php echo $__env->make('layouts.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <!-- Footer -->
  
    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="../recursos/js/jquery-3.4.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="../recursos/js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="../recursos/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="../recursos/js/mdb.min.js"></script>
    <script type="text/javascript" src="../js/jquery.floating-social-share.min.js"></script>
    
    <script type="text/javascript">
      /* WOW.js init */
      new WOW().init();
  
      // Tooltips Initialization
      $(function () {
        $('[data-toggle="tooltip"]').tooltip()
      })
  
      // Material Select Initialization
      $(document).ready(function () {
        $('.mdb-select').materialSelect();
      });
  
      // SideNav Initialization
      $(".button-collapse").sideNav();
 
    </script>
   <?php echo $__env->yieldContent('js'); ?>
  </body>
</html>
<?php /**PATH C:\laragon\www\deni\resources\views/layouts/app.blade.php ENDPATH**/ ?>