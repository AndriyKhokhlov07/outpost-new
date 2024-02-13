{* Список записей блога *}

{* Канонический адрес страницы *}

{if !$tag && !$author}
	{$canonical="/reviews" scope=parent}
{elseif $tag}
	{$canonical="/blog_category/"|cat:$tag->url scope=parent}
{elseif $author}
	{$canonical="/author/"|cat:$author->url scope=parent}
{/if}

{$this_page='page' scope=parent}

{$page_type='reviews' scope=parent}

{if $current_page_num>1}
	{$noindex_follow=true scope=parent}
{/if}

<div class="w1200 blog_page {if $author || $tag || $current_page_num!=1}page_wrap{/if}">
<div class="txt">
	{$page->body}
</div>


{$breadcrumb_n=0}	
<div class="path" itemscope itemtype="https://schema.org/BreadcrumbList">
	{$breadcrumb_n=$breadcrumb_n+1}
	<div itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
	   <a href="{$config->root_url}/" itemprop="item"><span itemprop="name">Home</span></a>
	   <meta itemprop="position" content="{$breadcrumb_n}">
    </div>

    {if $page->parent}
	    {$breadcrumb_n=$breadcrumb_n+1}
	    <div itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
		   <a href="{$page->parent->url}" itemprop="item"><span itemprop="name">{$page->parent->name}</span></a>
		   <meta itemprop="position" content="{$breadcrumb_n}">
	    </div>
    {/if}
    {if $author || $tag}
	    {$breadcrumb_n=$breadcrumb_n+1}
		<div itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
		   <a href="/blog" itemprop="item"><span itemprop="name">Blog</span></a>
		   <meta itemprop="position" content="{$breadcrumb_n}">
	    </div>
    {/if}
    {if $author}
    	{$breadcrumb_n=$breadcrumb_n+1}
		<div itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
			<a href="{$config->root_url}/author/{$author->url}" itemprop="item">
				<span itemprop="name">{$author->name}</span>
			</a>
			<meta itemprop="position" content="{$breadcrumb_n}">
		</div>
	{elseif $tag}
		{$breadcrumb_n=$breadcrumb_n+1}
		<div itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
			<a href="{$config->root_url}/blog_category/{$tag->url}" itemprop="item">
				<span itemprop="name">{$tag->name}</span>
			</a>
			<meta itemprop="position" content="{$breadcrumb_n}">
		</div>
	{else}
		{$breadcrumb_n=$breadcrumb_n+1}
		<div itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
			<a href="{$config->root_url}/{$page->url}" itemprop="item">
				<span itemprop="name">{$page->name}</span>
			</a>
			<meta itemprop="position" content="{$breadcrumb_n}">
		</div> 
    {/if}                  
</div>



