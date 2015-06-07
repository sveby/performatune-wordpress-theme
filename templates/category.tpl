{extends "single.tpl"}


{block name="content_area"}
    <div class="col-md-8 main-content">

        {foreach $posts as $post}
            <div class="archive-post">
            <span class="label label-info">
                {$post.date|date_format:'%d. %m. %Y.'}
            </span>
            <h4>
                <a href="{get_permalink($post.id)}">{$post.postTitle}</a>
            </h4>
            <a href="{get_permalink($post.id)}">{$post.thumbnail}</a>
            <p >
                {if $post.postExcerpt}
                    {$post.postExcerpt}
                {else}
                    {if strlen($post.content) gt 250}
                        {$post.content|substr:0:250} [<a href="{get_permalink($post.id)}">..</a>]
                    {else}
                        {$post.content}
                    {/if}
                {/if}
            </p>
                <div class="clear"></div>
            </div>

        {/foreach}

    </div>


    <div class="col-md-4 sidebar">
        {$faker = dynamic_sidebar('single_right')}
    </div>

{/block}