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
        <div class="row comments">
            <h3>Comments</h3>
            {if count($comments) lt 1}
                <div class="row comment">
                    <div class="col-md-12 comment-content">
                        There are no comments yet. Why not start the discussion?
                    </div>
                </div>
            {else}
                {foreach $comments as $c}
                    <div class="row comment">
                        {if $c->comment_approved eq '1'}
                            <div class="col-md-3 comment-author">
                                {$c->comment_author}<br>
                                <span class="time">{$c->comment_date}</span>
                            </div>
                            <div class="col-md-9 comment-content">
                                {$c->comment_content}
                            </div>
                        {else}
                            <div class="col-md-12 comment-content">
                                One comment is awaiting moderation.
                            </div>
                        {/if}
                    </div>
                {/foreach}
            {/if}
        </div>
        <div class="row">
            {comment_form()}
        </div>
    </div>
    <div class="col-md-4 sidebar">
        {$faker = dynamic_sidebar('single_right')}
    </div>
{/block}

