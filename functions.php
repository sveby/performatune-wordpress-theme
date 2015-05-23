<?php
 
# Add support for WordPress 3.0 and later custom menus
add_action( 'init', 'register_my_menu' );

# We are using a Bootstrap menu for this Bootstrap theme; walker provided by https://github.com/twittem/wp-bootstrap-navwalker
require_once('wp_bootstrap_navwalker.php');
 
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
