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
			<img src="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-0.jpg" title="Shared Apartments for Rent, NYC (Image-1), outpost-club.com" alt="Shared Apartments for Rent, NYC (Image-1)" >
		</div>
		<div class="right_bl fx v vc">
			<div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/brooklyn-bridge.svg" title="Shared Apartments for Rent, NYC (Image-2), outpost-club.com" alt="Shared Apartments for Rent, NYC (Image-2)" ></div>
			<p>Searching for housing in New York is a full-time job. There are so many websites for shared apartments, Facebook Groups and message boards that you have to check constantly to find accommodation, only to have the perfect house vanish before your eyes when someone else books it before you do. </p>
			<img src="/design/{$settings->theme|escape}/images/landing/right-arrow.svg" title="Shared Apartments for Rent, NYC (Image-3), outpost-club.com" alt="Shared Apartments for Rent, NYC (Image-3)" >
		</div>
	</div>
</div>
<div class="main_width">
	<div class="second_block fx w">
		<div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/buildings.svg" title="Shared Apartments for Rent, NYC (Image-4), outpost-club.com" alt="Shared Apartments for Rent, NYC (Image-4)" ></div>
		<div class="text">
			<img src="/design/{$settings->theme|escape}/images/landing/logo.svg" title="Shared Apartments for Rent, NYC (Image-5), outpost-club.com" alt="Shared Apartments for Rent, NYC (Image-5)" >
			<p>At Outpost, we're familiar with how this works, and we're dedicated to making the housing search simpler for students, travelers, digital nomads couples and anyone else looking for a shared space to live in New York. That's why we offer a simple application process (which you can start  <a href="online-questionnaire/?utm_source=landing-page&utm_medium=shared-apartments" class="green" target="_blank" rel="nofollow noopener noreferer"> here</a>!) and, of course, some of the most stylish, comfortable and homey flats you could hope to find.</p>
		</div>
	</div>
</div>
<div class="w100">
	<div class="main_width">
		<h4 class="h1 center">We’ve thought of everything you need to hit the ground running in your new apartment</h4>
	</div>
	<div class="fx gall w">
	<a class="img" href="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-1.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-1.jpg" title="Shared Apartments for Rent, NYC (Image-6), outpost-club.com" alt="Shared Apartments for Rent, NYC (Image-6)" ></a>
	<a class="img" href="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-2.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-2.jpg" title="Shared Apartments for Rent, NYC (Image-7), outpost-club.com" alt="Shared Apartments for Rent, NYC (Image-7)" ></a>
	<a class="img" href="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-3.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-3.jpg" title="Shared Apartments for Rent, NYC (Image-8), outpost-club.com" alt="Shared Apartments for Rent, NYC (Image-8)" ></a>
	<a class="img" href="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-4.jpg" title="Shared Apartments for Rent, NYC (Image-9), outpost-club.com" alt="Shared Apartments for Rent, NYC (Image-9)" ></a>
	</div>
</div>
<div class="main_width">
	<div class="advantages">
		<h4 class="h1 center">We have single rooms starting at $1180 and shared rooms starting at $790</h4>
		<h5 class="h5">What's included in the price of your spot at Outpost Club:</h5>
		{*<div class="fx c w">
			<div class="item">
                <img src="/design/{$settings->theme|escape}/images/landing/living-room.svg" alt="Fully furnished">
                <p class="title">Fully furnished</p>
                <p class="text">Recently remodeled houses</p>
            </div>
			<div class="item">
				<img src="/design/{$settings->theme|escape}/images/landing/shield_.svg" alt="Security">
				<p class="title">Security</p>
				<p class="text">Our Nest systems will allow you to always feel safe at home</p>
			</div>
			<div class="item">
				<img src="/design/{$settings->theme|escape}/images/landing/brush.svg" alt="Cleaning and maintenance">
				<p class="title">Cleaning and maintenance</p>
				<p class="text">We help you keep common spaces nice and tidy for everyone who shares them</p>
			</div>
			
		</div>*}
		{include file='bx/adv_block.tpl'} 
		<div class="center">
			<a href="online-questionnaire/?utm_source=landing-page&utm_medium=shared-apartments" class="button2 red">Apply now</a>
		</div>
	</div>
</div>

<div class="w100 land_map">
	{* <div>
		<iframe src="https://www.google.com/maps/d/embed?mid=1auTDUCQMxu4x5uNSz2_xs-aIb8m5zCB1&hl=en_US" style="width: 100%; height: 480px;"></iframe>
	</div>*}
	<div class="main_width white_bl_">
		<p class="h1">Our Locations</p>
		<p class="text">Our shared apartments are located in neighborhoods throughout Manhattan, Brooklyn and Queens, offering quick and easy access to transportation, food and the best hangouts. Just book a room with us, drop your luggage off in your room and head out to start the next chapter in your life in New York.</p>
		<h3>Sounds better than spending hours trying to find a room in some random guesthouse, right?</h3>
	</div>
</div>

<div class="main_width steps txt">
    <h4 class="h1 center">Apply to Outpost Today</h4>
    <div class="fx ch3">
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/checklist.svg" title="Shared Apartments for Rent, NYC (Image-10), outpost-club.com" alt="Shared Apartments for Rent, NYC (Image-10)" >
            <p class="title">Step 1 <br>Fill out a short form</p>
            <p class="text">Fill out this form and a member of our team will contact you about pricing and availability.</p>

        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/smartphone.svg" title="Shared Apartments for Rent, NYC (Image-11), outpost-club.com" alt="Shared Apartments for Rent, NYC (Image-11)" >
            <p class="title">Step 2 <br> Get an offer within a day</p>
            <p class="text">Our team will give you a few different options based on your budget and our availability. </p>
        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/contract.svg" title="Shared Apartments for Rent, NYC (Image-12), outpost-club.com" alt="Shared Apartments for Rent, NYC (Image-12)" >
            <p class="title">Step 3 <br> Accept our offer and move in</p>
            <p class="text">You’re all set!</p>
        </div>
    </div>
    <p class="center">The easiest way to get an affordable room near your desired neighborhood is as simple as filling out our short application and hearing back from us within about a day. Hope to welcome you into our community soon!</p>
    <div class="center">
		<a href="online-questionnaire/?utm_source=landing-page&utm_medium=shared-apartments" class="button2 red">Apply now</a>
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
	<img src="/design/{$settings->theme|escape}/images/landing/brook.jpg" title="Shared Apartments for Rent, NYC (Image-13), outpost-club.com" alt="Shared Apartments for Rent, NYC (Image-13)" >
	</a>
</div>

<div class="center main_width">
	<a href="/new-york" class="button2">Explore our houses</a>
	<div class="hr m0"></div>
</div>

{get_posts type=2 var=s_reviews limit=16}
{include file='bx/reviews_slider.tpl'}

{$posts_slider_tag_id=27}
{include file='bx/blog_list.tpl'}








</div>
