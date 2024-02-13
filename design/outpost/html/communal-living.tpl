<div class="land">
	<div class="w1200 txt">
	<div class="main_width left ">
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
        
      
       
            {$breadcrumb_n=$breadcrumb_n+1}
            <div itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                <a href="{$config->root_url}/{$page->url}" itemprop="item">
                    <span itemprop="name">{$page->name}</span>
                </a>
                <meta itemprop="position" content="{$breadcrumb_n}">
            </div> 
                       
    </div>
	<div class="first_block">
		<div class="img">
			<img src="/design/{$settings->theme|escape}/images/landing/communal-liv/communal-living-30.jpg" title="Communal Living Spaces in NYC (Image-1), outpost-club.com" alt="Communal Living Spaces in NYC (Image-1)" >
		</div>
		<div class="right_bl fx v vc">
			<div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/communal-living.svg" alt="communal living"></div>
			<p>Dozens of people move into New York City every day, shuffling from the airport, to a car, to their newly leased apartment in Brooklyn, Queens or Manhattan, just hoping they made the right choice of roommate or neighborhood. But what would change if they all knew about communal living spaces?</p>
			<img src="/design/{$settings->theme|escape}/images/landing/right-arrow.svg" title="Communal Living Spaces in NYC (Image-2), outpost-club.com" alt="Communal Living Spaces in NYC (Image-2)" >
		</div>
	</div>
</div>
<div class="main_width">
	<div class="second_block fx w">
		<div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/buildings.svg" title="Communal Living Spaces in NYC (Image-3), outpost-club.com" alt="Communal Living Spaces in NYC (Image-3)" ></div>
		<div class="text">
			<img src="/design/{$settings->theme|escape}/images/landing/logo.svg" title="Communal Living Spaces in NYC (Image-4), outpost-club.com" alt="Communal Living Spaces in NYC (Image-4)" >
			<p>Outpost Club provides the best communal living opportunities for people new to New York.</p> 
			<p>If you choose to live with Outpost Club, you'll be living in stylish, recently renovated communal living spaces in Manhattan, Brooklyn and Queens, and you'll have access to the most comfortable common living spaces. Our common spaces differ by location, but examples include game rooms, community lounges, fitness areas and furnished backyards.</p>
		</div>
	</div>
</div>

<div class="w100">
	<div class="main_width">
		<h4 class="h1 center">We’ve thought of everything you need to hit the ground running in your new apartment</h4>
	</div>
	<div class="fx gall w">
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-4.jpg" title="Communal Living Spaces in NYC (Image-5), outpost-club.com" alt="Communal Living Spaces in NYC (Image-5)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-3.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-3.jpg" title="Communal Living Spaces in NYC (Image-6), outpost-club.com" alt="Communal Living Spaces in NYC (Image-6)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-1.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-1.jpg" title="Communal Living Spaces in NYC (Image-7), outpost-club.com" alt="Communal Living Spaces in NYC (Image-7)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-2.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-2.jpg" title="Communal Living Spaces in NYC (Image-8), outpost-club.com" alt="Communal Living Spaces in NYC (Image-8)" ></a>
	</div>
</div>
<div class="main_width">
	<div class="advantages">
		<h4 class="h1 center">We have single rooms starting at $1180</h4>
		<h5 class="h5">What's included in the price of your spot at Outpost Club:</h5>
		{include file='bx/adv_block.tpl'}
		<div class="center">
			<a href="online-questionnaire/?utm_source=landing-page&utm_medium=communal-living" class="button2 red">Apply now</a>
		</div>
	</div>
</div>

<div class="main_width">
	<h4 class="h1 center">You'll never find yourself wishing you had someone to go with to that gallery opening or comedy show when you’re at Outpost.wondering what to do next.</h4>
