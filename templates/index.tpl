<!DOCTYPE html>
<html>

    <head>
        {*theme tutorial used: http://www.onextrapixel.com/2011/03/08/how-to-code-a-wordpress-3-0-theme-from-scratch/ *}
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <title>{bloginfo("name")}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="{$templateUrl}/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="{$stylesheetUrl}">

        <link rel="shortcut icon" type="image/x-icon" href="{$templateUrl}/resources/logo.png" />

        {wp_head()}
    </head>


    <body>

        <div class="container-fluid navigation">
            {include file="main_menu.tpl"}
        </div>

        {block name="banner"}
            {include file="banner.tpl"}
        {/block}

        <div class="container main">

            <div class="row">

                {block name="content_area"}

                    <div class="col-md-8">
                        {foreach $outlined_pages as $page}
                            <div class="col-sm-12 col-md-6">
                                <div class="panel panel-info">
                                    <div class="panel-heading">{$page->post_title}</div>
                                    <div class="panel-body">
                                        {$page->post_content}
                                        <p class="text-center frontpage-more-link">
                                            <a href="{$page->guid}" class="btn btn-info">Saznajte više!</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        {/foreach}
                    </div>


                    <div class="col-md-4 col-sm-12 sidebar-titlepage">
                        {include file="titlepage_latest_posts.tpl" posts=$posts}

                        {$faker = dynamic_sidebar('titlepage_right')}
                    </div>

                {/block}

            </div>

            <div class="row"></div>

        </div> {* Main container end *}


        <div class="container-fluid footer-container">

            {$footer}

            <div clas="row row-centered">
                <p class="text-center">Copyright Performatune, 2015.</p>
                <p class="text-center">Kontakt: {mailto address="info@performatune.com"}</p>
            </div>
        </div> {* footer-container end *}

        <!-- Include jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="{$templateUrl}/bootstrap/dist/js/bootstrap.min.js"></script>
        {wp_footer()}

    </body>

</html>
