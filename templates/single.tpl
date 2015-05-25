{extends "index.tpl"}


{block name="banner"}
    <div class="page-header single">
        <div class="container">
            <h1>{$postTitle}</h1>
        </div>
    </div>
{/block}

{block name="content_area"}
    <div class="col-md-8 main-content">
        {$postContent}
    </div>

    <div class="col-md-4 sidebar">
        {$faker = dynamic_sidebar('single_right')}
    </div>

{/block}