</div>
<div class="w100 commun commun_liv">
	<div class="land_slider ">
		<div class="img">
			<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="/design/{$settings->theme|escape}/images/landing/communal-liv/communal-living-22.jpg" title="Communal Living Spaces in NYC (Image-9), outpost-club.com" alt="Communal Living Spaces in NYC (Image-9)" >
		</div>
		<div class="img">
			<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="/design/{$settings->theme|escape}/images/landing/communal-liv/communal-living-21.jpg" title="Communal Living Spaces in NYC (Image-10), outpost-club.com" alt="Communal Living Spaces in NYC (Image-10)" >
		</div>
		
		<div class="img">
			<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="/design/{$settings->theme|escape}/images/landing/communal-liv/communal-living-23.jpg" title="Communal Living Spaces in NYC (Image-11), outpost-club.com" alt="Communal Living Spaces in NYC (Image-11)" >
		</div>
		<div class="img">
			<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="/design/{$settings->theme|escape}/images/landing/communal-liv/communal-living-24.jpg" title="Communal Living Spaces in NYC (Image-12), outpost-club.com" alt="Communal Living Spaces in NYC (Image-12)" >
		</div>
		<div class="img">
			<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="/design/{$settings->theme|escape}/images/landing/communal-liv/communal-living-25.jpg" title="Communal Living Spaces in NYC (Image-13), outpost-club.com" alt="Communal Living Spaces in NYC (Image-13)" >
		</div>
		<div class="img">
			<img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="/design/{$settings->theme|escape}/images/landing/communal-liv/communal-living-26.jpg" title="Communal Living Spaces in NYC (Image-14), outpost-club.com" alt="Communal Living Spaces in NYC (Image-14)" >
		</div>
	</div>
	
</div>

<div class="main_width steps txt">
    <h4 class="h1 center">How to Reserve Your Spot</h4>
    <div class="fx ch3">
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/checklist.svg" title="Communal Living Spaces in NYC (Image-15), outpost-club.com" alt="Communal Living Spaces in NYC (Image-15)" >
            <p class="title">Step 1 <br>Fill out a short form</p>
            <p class="text">Fill out this form and a member of our team will contact you about pricing and availability.</p>

        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/smartphone.svg" title="Communal Living Spaces in NYC (Image-16), outpost-club.com" alt="Communal Living Spaces in NYC (Image-16)" >
            <p class="title">Step 2 <br> Get an offer within a day</p>
            <p class="text">Our team will give you a few different options based on your budget and our availability. </p>
        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/contract.svg" title="Communal Living Spaces in NYC (Image-17), outpost-club.com" alt="Communal Living Spaces in NYC (Image-17)" >
            <p class="title">Step 3 <br> Accept our offer and move in</p>
            <p class="text">You’re all set!</p>
        </div>
    </div>
    <p class="center">We’re excited to welcome you to one of our affordable apartments in New York City.</p>
    <div class="center">
		<a href="online-questionnaire/?utm_source=landing-page&utm_medium=communal-living" class="button2 red">Apply now</a>
	</div>
</div>  

<div class="main_width partners_sb">
    <div class="second_block fx w">
        <div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/TG-Mark-Color.png" title="TheGuarantors Logo" alt="TheGuarantors Logo"></div>
        <div class="text">
            <h4 class="h1">TheGuarantors</h4>
            <p>Don't quite meet application requirements? Meet Lease Guarantee. We've partnered&nbsp;with <strong>TheGuarantors</strong> to make it easier for you to qualify for&nbsp;your dream home. To get started, simply fill out a <a href="https://bit.ly/3Av1ivf" class="green" target="_blank" rel="nofollow noopener noreferer">renter&nbsp;application</a>. Once you're approved, TheGuarantors will let us know and you'll be ready to sign your lease. Simple as that. Click <a href="https://bit.ly/3A8mCpe" class="green" target="_blank" rel="nofollow noopener noreferer">here</a> for more detail.</p>
        </div>
    </div>
</div>

<div class="w100 img brook">
	<a href="/about" target="_blank" rel="nofollow noopener noreferer">
	<h4 class="title">More about Outpost Club</h4>
	<img src="/design/{$settings->theme|escape}/images/landing/brook.jpg" title="Communal Living Spaces in NYC (Image-18), outpost-club.com" alt="Communal Living Spaces in NYC (Image-18)" >
	</a>
</div>

<div class="center main_width">
	<a href="new-york" class="button2 red">Explore our houses in New York</a>
	<div class="hr m0"></div>
</div>

{get_posts type=2 var=s_reviews limit=16}
{include file='bx/reviews_slider.tpl'}

{$posts_slider_tag_id=27}
{include file='bx/blog_list.tpl'}








</div>
