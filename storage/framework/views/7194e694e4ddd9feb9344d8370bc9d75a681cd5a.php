<?php $__env->startSection('content'); ?>
<div class="container">

    <chats :user="<?php echo e(auth()->user()); ?>"></chats>

</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.apchat', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\deni\resources\views/chat.blade.php ENDPATH**/ ?>