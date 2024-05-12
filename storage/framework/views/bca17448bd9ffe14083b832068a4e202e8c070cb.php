<div>
    <ul class="nav nav-tabs dzm-tabs" id="myTab" role="tablist">
        <form action="<?php echo e($route??''); ?>" method="get">
            <div class="input-group">
                <input class="form-control" name="name" value="<?php echo e(Request()->query('name')??''); ?>" placeholder="<?php echo e(TranslationHelper::translate('Search for...')); ?>" type="search">
                <span class="input-group-btn">
                    <button class="btn btn-primary" type="submit">
                        <span class="input-group-btn"><i class="fa fa-search"></i></span>
                    </button>
                </span>
            </div>
        </form>
    </ul>
</div><?php /**PATH /home/f1qsj68b8fja/public_html/resources/views/components/admin/search.blade.php ENDPATH**/ ?>