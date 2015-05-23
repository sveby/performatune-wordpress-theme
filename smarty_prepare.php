<?php

# Load up Smarty:
require_once 'libs/Smarty.class.php';

/**
 * This function fills the smarty object with common data to all views
 */
function theme_smarty_prepare() {
    global $_lang;

    $smarty = new Smarty();
    $smarty->setTemplateDir(realpath(__DIR__)."/templates");
    #var_dump($smarty);
    $smarty->assign("templateUrl", get_bloginfo('template_url'));
    $smarty->assign("stylesheetUrl", get_bloginfo('stylesheet_url'));
    $smarty->assign("header", get_header());
    $smarty->assign("homeUrl", home_url());

    $mainMenuArgs = array (
        'menu'              => 'primary',
        'theme_location'    => 'primary',
        'depth'             => 2,
        'container'         => 'div',
        'container_class'   => 'collapse navbar-collapse',
        'container_id'      => 'bs-example-navbar-collapse-1',
        'menu_class'        => 'nav navbar-nav',
        'fallback_cb'       => 'wp_bootstrap_navwalker::fallback',
        'walker'            => new wp_bootstrap_navwalker()
    );

    $smarty->assign("menuArgs", $mainMenuArgs);
    $smarty->assign("footer", get_footer());
    $smarty->assign("lang", $_lang);

    return $smarty;
}
