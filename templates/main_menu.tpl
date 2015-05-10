<div class="row navigation">
    <div class="container">
        <nav role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class=" glyphicon glyphicon-align-justify navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="{$home-url}">
                        <!--<img src="<?php bloginfo('template_url');?>/logo.png">-->
                    </a>
                </div>
                {wp_nav_menu( $menuArgs )}
            </div>
        </nav>
    </div>
</div>