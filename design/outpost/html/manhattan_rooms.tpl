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
			<img src="/design/{$settings->theme|escape}/images/landing/manhattan-rooms-for-rent-3.jpg" title="Furnished Rooms for Rent in Manhattan, NYC (Image-1), outpost-club.com" alt="Furnished Rooms for Rent in Manhattan, NYC (Image-1)" >
		</div>
		<div class="right_bl fx v vc">
			<p>Finding cheap apartments in Manhattan is like searching for a needle in a haystack. New York is notoriously expensive. But at Outpost, we do the work and set you up at one of our cheap Manhattan rooms for rent. We can get you into our highly affordable private or shared coliving houses, whether your plans are to stay short-term or long-term.</p>
			<p>Manhattan’s apartments are known for being small. Aside from the moving and living costs, furnishing your space can be expensive, too.</p>
			<p><strong>Our coliving apartments are fully furnished as part of our all-inclusive housing offerings. And each accommodation is high-quality; we’ll set you up in a house that is well-kept, clean and that is most suited for your needs.</strong></p>
			{*<img src="/design/{$settings->theme|escape}/images/landing/right-arrow.svg" alt="furnished rooms for rent in Brooklyn">*}
		</div>
	</div>
</div>


<div class="w100">
	<div class="main_width txt center">
		<h2 class="h1 center">Cheap Monthly Rentals</h2>
		<p>Our coliving houses provide you with a place to stay, whether you’re spending a short amount of time in New York or plan to stay longer after your internship or job assignment ends. Reasonable pricing means you can afford to enjoy Manhattan’s world-renowned cultural attractions, including theaters, museums, restaurants and so much more.</p> 
		<p>Even better, you don’t have to worry about paying a security deposit up-front thanks to our partner Qira. Outpost accommodates your budget so you can enjoy the nearly unlimited array of activities in New York while appreciating everything your community has to offer, whether we set you up in an apartment in Lower Manhattan, Midtown, the Upper East Side or Harlem, or within the many neighborhoods in between.</p>
	</div>
	<div class="fx gall w">
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-4.jpg" title="Furnished Rooms for Rent in Manhattan, NYC (Image-2), outpost-club.com" alt="Furnished Rooms for Rent in Manhattan, NYC (Image-2)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-2.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-2.jpg" title="Furnished Rooms for Rent in Manhattan, NYC (Image-3), outpost-club.com" alt="Furnished Rooms for Rent in Manhattan, NYC (Image-3)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-3.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-3.jpg" title="Furnished Rooms for Rent in Manhattan, NYC (Image-4), outpost-club.com" alt="Furnished Rooms for Rent in Manhattan, NYC (Image-4)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-5.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-5.jpg" title="Furnished Rooms for Rent in Manhattan, NYC (Image-5), outpost-club.com" alt="Furnished Rooms for Rent in Manhattan, NYC (Image-5)" ></a>
	</div>
</div>
<div class="main_width">
	<div class="advantages">
		<h4 class="h1 center">We have single rooms starting at $1180 and shared rooms starting at $790</h4>
		<h5 class="h5">What's included with your bedroom in our all-inclusive prices</h5>
		{include file='bx/adv_block.tpl'} 
		<div class="center">
			<a href="online-questionnaire/?utm_source=landing-page&utm_medium=manhattan-rooms" class="button2 red">Apply now</a>
		</div>
	</div>
</div>


<div class="w100">
	<div class="main_width txt center">
		<h2 class="h1 ">Coliving the Easy Way</h2>
		<p>Whether you prefer a private or shared bedroom, our coliving environment will help you avoid the stress of other living arrangements in the city. Shared kitchens and living rooms are fully furnished so you can live comfortably. Working professionals, artists, students and interns enjoy getting to know each other in our common areas, and regular common area cleanings are included so the burden of chores doesn’t overwhelm your busy schedule. </p>
	</div>
</div>
<div class="w100">
	<div class="main_width txt center">
		<h2 class="h1 ">Shared Living</h2>
		<p>Living with a roommate can help you save money and can even lead to a lifelong friendship, as many of our coliving residents have found. Finding the right roommate can be a challenge, but with Outpost, you don’t have to worry about the pitfalls of searching for a random roommate. Our customer service professionals are dedicated to meeting your needs while they set you up in one of our high-quality apartments anywhere in Manhattan. You and your roommates can be situated close to work, a favorite hangout, a world-class shopping district, clubs, Broadway theaters or a large selection of fine-dining experiences. We also have accommodations near some of the largest subway stations, so traveling around the city is as easy as can be.</p>
	</div>
	<div class="fx gall w">
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-1.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-1.jpg" title="Furnished Rooms for Rent in Manhattan, NYC (Image-6), outpost-club.com" alt="Furnished Rooms for Rent in Manhattan, NYC (Image-6)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-2.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-2.jpg" title="Furnished Rooms for Rent in Manhattan, NYC (Image-7), outpost-club.com" alt="Furnished Rooms for Rent in Manhattan, NYC (Image-7)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-3.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-3.jpg" title="Furnished Rooms for Rent in Manhattan, NYC (Image-8), outpost-club.com" alt="Furnished Rooms for Rent in Manhattan, NYC (Image-8)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/communal-liv/coliving-living-4.jpg" title="Furnished Rooms for Rent in Manhattan, NYC (Image-9), outpost-club.com" alt="Furnished Rooms for Rent in Manhattan, NYC (Image-9)" ></a>
	</div>
