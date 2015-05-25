{extends "index.tpl"}

{block name="content_area"}
    <div class="col-md-8 main-content search-results">
        {foreach $results as $result}
            <div class="search-result">
                <h3>{$result->post_title}</h3>
                {$result->post_content}
            </div>
        {/foreach}
    </div>

    <div class="col-md-4 sidebar">
        {$faker = dynamic_sidebar('single_right')}
    </div>

{/block}
