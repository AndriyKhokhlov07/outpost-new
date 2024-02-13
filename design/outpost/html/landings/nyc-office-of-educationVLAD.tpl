<div class="main_width">
	<div class="second_block fx w">
		<div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/buildings.svg" alt="Look no further than Outpost Club"></div>
		<div class="text">
			<img src="/design/{$settings->theme|escape}/images/landing/logo.svg" alt="Outpost Club logo">
			<p>At Outpost, we're familiar with how this works, and we're dedicated to making the housing search simpler for students, travelers, digital nomads couples and anyone else looking for a shared space to live in New York. That's why we offer a simple application process (which you can start  <a href="online-questionnaire" class="green" target="_blank" rel="nofollow noopener noreferer"> here</a>!) and, of course, some of the most stylish, comfortable and homey flats you could hope to find.</p>
		</div>
	</div>
</div>
<div class="w100">
	<div class="main_width">
		<h4 class="h1 center">We’ve thought of everything you need to hit the ground running in your new apartment</h4>
	</div>
	<div class="fx gall w">
	<a class="img" href="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-1.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-1.jpg" alt="Rent a room in Brooklyn"></a>
	<a class="img" href="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-2.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-2.jpg" alt="Rent a room in Brooklyn"></a>
	<a class="img" href="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-3.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-3.jpg" alt="Rent a room in Brooklyn"></a>
	<a class="img" href="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/share-apart/share-apartments-4.jpg" alt="Rent a room in Brooklyn"></a>
	</div>
</div>
<div class="main_width">
	<div class="advantages">
		<h4 class="h1 center">We have single rooms starting at $1080 and shared rooms starting at $790</h4>
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
			<a href="online-questionnaire" class="button2">I'm interested</a>
		</div>
	</div>
</div>

<div class="w100 land_map">
	{*<div>
		<iframe src="https://www.google.com/maps/d/embed?mid=1auTDUCQMxu4x5uNSz2_xs-aIb8m5zCB1&hl=en_US" style="width: 100%; height: 480px;"></iframe>
	</div>*}
	<div class="main_width white_bl_">
		<p class="h1">Our Locations</p>
		<p class="text">Our shared apartments are located in neighborhoods throughout Manhattan, Brooklyn and Queens, offering quick and easy access to transportation, food and the best hangouts. Just book a room with us, drop your luggage off in your room and head out to start the next chapter in your life in New York.</p>
		<h3>Sounds better than spending hours trying to find a room in some random guesthouse, right?</h3>
	</div>
</div>

<div class="main_width steps txt">
    <h4 class="h1 center">How to Reserve Your Spot</h4>
    <div class="fx ch3">
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/form.svg" alt="Form">
            <p class="title">Step 1 <br> Fill out the form</p>
            <p class="text">To get pricing and availability, fill out the form on this page</p>

        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/phone2.svg" alt="Interview">
            <p class="title">Step 2 <br> Have a Quick Interview</p>
            <p class="text">Schedule a time to talk or fill out our interview form</p>
        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/house.svg" alt="Move in house">
            <p class="title">Step 3 <br> Move In!</p>
            <p class="text">You`re all set! We’re excited to welcome you to one of our coliving spaces here in NYC!</p>
        </div>
    </div>
    <p class="center">The easiest way to get an affordable room near your desired neighborhood is as simple as filling out our short application and hearing back from us within about a day. Hope to welcome you into our community soon!</p>
    <div class="center">
		<a href="online-questionnaire" class="button2">Apply now</a>
	</div>
</div>  

<div class="w100 img brook">
	<a href="/about" target="_blank" rel="nofollow noopener noreferer">
	<h4 class="title">More about Outpost Club</h4>
	<img src="/design/{$settings->theme|escape}/images/landing/brook.jpg" alt="Community">
	</a>
</div>

<div class="center main_width">
	<a href="our-houses" class="button2">Explore our houses</a>
	<div class="hr m0"></div>
</div>

{get_posts type=2 var=s_reviews limit=16}
{include file='../bx/reviews_slider.tpl'}

{$posts_slider_tag_id=27}
{include file='../bx/blog_list.tpl'}








</div>
