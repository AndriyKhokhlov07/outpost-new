{$breadcrumb_n=0}
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


</div>


<div class="land">
	<div class="w1200 txt">
	<div class="first_block cover">
		<div class="img">
			<img src="/design/{$settings->theme|escape}/images/landing/stud-housing/student-housing.jpg" alt="Student housing in New York">
		</div>
		<div class="right_bl fx v vc">
			<div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/brooklyn-bridge.svg" alt="searching for a cheap place to crash for a bit"></div>
			<p>If you are Studying in New York City and looking for Off-Campus Student Housing, look no further than Outpost. With over 25 locations in Manhattan, Brooklyn, and Queens, finding a new home close to your university has never been easier. With The Outpost Club, you don’t have to worry about furnishing, managing utilities, setting up wifi services, or even cleaning common spaces. Everything is taken care of here.</p>
			<p><strong>Your piece of New York City awaits.</strong></p>
			<img src="/design/{$settings->theme|escape}/images/landing/right-arrow.svg" alt="searching for a cheap place to crash for a bit">
		</div>
	</div>
</div>
<div class="main_width">
	<div class="second_block fx w">
		<div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/buildings.svg" alt="Look no further than Outpost Club"></div>
		<div class="text">
			<img src="/design/{$settings->theme|escape}/images/landing/logo.svg" alt="Outpost Club logo">
			<p>As a student, it can be daunting trying to find off-campus living in NYC. Outpost Club is here to help. We know that simply being a student is a challenge all on its own, let alone taking on the Big Apple. You not only gain wonderful amenities like housekeeping, 24/7 security, and a team ready to help you with any questions you have, but you also gain a community. You’ll have the amazing opportunity to meet like-minded individuals looking to make the most of their educational opportunities. Learn and grow in the safety of Outpost Club.</p>
		</div>
	</div>
</div>

<div class="main_width">
	<div class="advantages">
		<h4 class="h1 center">What's included in the price of your spot at Outpost Club:</h4>
		{include file='bx/adv_block.tpl'} 
	</div>
	 <div class="center">
        <a href="online-questionnaire" class="button2 red">Apply now</a>
    </div>
	<hr class="hr m0">
</div>

<div class="fx gall w">	
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/educational-pods-5.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/educational-pods-5.jpg" alt="Educational pods"></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/educational-pods-4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/educational-pods-4.jpg" alt="Educational pods"></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/educational-pods-3.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/educational-pods-3.jpg" alt="Educational pods"></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-4.jpg"  alt="Educational pods"></a>
</div>


<div class="main_width ">
	<div class="main_width txt center">
		<h2 class="h1 center">Off-Campus apartments for students In New York City</h2>
	    <p>Choose off-campus living so you can have more say in how you live! With Outpost Club you are in control. Forget spending high prices to live in a generic dorm room that gives you little to no privacy. Off-campus housing means choosing your own unique space and the people you live with. It means having a quieter and cleaner place to eat, sleep, and study. Make the most out of college without the annoyances of dorm room living.</p>
	    <br>
	</div>
</div>
<div class="main_width txt">
	<h3 class="h1 center">Choose to live in Manhattan, Brooklyn or Queens</h3>
</div>
<div class="w100 land_map align_start">
	{*<div>
		<iframe src="https://www.google.com/maps/d/embed?mid=1auTDUCQMxu4x5uNSz2_xs-aIb8m5zCB1&hl=en_US" style="width: 100%; height: 480px;"></iframe>
	</div>*}
	<div class="main_width white_bl_ txt">
		<p>Experience the Brooklyn way of living. Walk down a street of brownstone buildings, catch a Nets game at the Barclay Center, have a slice of Di Fara’s Pizza, escape into a botanical garden, and admire true street art. If it’s character you’re looking for, Brooklyn is where you need to be.</p>
	    <p>The Lewis House location is as Brooklyn as one can get, located in Stuyvesant Heights. Experience historical architecture in your new neighborhood. Enjoy the mélange of red brick townhomes, brownstone buildings, neo-classical structures, and Romanesque revival. This is a neighborhood that invites you to explore and enjoy the local cafes and boutique shops. Come back home to a common space designed to make you feel welcomed with rooms that bring in plenty of natural light.</p>
		<p>If you want a taste of modern, then the Williamsburg House is for you. Located in a young and thriving neighborhood, just one stop away from Manhattan, Williamsburg is for the young professional who needs an atmosphere that pushes them to be the best version of themselves as well as allowing them to enjoy their youth. Popular bars, rooftops, Michelin-star restaurants, and waterfront parks are just some of the few amenities that come with living at Williamsburg House. Living inside of it also has some perks, like a game room, home theatre, cafeteria, your own rooftop, and newly renovated interior. <strong>A steal for the location and amenities that come with the place!</strong></p>
		<p>Live in Manhattan at The Maison on Edgecombe. This newly renovated building is located in Washington Heights, one of the most diverse sections of NYC. This is New York; everything you need will be at a five block radius. Grab a late-night snack at your local deli, order a drink at a cozy bar, and support a local café before catching your train downtown. The Heights is a lively neighborhood that is ready to welcome you home. The Maison offers a spacious living space with well thought out interior design that draws in natural light, and a community garden that beckons you to try out your green thumb.</p>
		<p><stromg>Each of these locations allows you to rent a single room, or if you are coming with friends, you also have the option to move into an entire unit. We give you the choice to make the most out of the city and your living quarters.</strong></p>
	</div>
	<hr class="hr m0">
</div>
<div class="main_width steps txt">
    <h4 class="h1 center">Apply to Outpost Today</h4>
    <div class="fx ch3">
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/checklist.svg" alt="Form">
            <p class="title">Step 1 <br>Fill out a short form</p>
            <p class="text">Fill out this form and a member of our team will contact you about pricing and availability.</p>

        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/smartphone.svg" alt="Interview">
            <p class="title">Step 2 <br> Get an offer within a day</p>
            <p class="text">Our team will give you a few different options based on your budget and our availability. </p>
        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/contract.svg" alt="Move in house">
            <p class="title">Step 3 <br> Accept our offer and move in</p>
            <p class="text">You’re all set!</p>
        </div>
    </div>
    <p class="center">We’re excited to welcome you to one of our affordable apartments in New York City.</p>
    <div class="center">
		<a href="https://bit.ly/39o6aSt" class="button2 red">Apply now</a>
	</div>
	<hr class="hr m0">
</div> 

<div class="main_width">
    <div class="fx c w ch3 areas_list">
        <a class="item" target="_blank" href="blog/refer-your-friends-to-outpost-and-youll-both-get-250/?utm_source=landing-page&utm_medium=student-housing&utm_campaign=referral-program">
            <div><p class="title">Outpost Referral Program</p>
            <p class="p">Refer Your Friends to Outpost and You'll Both Get $250</p></div>
        </a>
        <a class="item" target="_blank" href="about/?utm_source=landing-page&utm_medium=student-housing&utm_campaign=about">
        	<div>
        		<p class="title">About Outpost Club</p>
            	<p class="p">We Are Passionate About Making Finding Housing Easy</p>
        	</div>
            
        </a>
        <a class="item" target="_blank" href="new-york/?utm_source=landing-page&utm_medium=student-housing&utm_campaign=our-houses">
            <div><p class="title">Our Houses in New York</p>
            <p class="p">Welcome To Your Built-In Community</p></div>
        </a>

    </div>
</div>

	{get_posts type=2 var=s_reviews limit=16}
	{include file='bx/reviews_slider.tpl'}

	{$posts_slider_tag_id=27}
	{include file='bx/blog_list.tpl'}

</div>
