<?php

global $_lang, $smarty;
initTheme();

if (have_posts()) {

    # Insert archive title and description into header:
    $smarty->assign("postTitle", get_the_archive_title());
    $smarty->assign("postDescription", get_the_archive_description());

    # Fetch posts:
    $data = array();
    while (have_posts()) {
        the_post();
        $tmp = array();
        $tmp['id'] = get_the_id();
        $tmp['date'] = get_the_date();
        $tmp['postTitle'] = get_the_title();
        $tmp['postExcerpt'] = get_the_excerpt();
        #$tmp['postRSSExcerpt'] = get_the_excerpt_rss();
        $tmp['thumbnail'] = get_the_post_thumbnail($tmp['id'], 'thumbnail');
        $tmp['content'] = get_the_content();
        $data[] = $tmp;
    }
    $smarty->assign("posts", $data);
}


$smarty->display("category.tpl");