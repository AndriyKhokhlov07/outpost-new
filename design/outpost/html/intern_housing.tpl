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
   
    
</div>
	<div class="first_block">
		<div class="img">
			<img src="/design/{$settings->theme|escape}/images/landing/intern-housing/intern-housing-2.jpg" title="Shared Living Spaces for Interns in the Outpost Community (Image-1), outpost-club.com" alt="Shared Living Spaces for Interns in the Outpost Community  (Image-1)" >
		</div>
		<div class="right_bl fx v vc">
			<p>Whether you’ve taken an internship in Manhattan, Brooklyn or other parts of New York City or Jersey City, finding an affordable place to live can be a challenge. At Outpost Club we offer cheap shared housing that allows people to live within exciting communities, enjoy fun events and be close to work. Landing an internship is an exciting time. Don’t let a lack of affordable housing ruin your opportunity to learn and grow.</p>
			<p><strong>Contact us and we’ll set you up at one of our all-inclusive, fully furnished apartments.</strong></p>
			{*<img src="/design/{$settings->theme|escape}/images/landing/right-arrow.svg" alt="intern housing">*}
		</div>
	</div>
</div>

<div class="main_width">
	<div class="second_block fx w">
		<div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/buildings.svg" title="Shared Living Spaces for Interns in the Outpost Community (Image-2), outpost-club.com" alt="Shared Living Spaces for Interns in the Outpost Community  (Image-2)" ></div>
		<div class="text">
			<img src="/design/{$settings->theme|escape}/images/landing/logo.svg" title="Shared Living Spaces for Interns in the Outpost Community (Image-3), outpost-club.com" alt="Shared Living Spaces for Interns in the Outpost Community  (Image-3)" >
			<p>Moving is stressful. But we can provide you with summer intern housing, or set you up during any other season, in a move-in ready apartment. Each unit is fully furnished, secure and clean, while all utilities are included. There are plenty of sublets around, but why take the chance? Whether you are new in town and don’t know anyone, or have friends to share an apartment with, we have apartments at unbeatable deals in high-demand areas. All the while you have a chance to meet and socialize with people from all over the world.</p> 
		</div>
	</div>
</div>


<div class="w100">
	<div class="main_width txt center">
		<h2 class="h1 center">Living in the Outpost Community</h2>
		<p>We strongly value inclusivity and community. Our apartments aren’t just comfortable retreats, but opportunities to meet people from around the world and make life-long friends. You can share many exciting adventures in New York City or Jersey City.</p>
 		<p>Living in the city gives you an opportunity to network with people in your field or in other professions. You can easily connect with the people you meet and have lunch at a café or discuss your plans and goals in a city park. Plus, there may be a host of opportunities once your internship ends, so our flexible living arrangements can turn into a more permanent solution down the line; we happily extend stays at the request of members.</p>
 		<p>But if you’re seeking an internship in New York, you know how competitive the market is. Living in an Outpost home enables you to focus on your job knowing your home is taken care of.</p>
</p>
	</div>
</div>
<div class="main_width">
	<div class="advantages">
		<h4 class="h1 center">We have private rooms starting from $1350</h4>
		<h5 class="h5">What's included with your bedroom in our all-inclusive prices:</h5>
		{include file='bx/adv_block.tpl'} 
		<div class="center">
		<a href="online-questionnaire/?utm_source=landing-page&utm_medium=intern-housing" class="button2 red" target="_blank" rel="nofollow noopener noreferer">Apply now</a>
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
		<p class="big_p"><strong>New York City is the business hub of the United States.</strong> People come here from all over the world to enjoy its world-class attractions and find new work. You can stay at an affordable shared accommodation in Manhattan, where apartments are hard to find. Whether you’re within walking distance of work or a train stop or two away, setting up in one of our coliving apartments gives you unlimited freedom to explore the city.</p>
		<p class="big_p"><strong>Manhattan is easily accessible from Brooklyn, which is part of New York City but mostly less dense and crowded than its neighboring borough.</strong> There are many jobs here plus creative, diverse and friendly communities — not to mention trendy music, art, food and bar scenes. Our apartments are conveniently located so you’re not far away from work or fun. We have coliving spaces in Jersey City as well, just across the Hudson River from Manhattan. Living just a train ride away gives you limitless opportunities to find work and enjoy everything the city has to offer.</p>
	</div>
</div>




<div class="main_width steps txt">
    <h4 class="h1 center">How to Reserve Your Spot</h4>
    <div class="fx ch3">
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/checklist.svg" title="Shared Living Spaces for Interns in the Outpost Community (Image-4), outpost-club.com" alt="Shared Living Spaces for Interns in the Outpost Community  (Image-4)" >
            <p class="title">Step 1 <br>Fill out a short form</p>
            <p class="text">Fill out this form and a member of our team will contact you about pricing and availability.</p>

        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/smartphone.svg" title="Shared Living Spaces for Interns in the Outpost Community (Image-5), outpost-club.com" alt="Shared Living Spaces for Interns in the Outpost Community  (Image-5)" >
            <p class="title">Step 2 <br>Get an offer within a day</p>
            <p class="text">Our team will give you a few different options based on your budget and our availability. </p>
        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/contract.svg" title="Shared Living Spaces for Interns in the Outpost Community (Image-6), outpost-club.com" alt="Shared Living Spaces for Interns in the Outpost Community  (Image-6)" >
            <p class="title">Step 3 <br>Accept our offer and move in</p>
            <p class="text">You’re all set!</p>
        </div>
    </div>
    <div class="center">
		<a href="online-questionnaire/?utm_source=landing-page&utm_medium=intern-housing" class="button2 red" target="_blank" rel="nofollow noopener noreferer">Apply now</a>
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
		<h2 class="h1 ">Live at Outpost</h2>
		<p>We know interns can’t afford big city rents, but that’s where you find opportunities to work, meet people from all over the world and experience new cultures. Our shared housing model provides affordable intern housing where you can have a private or shared bedroom with common areas such as kitchens and living rooms. Furniture, kitchen supplies, utilities and weekly cleanings are included, so you can focus on work and life.</p>
		<p><strong>If you’re an intern and looking for new adventures and cheap accommodations in New York City or Jersey City, apply for membership with Outpost today.</strong></p>
	</div>
	<div class="fx gall w">
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/intern-housing/intern-housing-3.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/intern-housing/intern-housing-3.jpg" title="Shared Living Spaces for Interns in the Outpost Community (Image-7), outpost-club.com" alt="Shared Living Spaces for Interns in the Outpost Community  (Image-7)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/intern-housing/intern-housing-6.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/intern-housing/intern-housing-6.jpg" title="Shared Living Spaces for Interns in the Outpost Community (Image-8), outpost-club.com" alt="Shared Living Spaces for Interns in the Outpost Community  (Image-8)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/intern-housing/intern-housing-4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/intern-housing/intern-housing-4.jpg" title="Shared Living Spaces for Interns in the Outpost Community (Image-9), outpost-club.com" alt="Shared Living Spaces for Interns in the Outpost Community  (Image-9)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/intern-housing/intern-housing-5.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/intern-housing/intern-housing-5.jpg" title="Shared Living Spaces for Interns in the Outpost Community (Image-10), outpost-club.com" alt="Shared Living Spaces for Interns in the Outpost Community  (Image-10)" ></a>
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
