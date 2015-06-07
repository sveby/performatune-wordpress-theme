{extends "index.tpl"}

{block name="banner"}
    <div class="page-header single">
        <div class="container">
            <h1>
                {if $lang == "hr"}
                    Pretraživanje
                {elseif $lang=="en"}
                    Search results
                {/if}
            </h1>
        </div>
    </div>
{/block}

{block name="content_area"}
    <div class="col-md-8 main-content search-results">
        {foreach $results as $result}
            <div class="search-result">
                <span class="label label-info">
                    {$result->post_date|date_format:'%d. %m. %Y.'}
                </span>
                <h3><a href="{get_permalink($result->ID)}">{$result->post_title}</a></h3>
                {$result->post_content|substr:0:125} [<a href="{get_permalink($result->ID)}">..</a>]
            </div>
        {/foreach}
    </div>

    <div class="col-md-4 sidebar">
        {$faker = dynamic_sidebar('single_right')}
    </div>

{/block}
