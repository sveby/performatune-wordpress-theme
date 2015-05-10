<!DOCTYPE html>
<html>

    <head>
        {*theme tutorial used: http://www.onextrapixel.com/2011/03/08/how-to-code-a-wordpress-3-0-theme-from-scratch/ *}
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <title>{bloginfo("name")}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="{$templateUrl}/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="{$stylesheetUrl}">

        <link rel="shortcut icon" type="image/x-icon" href="{$templateUrl}/dcfavicon.png" />

        {wp_head()}
    </head>


    <body>

        <div class="container main">

            {include file="main_menu.tpl"}

            <div class="row">
                {block name="content_area"}
                    <div class="col-md-12">
                            <h1>{$page->post_title}</h1>
                            {$page->post_content}
                    </div>
                {/block}
            </div>

        </div> {* Main container end *}


        <div class="container-fluid footer-container">
            {$footer}

            <!-- Include jQuery -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="{$templateUrl}/bootstrap/dist/js/bootstrap.min.js"></script>

        </div> {* footer-container end *}


        {wp_footer()}

    </body>

</html>
