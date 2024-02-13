{* Reviews *}

{if $s_reviews}
	<div class="reviews_block cont_mt150">
		{*<p class="h3 center">{if $reviews_title}{$reviews_title}{else}Members Reviews{/if}</p>*}
		<div class="reviews reviews_bx fx sb c w">
			{foreach $s_reviews as $s_review}
				<div class="item n{$s_review@iteration}">
					<div class="arr"></div>
					<div class="wrapper fx v jc_c">
						<div class="inblock fx w sb">
							{if $s_review->image}
								<img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="{$s_review->image|resize:blog:300:300}" title="Easy move-in. Easy living. Find your next home. (Image-{$s_review->id}), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-{$s_review->id})">
							{/if}
							<p class="title">{$s_review->name}</p>
							<div class="desc">{$s_review->text}</div>
						</div>
					</div>
				</div>
			{/foreach}
		</div>
		<div class="reviews_title_bx content_width">
			<p class="title1">What<br> people</p>
		</div>
		<div class="content_width_left ch2 fx w sb">
			<div class="column_size_1">
				<p class="title2">Are saying:</p>
			</div>
			<div class="column_size_1 fx rev">
				<a class="main_button moreless-button arrow" href="/reviews" data-text="More"></a>
			</div>
		</div>
	</div>
{/if}