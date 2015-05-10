<?php

    # Fill smarty with common theme requirements:
    require 'smarty_prepare.php';
    $smarty = theme_smarty_prepare();

    while (have_posts()) {
        the_post();
        $smarty->assign("postTitle", get_the_title());
        $smarty->assign("postContent", get_the_content());
        $smarty->assign("post-thumbnail", get_the_post_thumbnail());
        $smarty->assign("edit-post-link", get_edit_post_link());
    }

    $smarty->display("single.tpl");
