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
    $postID = get_the_id();
    $smarty->assign("id", $postID);
    $smarty->assign("postTitle", get_the_title());
    $smarty->assign("postContent", get_the_content());
    $smarty->assign("postThumbnail", get_the_post_thumbnail($postID, 'thumbnail'));
    $smarty->assign("editPostLink", get_edit_post_link());
    if (has_excerpt($postID)) {
        $smarty->assign("postExcerpt", get_the_excerpt());
    }
}

if (isset($templatePreset )) {
    $template = $templatePreset;
} else {
    $template = "single.tpl";
}
$smarty->display($template);
