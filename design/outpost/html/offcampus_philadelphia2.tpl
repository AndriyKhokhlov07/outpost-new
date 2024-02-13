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
			<img src="/design/{$settings->theme|escape}/images/landing/offcampus/Mason-Units-11.jpg" title="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-1), outpost-club.com" alt="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-1)" >
		</div>
		<div class="right_bl fx v vc">
			<p>College can be stressful enough without having to worry about finding student housing in Philadelphia, whether you’re looking for an apartment for the summer or for the entire time you’re in school.</p>
			{*<img src="/design/{$settings->theme|escape}/images/landing/right-arrow.svg" alt="Educational Pods NYC">*}
		</div>
	</div>
</div>
<div class="main_width">
	<div class="second_block fx w">
		<div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/buildings.svg" alt="Look no further than Outpost Club"></div>
		<div class="text">
			<img src="/design/{$settings->theme|escape}/images/landing/logo.svg" title="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-2), outpost-club.com" alt="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-2)" >
			<p>Just fill out a short form and a member of our team will reach out within a day to walk you through our simple application process. Once we’ve sent you an offer, you can either pay your deposit or sign up with Qira for more flexibility, and we’ll have your space ready for the new semester! You can apply alone or sign up for a full apartment with a group of friends.</p> 
		</div>
	</div>
</div>

<div class="w100">
	<div class="main_width txt center">
		<h2 class="h1 center">Off-Campus apartments for students In Philadelphia</h2>
		<p>Here at Outpost, we know that when you’re a student in the City of Brotherly Love, you want to spend your free time experiencing all that Philadelphia has to offer, not dealing with tricky situations with your roommates. That’s why we make it as easy as possible to find high-quality housing that will become a real home for as long as you’re here.</p> 
		<p>The Mason on Chestnut is conveniently located within walking distance of both the University of Pennsylvania and Drexel University, providing the perfect opportunity to get to campus quickly without having to live in campus dorms. </p>
		<p>Living at the Mason allows you to take advantage of quality common spaces during your stay, including exercise facilities like a yoga room, hardwood indoor basketball court and 24-hour fitness areas; work areas like study rooms and conference rooms; a variety of common lounges; and special extras like a 400-seat private movie theater and a recreational room with pool tables and ping pong.</p>
		<p>Our dedicated community manager will make sure you’re happy with your stay, from move-in to move-out and every moment in-between.</p> 
	</div>
	<div class="fx gall w">	
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/offcampus/offcampus-philly-3.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/offcampus/offcampus-philly-3.jpg" title="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-3), outpost-club.com" alt="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-3)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/offcampus/offcampus-philly-6.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/offcampus/offcampus-philly-6.jpg" title="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-4), outpost-club.com" alt="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-4)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/offcampus/offcampus-philly-4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/offcampus/offcampus-philly-4.jpg" title="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-5), outpost-club.com" alt="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-5)" ></a>
		<a class="img" href="/design/{$settings->theme|escape}/images/landing/offcampus/offcampus-philly-5.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/offcampus/offcampus-philly-5.jpg" title="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-6), outpost-club.com" alt="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-6)" ></a>
	</div>
</div>
<div class="main_width">
	<div class="advantages">
		<h4 class="h1 center">We have pod rooms starting at $750</h4>
		<h5 class="h5">What's included with your bedroom in our all-inclusive prices:</h5>
		{include file='bx/adv_block.tpl'} 
		<div class="center">
			<a href="mason-chestnut-appliaction/?utm_source=landing-page&utm_medium=off-campus-philadelphia" class="button2 red">Apply now</a>
		</div>
	</div>
</div>


<div class="w100">
	<div class="main_width txt center">
		<h2 class="h1 ">Convenient off-campus college, internship and summer housing</h2>
		<p>We know how frustrating it can be to find quality student apartments in Philadelphia, and that’s why we’re here to help. We make it easy to apply for housing, and we’ll make you an offer within a day of receiving your application.</p>
		<p>Just submit a short application and one of our team members will contact you to set up a time to talk — and once that’s all done we’ll be able to make you an offer on our student housing in Philadelphia. You’ll have your housing taken care of in no time!</p>
		<p>*Outpost Club provides housing for students in addition to non-students, and Outpost Club does not guarantee that your roommates will be students. If you would like to live in an apartment with only students, please notify Outpost Club of the other students you would like to live with and we’d be happy to rent your group a full apartment.</p>
	</div>
</div>
	<div class="fx ch3 w c">
         <div class="room center">
            <a class="img " href="the-mason" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/landing/offcampus/offcampus-philly-2.jpg" title="The Mason on Chestnut House (Image-12), outpost-club.com" alt="Off-Campus Student Housing In Philadelphia (Image-12)" >
            </a>
            <a class="h3" href="/the-mason" target="_blank" rel="nofollow noopener noreferer">The Mason on Chestnut House</a>  
        </div>
        <div class="room center">
            <a class="img " href="the-temple-1-house" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/landing/offcampus/offcampus-philly-1.jpg" title="Off-Campus Student Housing In Philadelphia (Image-13), outpost-club.com" alt="Off-Campus Student Housing In Philadelphia (Image-13)" >
            </a>
            <a class="h3" href="the-temple-1-house" target="_blank" rel="nofollow noopener noreferer">The Temple 1 House</a>  
        </div>
    </div>

<div class="main_width steps txt">
    <h4 class="h1 center">Sign Up at Outpost Today</h4>
    <div class="fx ch3">
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/checklist.svg" title="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-11), outpost-club.com" alt="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-11)" >
            <p class="title">Step 1 <br>Fill out a short form</p>
            <p class="text">Fill out this form and a member of our team will contact you about pricing and availability.</p>

        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/smartphone.svg" title="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-12), outpost-club.com" alt="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-12)" >
            <p class="title">Step 2 <br> Get an offer within a day</p>
            <p class="text">Our team will give you a few different options based on your budget and our availability. </p>
        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/contract.svg" title="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-13), outpost-club.com" alt="Off-Campus Student Housing In Philadelphia: Apply Today! (Image-13)" >
            <p class="title">Step 3 <br> Accept our offer and move in</p>
            <p class="text">You’re all set!</p>
        </div>
    </div>
    <p class="center">We’re excited to welcome you to one of our affordable apartments in Philadelphia.</p>
    <div class="center">
		<a href="mason-chestnut-appliaction/?utm_source=landing-page&utm_medium=off-campus-philadelphia" class="button2 red">Apply now</a>
	</div>
	<hr class="hr m0">
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
        <a class="item" target="_blank" rel="nofollow noopener noreferer" href="/blog">
            <div><p class="title">Our Blog</p>
            <p class="p">Stay Up-To-Date On Outpost's Activities!</p></div>
        </a>

    </div>
</div>

{get_posts type=2 var=s_reviews limit=16}
{include file='bx/reviews_slider.tpl'}

{$posts_slider_tag_id=27}
{include file='bx/blog_list.tpl'}



</div>
