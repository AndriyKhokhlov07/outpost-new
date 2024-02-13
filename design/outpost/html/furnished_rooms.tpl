<div class="land furnished_r">
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
			<img src="/design/{$settings->theme|escape}/images/landing/furnished/furnished-rooms-for-rent.jpg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-1), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-1)" >
		</div>
		<div class="right_bl fx v vc">
			<p>There’s a lot to do once you decide to move to New York City, and the most stressful part can be finding a place to live that fits your budget and consists of more than just a mattress on the floor.</p>
			<p><strong>Outpost Club has solved that problem by offering furnished rooms for rent in Brooklyn, Manhattan and Queens.</strong></p>
			<p>We take care of everything you’ll need to make your new home in the city, so all you have to do is move in, whether you’re staying with us for a month or for years.</p>
			<p><strong>Moving in really is as easy as ordering a cup of coffee.</strong></p>
			{*<img src="/design/{$settings->theme|escape}/images/landing/right-arrow.svg" alt="furnished rooms for rent in Brooklyn">*}
		</div>
	</div>
</div>

<div class="w100">
	<div class="main_width txt center">
		<h4 class="h1 center">We have fully furnished apartments throughout New York City</h4>
		<p>We have houses in Hell’s Kitchen, Upper Manhattan, Harlem and Spanish Harlem in Manhattan; Williamsburg, Bushwick, Greenpoint, Fort Greene, Bed-Stuy, Flatbush, Crown Heights, Kensington and Boerum Hill in Brooklyn; and Ridgewood in Queens. No matter where you work or play, you’ll be able to find an apartment that suits your needs.</p> 
		<p>You might be thinking, “I work in Midtown. Do you have an apartment near me?” Thanks to our houses’ convenient locations close to a variety of subway lines, you’ll never have to worry about an outrageous commute.</p> 
		<p>We take care to choose vibrant neighborhoods with distinct personalities, with access to subways, parks, cafés, restaurants and everything else you’ll need to make New York your home.</p>
		<a href="new-york" target="_blank" rel="nofollow noopener noreferer" class="button2 red">Explore our houses</a>
	</div>
	<div class="fx gall w">
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-4.jpg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-2), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-2)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-2.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-2.jpg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-3), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-3)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-3.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-3.jpg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-4), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-4)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-5.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-5.jpg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-5), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-5)" ></a>
	</div>
</div>
<div class="main_width">
	<div class="advantages txt center">
		<h4 class="h1 ">There’s no need to sacrifice quality for a cheap apartment</h4>
		<p>When we say recently renovated, we mean it: We brought in interior designers to design living spaces that will feel like home no matter your lifestyle, and we take care to make sure our houses are properly maintained at all times. We take care of your house so you don’t have to.</p>
		<p>In addition to traditional apartment furnishings, we include kitchen and bathroom essentials like pots, pans, utensils, soap and toilet paper, all so you never have to worry about not being able to find important things when you need them. We also handle utility setup, meaning there’s no more trying to keep track of stacks of bills every month.</p>
		<p class="h5">We offer both shared and private rooms, starting at $790 for a shared room and $1180 for a private room. The longer you stay, the cheaper your rent!</p>
		<div class="center">
			<a href="online-questionnaire/?utm_source=landing-page&utm_medium=furnished-rooms" target="_blank" class="button2 red">Apply now</a>
		</div>
	</div>
	<hr class="hr m0">
</div>

<div class="main_width steps txt">
    <h4 class="h1 center">How to Reserve Your Spot</h4>
    <div class="fx ch3">
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/checklist.svg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-6), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-6)" >
            <p class="title">Step 1 <br>Fill out a short form</p>
            <p class="text">Fill out this form and a member of our team will contact you about pricing and availability.</p>

        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/smartphone.svg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-7), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-7)" >
            <p class="title">Step 2 <br> Get an offer within a day</p>
            <p class="text">Our team will give you a few different options based on your budget and our availability. </p>
        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/contract.svg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-8), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-8)" >
            <p class="title">Step 3 <br> Accept our offer and move in</p>
            <p class="text">You’re all set!</p>
        </div>
    </div>
    <p class="center">Our furnished rooms for rent offer everything you’ll need to feel at home right away. What are you waiting for?</p>
    <div class="center">
		<a href="online-questionnaire/?utm_source=landing-page&utm_medium=furnished-rooms" target="_blank" rel="nofollow noopener noreferer" class="button2 red">Apply now</a>
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
	<img src="/design/{$settings->theme|escape}/images/landing/brook.jpg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-9), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-9)" >
	</a>
</div>

{get_posts type=2 var=s_reviews limit=10}
{include file='bx/reviews_slider.tpl'}

{$posts_slider_tag_id=27}
{include file='bx/blog_list.tpl'}








</div>