<div class="fx">
	<div class="blog_ch2">
	    <ul class="blog fx ch2">
	        {foreach $posts as $post}
	        <li itemprop="review" itemscope itemtype="http://schema.org/Review">
				<span class="hide" itemprop="reviewRating" itemscope itemtype="http://schema.org/Rating">
					<meta itemprop="worstRating" content="0">
					<meta itemprop="bestRating" content="5">
					<meta itemprop="ratingValue" content="5">
				</span>
				{* <meta itemprop="itemReviewed" content="Outpost Club{if $post->house} Comp | {$post->house->name|escape}{/if}">*}

				<div class="hide" itemprop="itemReviewed" itemscope itemtype="https://schema.org/Organization">
					<meta itemprop="name" content="Outpost Club">
					<meta itemprop="telephone" content="+1 (833) 707 6611">
					<meta itemprop="url" content="https://outpost-club.com">
					<meta itemprop="email" content="info@outpost-club.com">
					<meta itemprop="image" content="https://outpost-club.com/files/uploads/about-outpost.1x1.jpg">
					<p itemprop="address" itemscope itemtype="https://schema.org/PostalAddress">
						<meta itemprop="addressLocality" content="New York">
						<meta itemprop="streetAddress" content="PO BOX 780556">
					</p>
				</div>

	        	<div class="preview">
	                <h4>{$post->name}</h4>
	                
	                <div class="post_authors">
						{if $post->author}
							<div class="author" itemprop="author" itemscope itemtype="http://schema.org/Person">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <span itemprop="name">{$post->author|escape}</span>
							</div>
						{/if}
	                {foreach $post->authors_ids as $author_id}
						{if $posts_authors[$author_id]}
							{$p_author = $posts_authors[$author_id]}
							<a class="author" href="author/{$p_author->url}">
								{if $p_author->image}
									<img src="{$p_author->image|resize:author:35:35}" title="Outpost Coliving Blog (Image-1), outpost-club.com" alt="Outpost Coliving Blog  (Image-1)" ">
								{else}
								{/if}
								<span>by {$p_author->name|escape}</span>
							</a>
						{/if}
					{/foreach}
					</div>
	                <p class="date" itemprop="datePublished">{$post->date|date_format:"%b %e, %Y"}</p>
	                
				</div>
				
	            {if $post->image}
					<div class="img" href="blog{if $post->url}/{/if}{$post->url}">
						<img src="{$post->image|resize:blog:700:700}" alt="{$post->name|strip_tags}  (Image)">
					</div>
	            {/if}
	            <div class="preview">
	            	{if $post->tags_ids}
				    		{foreach $post->tags_ids as $tag_id}
				    			{if $posts_tags[$tag_id]->featured == 1}
				    			<p class="post_tags">
					    			{if $tag->id == $tag_id}
					    				<span>{$tag->name|escape}</span>
					    			{else}
					    				<a href="blog_category/{$posts_tags[$tag_id]->url}">{$posts_tags[$tag_id]->name|escape}</a>
					    			{/if}
				    			</p>
				    			{/if}
				    		{/foreach}
				    {/if}
	                <div itemprop="reviewBody">{$post->text}</div>
	            </div>
	        </li>
	        {/foreach}
	    </ul>
	    {$pagination_main_link_part=$page->url}
	    {include file='pagination_blog.tpl'} 
	</div>
	<div class="blog_sb">

	{include file='bx/house_list.tpl'} 


		{get_posts featured=1 var=f_posts limit=5}
		{if $f_posts}
		<p class="h5">Featured</p>
		<ul class="featured_blog">
			{foreach $f_posts as $post}
			<li class="fx">
				<div>
					<a class="img" href="blog{if $post->url}/{/if}{$post->url}">
	                    <img src="{$post->image|resize:blog:100:100}" title="Outpost Coliving Blog (Image-3), outpost-club.com" alt="Outpost Coliving Blog  (Image-3)" ">
	                </a>
				</div>
				<div>
					<h5 class="h5"><a data-post="{$post->id}" href="blog{if $post->url}/{/if}{$post->url}">{$post->name|escape}</a></h5>
	                <p class="date">{$post->date|date_format:"%b %e, %Y"}</p>
				</div>
				
			</li>
			{/foreach}
		</ul>

		<hr class="hr">
		{/if}
		<a href="hot-deals/?utm_source=referral&utm_medium=banner&utm_campaign=blog" target="_blank" rel="nofollow noopener noreferer" class="promo_block">
			<h6 class="h2">Hot Deals</h6>
			<h6 class="h5">Be Sure To Grab The Best Price!</h6>
		</a>
		<hr class="hr">

		<div class="follow">
			<p class="h5">Follow us</p>
			<div class="socials fx">
                <a href="https://www.instagram.com/outpostcoliving/?utm_source=outpost" data-tooltip="Instagram" target="_blank" rel="nofollow noopener noreferer">
                    <img src="/design/{$settings->theme|escape}/images/icons/instagram.svg" title="Outpost Coliving Blog (Image-4), outpost-club.com" alt="Outpost Coliving Blog (Image-4)" >
                </a>
                {*
                <a href="https://twitter.com/outpost_club" data-tooltip="Twitter" target="_blank" rel="nofollow">
                    <img src="/design/{$settings->theme|escape}/images/icons/twitter.svg" alt="Outpost twitter">
                </a>
                <a href="https://www.linkedin.com/company-beta/17932725/" data-tooltip="Linkedin" target="_blank" rel="nofollow">
                    <img src="/design/{$settings->theme|escape}/images/icons/linkedin.svg" alt="Outpost linkedin">
                </a>
                *}
                <a href="http://www.facebook.com/outpostclubNY/" data-tooltip="Facebook" target="_blank" rel="nofollow noopener noreferer">
                    <img src="/design/{$settings->theme|escape}/images/icons/facebook.svg" title="Outpost Coliving Blog (Image-5), outpost-club.com" alt="Outpost Coliving Blog (Image-5)" >
                </a>
            </div>

		</div>
		
	</div>
</div>
</div>
