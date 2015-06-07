<?php

require_once 'smarty_prepare.php';

# Add support for WordPress 3.0 and later custom menus
add_action( 'init', 'register_my_menu' );

# We are using a Bootstrap menu for this Bootstrap theme; walker provided by https://github.com/twittem/wp-bootstrap-navwalker
require_once('wp_bootstrap_navwalker.php');

# This function is a sort of initializer for the theme - starts up Smarty, makes sure $_lang is loaded etc.
function initTheme() {
    global $_lang, $smarty;
    if (isset($_GET['lang'])) {
        $_lang = $_GET['lang'];
    } else {
        $tmp = explode("/", str_replace("/index.php", "", $_SERVER['REQUEST_URI']));
        $_lang = $tmp[1];
    }

    # Fill smarty with common theme requirements:

    $smarty = theme_smarty_prepare();

    if (isset($_GET['s'])) {
        $smarty->assign('search_query', $_GET['s']);
    }
}

# Register area for custom menu
function register_my_menu() {
    register_nav_menu( 'primary', __( 'Primary Menu' ) );
}
 
if ( function_exists('register_sidebar') ) {


    $args = array(
	'name'          => __( 'Right sidebar', 'theme_text_domain' ),
	'id'            => 'single_right',
	'description'   => 'Pages and posts right sidebar',
    'class'         => '',
	'before_widget' => '',
	'after_widget'  => '',
	'before_title'  => '<h3>',
	'after_title'   => '</h3>' );
	#register_sidebar($args);
    # Register default sidebar:
    register_sidebar($args);
    
    # Register right titlepage sidebar
    $args = array(
	'name'          => __( 'Right column ', 'theme_text_domain' ),
	'id'            => 'titlepage_right',
	'description'   => 'Sidebar titlepage right stuff',
    'class'         => '',
	'before_widget' => '',
	'after_widget'  => '',
	'before_title'  => '<h3>',
	'after_title'   => '</h3>' );
	
    register_sidebar($args);
}


add_theme_support( 'post-thumbnails' );