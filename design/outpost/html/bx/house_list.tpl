

<p class="h5">Our Houses</p>
    
    	{get_pages parent_id=253 var=pages_ny limit=8}
    <ul class="featured_blog">
        {foreach $pages_ny as $p}
                <li class="fx">
                <div>
                    <a class="img" href="{$p->url}">
                        {* {if $p->new==1}
                        <div class="new">New</div>
                        {/if} *}
                        {if $is_mobile == 1}
                        <img class="lazy" data-src="{$p->image|resize:'pages':400:400}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Easy move-in. Easy living. Find your next home. (Image-1), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-1)" >
                        {else}
                        <img class="lazy" data-src="{$p->image|resize:'pages':700:700}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Easy move-in. Easy living. Find your next home. (Image-2), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-2)" >
                        {/if}

                    </a>
                </div>
                    {* <a class="h2" href="{$p->url}">{$p->name|escape}</a> *}
                    <div class="annotation">
                    <a href="{$p->url}"> {$p->annotation} </a>
                    </div>
                    
                </li>
        {/foreach}
      
    </ul>
  

{* 
{get_posts featured=1 var=f_posts limit=5}
		{if $f_posts}
<p class="h5">Featured</p>
		<ul class="featured_blog">
			{foreach $f_posts as $post}
			<li class="fx">
				<div>
					<a class="img" href="blog/{$post->url}">
	                    <img src="{$post->image|resize:blog:100:100}" title="Outpost Coliving Blog (Image-3), outpost-club.com" alt="Outpost Coliving Blog  (Image-3)" >
	                </a>
				</div>
				<div>
					<h5 class="h5"><a data-post="{$post->id}" href="blog/{$post->url}">{$post->name|escape}</a></h5>
	                <p class="date">{$post->date|date_format:"%b %e, %Y"}</p>
				</div>
				
			</li>
			{/foreach}
		</ul> *}