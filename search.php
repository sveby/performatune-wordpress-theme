<?php

global $_lang, $smarty;
initTheme();

global $query_string;


$query_args = explode("&", $query_string);
$search_query = array();

foreach($query_args as $key => $string) {
    $query_split = explode("=", $string);
    $search_query[$query_split[0]] = urldecode($query_split[1]);
} // foreach


$search = new WP_Query($search_query);

#var_dump($search);
$smarty->assign("results", $search->posts);

$smarty->display("search.tpl");