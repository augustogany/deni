<?php
    if (isset($approved) and $approved == true) {
        $comments = $model->approvedComments;
    } else {
        $comments = $model->comments;
    }
?>

<?php if($comments->count() < 1): ?>
    <div class="alert alert-warning">There are no comments yet.</div>
<?php endif; ?>

<ul class="list-unstyled">
    <?php
        $grouped_comments = $comments->sortBy('created_at')->groupBy('child_id');
    ?>
    <?php $__currentLoopData = $grouped_comments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $comment_id => $comments): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        
        <?php if($comment_id == ''): ?>
            <?php $__currentLoopData = $comments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $comment): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php echo $__env->make('comments::_comment', [
                    'comment' => $comment,
                    'grouped_comments' => $grouped_comments
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</ul>

<?php if(auth()->guard()->check()): ?>
    <?php echo $__env->make('comments::_form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php elseif(config('comments.guest_commenting') == true): ?>
    <?php echo $__env->make('comments::_form', [
        'guest_commenting' => true
    ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php else: ?>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Authentication required</h5>
            <p class="card-text">You must log in to post a comment.</p>
            <a href="<?php echo e(route('login')); ?>" class="btn btn-primary">Log in</a>
        </div>
    </div>
<?php endif; ?>
<?php /**PATH C:\laragon\www\deni\resources\views/vendor/comments/components/comments.blade.php ENDPATH**/ ?>