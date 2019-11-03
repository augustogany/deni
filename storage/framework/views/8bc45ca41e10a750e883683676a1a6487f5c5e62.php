<?php $markdown = app('Parsedown'); ?>
<?php ($markdown->setSafeMode(true)); ?>

<?php if(isset($reply) && $reply === true): ?>
  <div id="comment-<?php echo e($comment->id); ?>" class="media">
<?php else: ?>
  <li id="comment-<?php echo e($comment->id); ?>" class="media">
<?php endif; ?>
    <img class="mr-3" src="https://www.gravatar.com/avatar/<?php echo e(md5($comment->commenter->email ?? $comment->guest_email)); ?>.jpg?s=64" alt="<?php echo e($comment->commenter->name ?? $comment->guest_name); ?> Avatar">
    <div class="media-body">
        <h5 class="mt-0 mb-1"><?php echo e($comment->commenter->name ?? $comment->guest_name); ?> <small class="text-muted">- <?php echo e($comment->created_at->diffForHumans()); ?></small></h5>
        <div style="white-space: pre-wrap;"><?php echo $markdown->line($comment->comment); ?></div>

        <div>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('reply-to-comment', $comment)): ?>
                <button data-toggle="modal" data-target="#reply-modal-<?php echo e($comment->id); ?>" class="btn btn-sm btn-link text-uppercase">Reply</button>
            <?php endif; ?>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('edit-comment', $comment)): ?>
                <button data-toggle="modal" data-target="#comment-modal-<?php echo e($comment->id); ?>" class="btn btn-sm btn-link text-uppercase">Edit</button>
            <?php endif; ?>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('delete-comment', $comment)): ?>
                <a href="<?php echo e(url('comments/' . $comment->id)); ?>" onclick="event.preventDefault();document.getElementById('comment-delete-form-<?php echo e($comment->id); ?>').submit();" class="btn btn-sm btn-link text-danger text-uppercase">Delete</a>
                <form id="comment-delete-form-<?php echo e($comment->id); ?>" action="<?php echo e(url('comments/' . $comment->id)); ?>" method="POST" style="display: none;">
                    <?php echo method_field('DELETE'); ?>
                    <?php echo csrf_field(); ?>
                </form>
            <?php endif; ?>
        </div>

        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('edit-comment', $comment)): ?>
            <div class="modal fade" id="comment-modal-<?php echo e($comment->id); ?>" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <form method="POST" action="<?php echo e(url('comments/' . $comment->id)); ?>">
                            <?php echo method_field('PUT'); ?>
                            <?php echo csrf_field(); ?>
                            <div class="modal-header">
                                <h5 class="modal-title">Editar comentario</h5>
                                <button type="button" class="close" data-dismiss="modal">
                                <span>&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="message">Actualiza tu mensaje aquí:</label>
                                    <textarea required class="form-control" name="message" rows="3"><?php echo e($comment->comment); ?></textarea>
                                    <small class="form-text text-muted"><a target="_blank" href="https://help.github.com/articles/basic-writing-and-formatting-syntax">Markdown</a> cheatsheet.</small>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-sm btn-outline-secondary text-uppercase" data-dismiss="modal">Cancelar</button>
                                <button type="submit" class="btn btn-sm btn-outline-success text-uppercase">Actualizar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        <?php endif; ?>

        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('reply-to-comment', $comment)): ?>
            <div class="modal fade" id="reply-modal-<?php echo e($comment->id); ?>" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <form method="POST" action="<?php echo e(url('comments/' . $comment->id)); ?>">
                            <?php echo csrf_field(); ?>
                            <div class="modal-header">
                                <h5 class="modal-title">Responder al comentario</h5>
                                <button type="button" class="close" data-dismiss="modal">
                                <span>&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="message">Específicamente su mensaje aquí:</label>
                                    <textarea required class="form-control" name="message" rows="3"></textarea>
                                    <small class="form-text text-muted"><a target="_blank" href="https://help.github.com/articles/basic-writing-and-formatting-syntax">Markdown</a> cheatsheet.</small>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-sm btn-outline-secondary text-uppercase" data-dismiss="modal">Cancelar</button>
                                <button type="submit" class="btn btn-sm btn-outline-success text-uppercase">Respuesta</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        <?php endif; ?>

        <br />

        
        <?php if($grouped_comments->has($comment->id)): ?>
            <?php $__currentLoopData = $grouped_comments[$comment->id]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php echo $__env->make('comments::_comment', [
                    'comment' => $child,
                    'reply' => true,
                    'grouped_comments' => $grouped_comments
                ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>

    </div>
<?php if(isset($reply) && $reply === true): ?>
  </div>
<?php else: ?>
  </li>
<?php endif; ?><?php /**PATH C:\laragon\www\deni\resources\views/vendor/comments/_comment.blade.php ENDPATH**/ ?>