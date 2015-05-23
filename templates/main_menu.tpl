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
                    <a class="navbar-brand" href="{$homeUrl}">
                        {*<img src="{$templateUrl}/resources/logo.png" class="img-responsive"/>*}
                        <span class="first">Performa</span><span class="second">Tune</span>
                    </a>
                </div>
                {wp_nav_menu( $menuArgs )}
            </div>
        </nav>
    </div>
</div>