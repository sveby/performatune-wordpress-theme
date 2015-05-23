{extends "index.tpl"}


{block name="banner"}
    <div class="jumbotron">
    </div>
{/block}

{block name="content_area"}
    <div class="col-md-8 main-content">

        <h1>{$postTitle}</h1>
        {$postContent}
    </div>

    <div class="col-md-4 sidebar">
        {$faker = dynamic_sidebar('single_right')}
    </div>

{/block}

