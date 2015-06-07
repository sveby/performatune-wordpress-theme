<div class="row navigation">
    <div class="container">
        <nav role="navigation">
            <div class="container-fluid">

                <div class="navbar-header">
                    <button type="button" class=" glyphicon glyphicon-align-justify navbar-toggle" data-toggle="collapse" data-target="#main-navbar-collapse">
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


                <div class="collapse navbar-collapse" id="main-navbar-collapse">

                    {wp_nav_menu( $menuArgs )}

                    <form class="navbar-form navbar-right" action="{$homeUrl}/?s">
                        <div class="form-group input-group">
                            <input type="text" name="s" class="form-control" placeholder="..." value="{$search_query}">
                              <span class="input-group-btn">
                                <button class="btn btn-default glyphicon glyphicon-search search-button" type="button"></button>
                              </span>
                            <input type="hidden" name="lang" value="{$lang}" />
                        </div>
                    </form>

                </div>

            </div>
        </nav>
    </div>
</div>