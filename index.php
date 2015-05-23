<?php
    /**
     *
     * Author: Svebor Prstačić, sprstacic.wordpress.com, @sprstacic
     *
     * */

    global $_lang;
    $tmp = explode("/",$_SERVER['REQUEST_URI']);
    $_lang = $tmp[1];


    # Fill smarty with common theme requirements:
    require 'smarty_prepare.php';
    $smarty = theme_smarty_prepare();


    # Index related processing:
    $smarty->assign("page", get_page(2));

    $outlined_pages = array(get_page(2), get_page(10), get_page(13));
    $smarty->assign("outlined_pages", $outlined_pages);


    # Display the page:
    $smarty->display("index.tpl");

