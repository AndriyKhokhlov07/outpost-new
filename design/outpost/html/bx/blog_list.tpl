
{if $posts_slider_tag_id}
	{get_posts type=1 var=posts limit=4 tag_id=$posts_slider_tag_id}
{else}
	{get_posts type=1 var=posts limit=4}
{/if}
{if $posts}
<div class="main_width blog_list">
	<p class="h3 center">
		{if $posts_slider_tag_id==27}
			#MemberMonday
		{elseif $posts_slider_title}
			{$posts_slider_title}
		{else}
			Latest Outpost Club Posts
		{/if}
	</p>
	<div class="blog blog_slider">
		{foreach $posts as $post}
		<div class="item">
	    	{if $post->image}
					<a class="img" href="blog{if $post->url}/{/if}{$post->url}">
						<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="{$post->image|resize:blog:380:380}"  alt="{$post->name|escape}">
					</a>
			{/if}
			<div class="preview">
	            <p class="blog_s_title"><a data-post="{$post->id}" href="blog{if $post->url}/{/if}{$post->url}">{$post->name|escape}</a></p>
{*	            <div>{$post->annotation}</div>*}
				<a class="more-arrow" href="blog{if $post->url}/{/if}{$post->url}"></a>
	            {*<p class="date">{$post->date|date_format:"%b %e, %Y"}</p>*}
	        </div>
		</div>
		{/foreach}
	</div>
</div>
{/if}

<ul class="blog fx ch2"></ul>