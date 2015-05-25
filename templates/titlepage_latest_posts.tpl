<div class="panel panel-info">
    <div class="panel-heading">
        Blog
    </div>

    <div class="panel-body">
        {foreach $posts as $post}
            <span class="label label-info">
                {$post->post_date|date_format:'%d. %m. %Y.'}
            </span>
            <h4>
                <a href="{get_permalink($post->ID)}">{$post->post_title}</a>
            </h4>
            <a href="{get_permalink($post->ID)}">{get_the_post_thumbnail($post->ID)}</a>
            <p >
                {if $post->post_excerpt}
                    {$post->post_excerpt}
                {else}
                    {if strlen($post->post_content) gt 250}
                        {$post->post_content|substr:0:250} [<a href="{get_permalink($post->ID)}">..</a>]
                    {else}
                        {$post->post_content}
                    {/if}
                {/if}
            </p>
        {/foreach}
    </div>
</div>
