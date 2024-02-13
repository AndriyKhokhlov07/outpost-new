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
			<img src="/design/{$settings->theme|escape}/images/landing/nyc-intern-housing/nyc-intern-housing.jpg" title="Affordable Housing for Interns in New York City (Image-1), outpost-club.com" alt="Affordable Housing for Interns in New York City  (Image-1)" >
		</div>
		<div class="right_bl fx v vc">
			<p>Welcome to Outpost Club! We offer affordable shared coliving spaces in locations where housing costs are high and it’s hard to find cheap apartments when you’re just starting out. If you’re looking for intern housing close to work and where you can be a part of a strong community, our coliving housing will be perfect for you.</p>
			{*<img src="/design/{$settings->theme|escape}/images/landing/right-arrow.svg" alt="intern housing nyc">*}
		</div>
	</div>
</div>

<div class="main_width">
	<div class="second_block fx w">
		<div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/buildings.svg" title="Affordable Housing for Interns in New York City (Image-2), outpost-club.com" alt="Affordable Housing for Interns in New York City  (Image-2)" ></div>
		<div class="text">
			<img src="/design/{$settings->theme|escape}/images/landing/logo.svg" title="Affordable Housing for Interns in New York City (Image-3), outpost-club.com" alt="Affordable Housing for Interns in New York City  (Image-3)" >
			<p>We have furnished rooms for rent in Brooklyn and Manhattan. These include private and shared rooms where you have a comfortable bedroom along with common areas such as fully equipped and furnished kitchens and living rooms. You’ll get ovens and microwaves, plus televisions and entertainment systems in recently renovated spaces.</p> 
		</div>
	</div>
</div>


<div class="w100">
	<div class="main_width txt center">
		<h2 class="h1 center">What It Means to Live at Outpost</h2>
		<p>It’s our goal to make you feel included in the community, whether you move in with a group of friends or try out coliving with new people. New York City is an exciting community with people from all walks of life and different passions and careers. Its world-class culture, including dining, nightlife, museums, art, music and shopping, can be enjoyed if you are here for just a few months or for the long term.</p>
 		<p><strong>A summer internship can be unforgettable; however, New York City is exciting any time of year, whether you land an internship in the fall or winter (during the holiday season) or in the spring. Plus, if your opportunity grows into a full-time job, you can stay with us longer and get even more out of New York.</strong></p>
 		<p>The city is also an ideal place for networking with people in any profession. You can make an unlimited number of contacts in a short time. A friendly introduction to someone at work or who lives near you, or even a roommate, can lead to career opportunities down the line. In New York, people are always networking, and you’ll have plenty of chances to do so when you live at Outpost.</p>
</p>
	</div>
</div>
<div class="main_width">
	<div class="advantages">
		<h4 class="h1 center">We have private rooms starting from $1350</h4>
		<h5 class="h5">What's included with your bedroom in our all-inclusive prices:</h5>
		{include file='bx/adv_block.tpl'} 
		<div class="center">
		<a href="online-questionnaire/?utm_source=landing-page&utm_medium=intern-housing-nyc" class="button2 red" target="_blank" rel="nofollow noopener noreferer">Apply now</a>
	</div>
	</div>
		<hr class="hr m0">
</div>

<!-- <div class="main_width txt">
	<h2 class="h1 center">Our Locations</h2>
</div> -->
<div class="w100 land_map align_start">
	{*<div>
		<iframe src="https://www.google.com/maps/d/embed?mid=1auTDUCQMxu4x5uNSz2_xs-aIb8m5zCB1&hl=en_US" style="width: 100%; height: 480px;"></iframe>
	</div>*}
	<div class="main_width white_bl_ txt">
		<p class="big_p">We’re in bustling neighborhoods such as Upper Manhattan and the Upper East Side. If you prefer to stay in Brooklyn, we’re also in the artsy neighborhood of Williamsburg and in Bushwick, Stuyvesant Heights, Boerum Hill and Flatbush, among others, all of which are well-served by public transportation. They are more convenient than sublets and come with so many more opportunities. </p>
		<p><strong>Plus, our accommodations can put you minutes from a train stop or a popular local restaurant, coffee shop or bar.</strong></p>
	</div>
