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
        {if $postExcerpt}
            <div class="row">
                <div class="col-sm-2">
                    {$postThumbnail}
                </div>
                <div class="col-sm-10">
                    <em>{$postExcerpt}</em>
                </div>
            </div>

            <div class="row row-centered">
                <div class="col-sm-2"></div>
                <div class="col-sm-8"> <hr></div>
                <div class="col-sm-2"></div>
            </div>
        {/if}

        <div class="row">
            <div class="col-sm-12">
                {the_content()}
                <div class="clear"></div>
                <hr>
            </div>
        </div>
    </div>
    <div class="col-md-4 sidebar">
        {$faker = dynamic_sidebar('single_right')}
    </div>
{/block}