</div>
<div class="main_width">
	<div class="advantages txt center">
		<h2 class="h1 ">Rooms for Couples</h2>
		<p>Outpost offers coliving accomodation for couples, so you and your partner can have accommodations that meet your needs. Fully furnished kitchens let you enjoy meals at home, while proximity to the trendiest neighborhoods and destinations ensures an exciting date night is possible any time. Our Manhattan rooms for rent are also perfect if you prefer to stay home and relax: They feature comfortable living spaces, bedrooms and common areas. Plus, we offer cleaning and maintenance services and have installed security systems so you can get the most out of your coliving experience and enjoy quality time together.</p>
	</div>
</div>


<div class="main_width">
	<div class="advantages txt center">
		<h2 class="h1 ">Finding Affordable Rooms for Rent Anywhere in Manhattan Is Possible</h2>
		<p>Many people are discouraged when they look for apartments in Manhattan they can afford. Our many private and shared spaces provide the opportunity to live in the most exciting city in the world and have cash to spend, allowing you to enjoy dining, shopping and nightlife. If you think getting to this point is complicated, think again: All you need to do is fill out our simple application and we’ll get back to you about pricing and the availability of coliving houses throughout New York City. Once we have the necessary documents we’ll provide you an offer that you are free to accept to move into your new Manhattan room for rent.</p>
	</div>
	<hr class="hr m0">
</div>





<div class="main_width steps txt">
    <h4 class="h1 center">Sign Up at Outpost Today</h4>
    <div class="fx ch3">
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/checklist.svg" title="Furnished Rooms for Rent in Manhattan, NYC (Image-1), outpost-club.com" alt="Furnished Rooms for Rent in Manhattan, NYC (Image-10)" >
            <p class="title">Step 1 <br>Fill out a short form</p>
            <p class="text">Fill out this form and a member of our team will contact you about pricing and availability.</p>

        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/smartphone.svg" title="Furnished Rooms for Rent in Manhattan, NYC (Image-1), outpost-club.com" alt="Furnished Rooms for Rent in Manhattan, NYC (Image-11)" >
            <p class="title">Step 2 <br> Get an offer within a day</p>
            <p class="text">Our team will give you a few different options based on your budget and our availability. </p>
        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/contract.svg" title="Furnished Rooms for Rent in Manhattan, NYC (Image-1), outpost-club.com" alt="Furnished Rooms for Rent in Manhattan, NYC (Image-12)" >
            <p class="title">Step 3 <br> Accept our offer and move in</p>
            <p class="text">You’re all set!</p>
        </div>
    </div>
    <p class="center">We’re excited to welcome you to one of our affordable apartments in New York City.</p>
    <div class="center">
		<a href="online-questionnaire/?utm_source=landing-page&utm_medium=manhattan-rooms" class="button2 red">Apply now</a>
	</div>
	<hr class="hr m0">
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

<div class="main_width">
    <div class="fx c w ch3 areas_list">
        <a class="item" target="_blank" rel="nofollow noopener noreferer" href="https://bit.ly/3dvycOQ">
            <div><p class="title">About Outpost Club</p>
            <p class="p">We Are Passionate About Making Finding Housing Easy</p></div>
        </a>
        <a class="item" target="_blank" rel="nofollow noopener noreferer" href="https://bit.ly/2QLALTc">
        	<div>
        		<p class="title">Hot Deals</p>
            	<p class="p">Grab The Best Price!</p>
        	</div>
            
        </a>
        <a class="item" target="_blank" rel="nofollow noopener noreferer" href="https://bit.ly/3bn9xu6">
            <div><p class="title">COVID-19</p>
            <p class="p">All Updates from Outpost Club in One Place</p></div>
        </a>

    </div>
</div>

{get_posts type=2 var=s_reviews limit=16}
{$reviews_title='Members Reviews:'}
{include file='bx/reviews_slider.tpl'}

{$posts_slider_tag_id=27}
{include file='bx/blog_list.tpl'}



</div>
