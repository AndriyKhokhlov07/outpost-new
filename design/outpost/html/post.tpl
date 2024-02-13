{* Страница отдельной записи блога *}

{* Канонический адрес страницы *}
{$canonical="/blog/{$post->url}" scope=parent}

{$this_page='page' scope=parent}
{$page_type='post' scope=parent}

{* Google Schema Home Page *}
{literal}
<script type="application/ld+json"> {
"@context":"http://schema.org",
"@type":"NewsArticle",
"mainEntityOfPage": {
	"@type":"WebPage",
	"@id":"{/literal}{$config->root_url}/blog/{$post->url}{literal}"
},
"headline":"{/literal}{$post->name|escape}{literal}",
"image":[
{/literal}
{if $post->image}
	"{$post->image|resize:blog:1000:600}",
	"{$post->image|resize:blog:800:800}",
	"{$post->image|resize:blog:600:1000}"
{else}
	"{$config->root_url}/files/uploads/about-outpost.1x1.jpg"
{/if}
{literal}
],
"datepublished":"{/literal}{$post->date|date_format:"%Y-%m-%d"}{literal}",
"dateModified":"{/literal}{$post->date|date_format:"%Y-%m-%d"}{literal}",
"author": {
    "@type": "Person",
    "name":
    {/literal}
    {if $post->author}
        "{$post->author->name|escape}"
    {else}
        "{$settings->site_name|escape}"
    {/if}
    {literal}
},
"publisher": {
"@type":"Organization",
"name": "Outpost Club",
"logo": {
"@type":"ImageObject",
"url":"{/literal}{$config->root_url}{literal}/files/uploads/logo_b.svg"
}
},
"description":"{/literal}{$post->annotation|strip_tags}{literal}"
}
</script>
{/literal}
{* Google Schema Home Page End *}


<div class="main_width post">

	{$breadcrumb_n=0}	
	<div class="path" itemscope itemtype="https://schema.org/BreadcrumbList">
		{$breadcrumb_n=$breadcrumb_n+1}
		<div itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
		   <a href="{$config->root_url}/" itemprop="item"><span itemprop="name">{$settings->site_name|escape}</span></a>
		   <meta itemprop="position" content="{$breadcrumb_n}">
	    </div>
	    {if $post->type==2}
	    {$breadcrumb_n=$breadcrumb_n+1}
			<div itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
			   <a href="/reviews" itemprop="item"><span itemprop="name">Reviews</span></a>
			   <meta itemprop="position" content="{$breadcrumb_n}">
			</div>
	    {else}
	    	<div itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
			   <a href="/blog" itemprop="item"><span itemprop="name">Blog</span></a>
			   <meta itemprop="position" content="{$breadcrumb_n}">
			</div>
	    {/if}
		{$breadcrumb_n=$breadcrumb_n+1}
		<div itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
			<a href="{$config->root_url}/blog{if $post->url}/{/if}{$post->url}" itemprop="item">
				<span itemprop="name">{$post->name}</span>
				<meta itemprop="position" content="{$breadcrumb_n}">
			</a>
		</div> 
	</div>

	<div class="post">
		{*
		<!-- Заголовок /-->
		<h1 class="hide" data-post="{$post->id}">{$post->name|escape}</h1>
		*}



		<div class="text_block">
		
		<div class="hide">
			<img src="{$post->image|resize:blog:1000:600}" alt="Image: {$post->name|escape}">
		</div>
		{*
		<div class="center">
			{if $post->authors}
	            <div class="post_authors">
	                {foreach $post->authors as $post_author}
	                    <a class="author" href="author/{$post_author->url}" itemprop="author" itemscope itemtype="https://schema.org/Person">
	                    	{if $post_author->image}
								<img src="{$post_author->image|resize:author:35:35}" alt="{$post_author->name|escape}">
							{else}
								<i class="icon-user"></i>
							{/if}
	                        <span itemprop="name">{$post_author->name|escape}</span>
	                    </a>
	                {/foreach}
	            </div>
	        {else}
	            <div itemprop="author" itemscope itemtype="https://schema.org/Person">
	                <meta itemprop="name" content="{$settings->site_name|escape}">
	            </div>
	        {/if}
	        <p class="date">{$post->date|date}</p>
		</div>
		*}
		
		{$post->text}
		{if $post->tags}
		<p class="center tags">
			Tagged:
    		{foreach $post->tags as $tag}
		    	<a href="blog_category/{$tag->url}">{$tag->name|escape}</a>
    		{/foreach}
    	</p>
    	{/if}
		</div>



	    {include file='bx/house_list_article.tpl'}



	<hr class="hr">

	<div class="main_width">
	    <div class="fx c w ch3 areas_list">
	        <a class="item" target="_blank" href="blog/refer-your-friends-to-outpost-and-youll-both-get-250/?utm_source=blog">
	            <div><p class="title">Outpost Referral Program</p>
	            <p class="p">Refer Your Friends to Outpost and You'll Both Get $250</p></div>
	        </a>
	        <a class="item" target="_blank" href="hot-deals/?utm_source=referral&utm_medium=button&utm_campaign=blog">
	        	<div>
	        		<p class="title">Hot Deals</p>
	            	<p class="p">Hot Deals be Sure to Grab the Best Price!</p>
	        	</div>
	        </a>
	    </div>
	</div>


		{$share_url = "`$config->root_url|urlencode`/`$category->url|urlencode`"}
		{if $post->image}
		    {$share_img = $post->image|resize:blog:150:150|urlencode}
		{/if}
		{$share_title = $post->name|urlencode}
		{$share_description = $meta_description|urlencode}


	</div>



	<!-- Соседние записи /-->
	<div id="back_forward">
		<div class="next_prev_block prev">
			{if $prev_post}
	        	<div class="wrapper t_block">
	            	<div class="i">
	                	<a href="{if $prev_post->url2}{$prev_post->url2}{else}blog{if $prev_post->url}/{/if}{$prev_post->url}{/if}"><i class="fa fa-angle-left"></i></a>
	                </div>
	                <div>
	                	<div class="info">Prev post</div>
	                	<h6><a class="prev_page_link" href="{if $prev_post->url2}{$prev_post->url2}{else}blog{if $prev_post->url}/{/if}{$prev_post->url}{/if}">{$prev_post->name}</a></h6>
	            		<p>
	                    {if $prev_post->annotation|strip_tags|trim|mb_strlen > 120}
							{$prev_post->annotation|strip_tags|trim|mb_substr:0:120}...
						{else}
							{$prev_post->annotation|strip_tags|trim}
						{/if}
	                    </p>
	                </div>
	            </div>
			{/if}
		</div>
	    <div class="next_prev_block next">
			{if $next_post}
	        	<div class="wrapper t_block">
	                <div>
	                	<div class="info">Next post</div>
	                	<h6><a class="next_page_link" href="{if $next_post->url2}{$next_post->url2}{else}blog{if $next_post->url}/{/if}{$next_post->url}{/if}">{$next_post->name}</a></h6>
	            		<p>
	                    {if $next_post->annotation|strip_tags|trim|mb_strlen > 120}
							{$next_post->annotation|strip_tags|trim|mb_substr:0:120}...
						{else}
							{$next_post->annotation|strip_tags|trim}
						{/if}
	                    
	                    </p>
	                </div>
	                <div class="i">
	                	<a href="{if $next_post->url2}{$next_post->url2}{else}blog{if $next_post->url}/{/if}{$next_post->url}{/if}"><i class="fa fa-angle-right"></i></a>
	                </div>
	            </div>
			{/if}
		</div>
	</div>
</div>
