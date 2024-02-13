<div class="land">
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
				<img src="/design/{$settings->theme|escape}/images/landing/nyc-rooms/nyc-rooms-main.jpg" title="Affordable, Furnished Rooms for Rent in New York City (Image-1), outpost-club.com" alt="Affordable, Furnished Rooms for Rent in New York City (Image-1)" >
			</div>
			<div class="right_bl fx v vc">
				<p>Whether you’re just laying a foundation in New York, your current lease is nearly up or you’re looking for a more affordable apartment, finding NYC rooms for rent can be tough in a city of nearly 9 million people. Living in New York is expensive, but Outpost can set you up in cheap private or shared accommodations in our coliving houses located throughout Manhattan, Brooklyn and Queens.</p>
				<p><strong>We’ve made it easier than ever to live close to all the exciting things New York has to offer. Plus, our housing is more affordable than many other renovated apartments. We take care of maintenance and setting up utilities, so you don’t have to worry about keeping track of bills from multiple companies. Additionally, each room is fully furnished.</strong></p>
				{*<img src="/design/{$settings->theme|escape}/images/landing/right-arrow.svg" alt="rooms for rent in new york">*}
			</div>
		</div>
		</div>
	</div>
	<div class="main_width">
		<div class="advantages">
			<h4 class="h1 center">We have shared rooms starting at $790 and private rooms starting at $1180</h4>
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
					<p class="text">Our team takes care of your home so you don`t have to</p>
				</div>
				
			</div>*}
			{include file='bx/adv_block.tpl'} 
		</div>
		<hr class="hr m0">
	</div>
	<div class="w100">
		<div class="main_width txt center p_size22">
			<h2 class="h1 center">Rooms for Rent in Brooklyn</h2>
			<p>There are many reasons to live in Brooklyn. It’s part of the most exciting city on Earth, and Brooklyn, New York’s largest borough by area, has plenty of exciting things to do. In fact, if Brooklyn were its own city, it would be the fourth-largest in the nation. But just like in Manhattan, apartments here are not cheap, especially for students and artists.</p> 
			<p>If you’re seeking NYC rooms for rent in Brooklyn, Outpost can set you up in our short-term or long-term housing units in some of the most up-and-coming neighborhoods. Brooklyn’s neighborhoods provide a strong sense of community; plus our housing is close to shopping, restaurants, bars and nightlife — not to mention plentiful public transit options, where you can hop on a CitiBike, grab a bus or catch a quick train into Manhattan.</p> 	
			<p>If you long for somewhere a little less hectic, yet with plenty to do and still close to the action, we’ve got apartments to suit your style, whether you want to be right in the thick of things in Manhattan, get to know Brooklyn’s rich culture and history, or keep life a little more laid back in south Queens.</p>
			<a href="online-questionnaire/?utm_source=landing-page&utm_medium=rooms-for-rent" target="_blank" rel="nofollow noopener noreferer" class="button2 red">Apply now</a>
		</div>
	</div>

	<div class="fx gall w">
			<a class="img" href="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-brooklyn-3.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-brooklyn-3.jpg" title="Affordable, Furnished Rooms for Rent in New York City (Image-2), outpost-club.com" alt="Affordable, Furnished Rooms for Rent in New York City (Image-2)" ></a>
			<a class="img" href="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-brooklyn-1.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-brooklyn-1.jpg" title="Affordable, Furnished Rooms for Rent in New York City (Image-3), outpost-club.com" alt="Affordable, Furnished Rooms for Rent in New York City (Image-3)" ></a>
			<a class="img" href="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-brooklyn-4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-brooklyn-4.jpg" title="Affordable, Furnished Rooms for Rent in New York City (Image-4), outpost-club.com" alt="Affordable, Furnished Rooms for Rent in New York City (Image-4)" ></a>
			<a class="img" href="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-brooklyn-2.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-brooklyn-2.jpg" title="Affordable, Furnished Rooms for Rent in New York City (Image-5), outpost-club.com" alt="Affordable, Furnished Rooms for Rent in New York City (Image-5)" ></a>
	</div>


	<div class="w100">
		<div class="main_width txt center p_size22">
			<h2 class="h1 center">Rooms for Rent in Manhattan</h2>
			<p>Whether you attend Columbia University, prefer the culture of Hell’s Kitchen or like going for long morning strolls in Central Park, Manhattan is full of interesting, exciting neighborhoods.. We have apartments in multiple Manhattan neighborhoods, allowing you to live close to work and avoid a long commute or pick an entirely different neighborhood to explore, all while enjoying a stay as short as a month.</p> 

			<p>Our NYC rooms for rent can put you within walking distance of some of the city’s most popular attractions. You can choose to fly solo or go for the unique experience of living in a coliving house. We offer an affordable opportunity to live near world-class restaurants, museums like the world-famous Metropolitan Museum of Art and performance venues like Radio City Music Hall, not to mention shopping on 5th Ave. or in Herald Square.</p>

			<p>If you’ve never thought you could live in Manhattan, Outpost can set you up with NYC rooms for rent so you can be a part of an exciting community. There’s always something to do and you can make friends from around the world!</p>

			<a href="online-questionnaire/?utm_source=landing-page&utm_medium=rooms-for-rent" target="_blank" rel="nofollow noopener noreferer" class="button2 red">Apply now</a>
		</div>
	</div>

	<div class="fx gall w">
			<a class="img" href="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-manhattan-2.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-manhattan-2.jpg" title="Affordable, Furnished Rooms for Rent in New York City (Image-6), outpost-club.com" alt="Affordable, Furnished Rooms for Rent in New York City (Image-6)" ></a>
			<a class="img" href="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-manhattan-1.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-manhattan-1.jpg" title="Affordable, Furnished Rooms for Rent in New York City (Image-7), outpost-club.com" alt="Affordable, Furnished Rooms for Rent in New York City (Image-7)" ></a>
			<a class="img" href="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-manhattan-4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-manhattan-4.jpg" title="Affordable, Furnished Rooms for Rent in New York City (Image-8), outpost-club.com" alt="Affordable, Furnished Rooms for Rent in New York City (Image-8)" ></a>
			<a class="img" href="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-manhattan-3.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/nyc-rooms/rooms-for-rent-nyc-manhattan-3.jpg" title="Affordable, Furnished Rooms for Rent in New York City (Image-9), outpost-club.com" alt="Affordable, Furnished Rooms for Rent in New York City (Image-9)" ></a>
	</div>

	<div class="main_width">
		<div class="advantages p_size22">
			<h2 class="h1 center">Rooms for Couples</h2>
			<p class="center">Share a room with your partner in our coliving houses. If you prefer to be near the Theater District for easy date nights, we have a newly renovated house right in the heart of Hell’s Kitchen.. Our recently renovated, fully furnished apartments include modern appliances so you can cook a meal or sit back and relax while watching TV. Each apartment has been built for comfort, with thoughtfully designed bedrooms and common areas. Plus, we offer maintenance services to save you time, while our Nest security systems offer peace-of-mind whether you’re home, at work or out on the town.</p>
		
		</div>
		<hr class="hr m0">
	</div>




	<div class="main_width steps txt">
    <h4 class="h1 center">How to Reserve Your Spot</h4>
    <div class="fx ch3">
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/checklist.svg" title="Affordable, Furnished Rooms for Rent in New York City (Image-1), outpost-club.com" alt="Affordable, Furnished Rooms for Rent in New York City (Image-10)" >
            <p class="title">Step 1 <br>Fill out a short form</p>
            <p class="text">Fill out this form and a member of our team will contact you about pricing and availability.</p>

        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/smartphone.svg" title="Affordable, Furnished Rooms for Rent in New York City (Image-1), outpost-club.com" alt="Affordable, Furnished Rooms for Rent in New York City (Image-11)" >
            <p class="title">Step 2 <br> Get an offer within a day</p>
            <p class="text">Our team will give you a few different options based on your budget and our availability. </p>
        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/contract.svg" title="Affordable, Furnished Rooms for Rent in New York City (Image-1), outpost-club.com" alt="Affordable, Furnished Rooms for Rent in New York City (Image-12)" >
            <p class="title">Step 3 <br> Accept our offer and move in</p>
            <p class="text">You’re all set!</p>
        </div>
    </div>
    <p class="center">We’re excited to welcome you to one of our affordable apartments in New York City.</p>
    <div class="center">
			<a href="online-questionnaire/?utm_source=landing-page&utm_medium=rooms-for-rent" target="_blank" rel="nofollow noopener noreferer" class="button2 red">Apply now</a>
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
		<img src="/design/{$settings->theme|escape}/images/landing/brook.jpg" title="Affordable, Furnished Rooms for Rent in New York City (Image-13), outpost-club.com" alt="Affordable, Furnished Rooms for Rent in New York City (Image-13)" >
		</a>
	</div>

	{get_posts type=2 var=s_reviews limit=5}
	{include file='bx/reviews_slider.tpl'}

	{$posts_slider_tag_id=27}
	{include file='bx/blog_list.tpl'}

</div>