<?php $__env->startSection('content'); ?>
<div class="container">

    <private-chat :user="<?php echo e(auth()->user()); ?>"></private-chat>

</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.apchat', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\deni\resources\views/chats/privado.blade.php ENDPATH**/ ?>