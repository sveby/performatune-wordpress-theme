<?php
/**
 *
 * Author: Svebor Prstačić, sprstacic.wordpress.com, @sprstacic
 *
 * */

global $_lang, $smarty;
initTheme();


# Load outlined pages for the titlepage:

$outlinedPages = array(get_page(2), get_page(10), get_page(13), get_page(55));

# If we have polylang, make sure we are getting the right language posts:
if (function_exists("pll_get_post")) {
    $postsTmp = $outlinedPages;
    $outlinedPages = array();
    foreach ($postsTmp as $p) {
        $postID = pll_get_post($p->ID, $_lang);
        $outlinedPages[] = get_page($postID);
    }
}
$smarty->assign("outlined_pages", $outlinedPages);



# Load latest posts for the titlepage:

$args = array(
    'numberposts' => 4,
    'offset' => 0,
    'category' => 0,
    'orderby' => 'post_date',
    'order' => 'DESC',
    'post_type' => 'post',
    'post_status' => 'publish',
    'suppress_filters' => true );

$posts = wp_get_recent_posts($args, ARRAY_A);

# If we have polylang, make sure we are getting the right language posts:
if (function_exists("pll_get_post")) {
    $postsTmp = $posts;
    $posts = array();
    foreach ($postsTmp as $p) {
        $postID = pll_get_post($p['ID'], $_lang);
        $posts[] = get_post($postID);
    }
}
$smarty->assign("posts", $posts);


# Display the page:
$smarty->display("index.tpl");

