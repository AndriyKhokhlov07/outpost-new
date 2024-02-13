

{get_pages parent_id=253 var=pages_ny}
<div class="main_width blog_list">
	<h4 class="h3 center">Check Out our Houses in New York</h4>
	<div class="blog blog_slider">
    {foreach $pages_ny as $p}
		<div class="item">
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
			<div class="preview">
            <a class= "h5" style="font-size: 22px !important;" href="{$p->url}">{$p->name|escape}</a>
            <a href="{$p->url}">     {$p->annotation}</a>
	            {* <a class="more" href="blog/{$post->url}">Read More →</a> *}
	            {*<p class="date">{$post->date|date_format:"%b %e, %Y"}</p>*}
	        </div>
		</div>
		{/foreach}
	</div>
</div> 






