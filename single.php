<?php
/**
     *
     * Author: Svebor Prstačić, sprstacic.wordpress.com, @sprstacic
     *
    * */

global $_lang, $smarty;
initTheme();



while (have_posts()) {
    the_post();
    $smarty->assign("postTitle", get_the_title());
    $smarty->assign("postContent", get_the_content());
    $smarty->assign("post-thumbnail", get_the_post_thumbnail());
    $smarty->assign("edit-post-link", get_edit_post_link());
}

$smarty->display("single.tpl");