</div>


<div class="main_width steps txt">
    <h4 class="h1 center">How to Reserve Your Spot</h4>
    <div class="fx ch3">
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/checklist.svg" title="Affordable Housing for Interns in New York City (Image-4), outpost-club.com" alt="Affordable Housing for Interns in New York City  (Image-4)" >
            <p class="title">Step 1 <br>Fill out a short form</p>
            <p class="text">Fill out this form and a member of our team will contact you about pricing and availability.</p>

        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/smartphone.svg" title="Affordable Housing for Interns in New York City (Image-5), outpost-club.com" alt="Affordable Housing for Interns in New York City  (Image-5)" >
            <p class="title">Step 2 <br>Get an offer within a day</p>
            <p class="text">Our team will give you a few different options based on your budget and our availability. </p>
        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/contract.svg" title="Affordable Housing for Interns in New York City (Image-6), outpost-club.com" alt="Affordable Housing for Interns in New York City  (Image-6)" >
            <p class="title">Step 3 <br>Accept our offer and move in</p>
            <p class="text">You’re all set!</p>
        </div>
    </div>
    <p class="center">We’re excited to welcome you to one of our affordable apartments in New York City</p>
    <div class="center">
		<a href="online-questionnaire/?utm_source=landing-page&utm_medium=intern-housing-nyc" class="button2 red" target="_blank" rel="nofollow noopener noreferer">Apply now</a>
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

<div class="w100">
	<div class="main_width txt center">
		<h2 class="h1 ">Why Outpost Is Perfect for Interns</h2>
		<p>Finding an internship in NYC is super competitive. So is finding affordable housing. At Outpost, we let you focus on your job by providing all-inclusive packages that enable you to live comfortably with other individuals we interview. Our process is fast and stress-free. If you’ve been given the opportunity to intern in New York, apply at Outpost today.</p>
	</div>
	<div class="fx gall w">
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/nyc-intern-housing/nyc-intern-housing13.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/nyc-intern-housing/nyc-intern-housing13.jpg" title="Affordable Housing for Interns in New York City (Image-7), outpost-club.com" alt="Affordable Housing for Interns in New York City  (Image-7)"></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/nyc-intern-housing/nyc-intern-housing11.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/nyc-intern-housing/nyc-intern-housing11.jpg" title="Affordable Housing for Interns in New York City (Image-8), outpost-club.com" alt="Affordable Housing for Interns in New York City  (Image-8)"></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/nyc-intern-housing/nyc-intern-housing12.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/nyc-intern-housing/nyc-intern-housing12.jpg" title="Affordable Housing for Interns in New York City (Image-9), outpost-club.com" alt="Affordable Housing for Interns in New York City  (Image-9)"></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/nyc-intern-housing/nyc-intern-housing14.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/nyc-intern-housing/nyc-intern-housing14.jpg" title="Affordable Housing for Interns in New York City (Image-10), outpost-club.com" alt="Affordable Housing for Interns in New York City  (Image-10)"></a>
	</div>
</div>

<div class="main_width">
    <div class="fx c w ch3 areas_list">
        <a class="item" target="_blank" rel="nofollow noopener noreferer" href="https://bit.ly/2wz7rIN">
            <div><p class="title">About Outpost Club</p>
            <p class="p">We Are Passionate About Making Finding Housing Easy</p></div>
        </a>
        <a class="item" target="_blank" rel="nofollow noopener noreferer" href="https://bit.ly/2V3lobq">
        	<div>
        		<p class="title">Hot Deals</p>
            	<p class="p">Grab The Best Price!</p>
        	</div>
            
        </a>
        <a class="item" target="_blank" rel="nofollow noopener noreferer" href="https://bit.ly/34CLeq0">
            <div><p class="title">COVID-19</p>
            <p class="p">All Updates from Outpost Club in One Place</p></div>
        </a>

    </div>
</div>

{get_posts type=2 var=s_reviews limit=16}
{include file='bx/reviews_slider.tpl'}

{$posts_slider_tag_id=27}
{include file='bx/blog_list.tpl'}



</div>
