{* Reviews slider *}

{if $s_reviews}
	<div class="w800 reviews_list">
		<p class="h3 center">{if $reviews_title}{$reviews_title}{else}Members Reviews{/if}</p>
		<div class="reviews reviews_slider">
			{foreach $s_reviews as $s_review}
				<div class="item">
					{if $s_review->image}
						<div class="img">
							{if $is_mobile == 1}
								<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="{$s_review->image|resize:blog:150:150}"  title="Easy move-in. Easy living. Find your next home. (Image-{$s_review->id}), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-{$s_review->id})">
							{else}
								<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="{$s_review->image|resize:blog:300:300}" title="Easy move-in. Easy living. Find your next home. (Image-{$s_review->id}), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-{$s_review->id})">
							{/if}
						</div>
					{/if}
					<div class="preview">
						<p class="rw_title">{$s_review->name}</p>
						<div>{$s_review->text}</div>
					</div>
				</div>
			{/foreach}
		</div>
	</div>
{/if}