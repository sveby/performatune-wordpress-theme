<?php
    /**
     *
     * Author: Svebor Prstačić, sprstacic.wordpress.com, @sprstacic
     *
     * */

    # Fill smarty with common theme requirements:
    require 'smarty_prepare.php';
    $smarty = theme_smarty_prepare();


    # Index related processing:
    $smarty->assign("page", get_page(2));


    # Display the page:
    $smarty->display("index.tpl");

