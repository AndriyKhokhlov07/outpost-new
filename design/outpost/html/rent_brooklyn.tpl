{$canonical="/{$page->url}" scope=parent}

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
			<img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/brooklyn_house.jpg" title="Affordable Rooms for Rent in Brooklyn (Image-1), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-1)"  >
		</div>
		<div class="right_bl fx v vc">
			<div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/brooklyn-bridge.svg" title="Affordable Rooms for Rent in Brooklyn (Image-2), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-2)" ></div>
			<p>Rental prices have increased dramatically as people have sought residence in Brooklyn, a unique part of New York City that’s its own world of vibrancy and culture. At Outpost Club, we have fully furnished Brooklyn rooms for rent that are cheap compared to typical rates. Our apartments are fully renovated. Plus, we take care of setting up your utilities, including electric, gas and water, as well as your WiFi and security — that way,you don’t have to worry about opening accounts while you’re here temporarily, trying to get established or building your knowledge and expertise as an intern or student.</p>
			<img src="/design/{$settings->theme|escape}/images/landing/right-arrow.svg" title="Affordable Rooms for Rent in Brooklyn (Image-3), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-3)"  >
		</div>
	</div>
</div>
<div class="main_width">
	<div class="second_block fx w">
		<div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/buildings.svg" title="Affordable Rooms for Rent in Brooklyn (Image-4), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-4)"  ></div>
		<div class="text">
			<img src="/design/{$settings->theme|escape}/images/landing/logo.svg" title="Affordable Rooms for Rent in Brooklyn (Image-5), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-5)"  >
			<p>We offer a unique opportunity to focus on your work and get established in a friendly community. Our private bedrooms in coliving houses give way to common areas where you can mingle with our other members. During your stay, we also do regular cleaning and maintenance, giving you more time to recuperate from a hard day’s work, socialize and enjoy the multitude of amenities your neighborhood has to offer.</p>
		</div>
	</div>
</div>

<div class="main_width">
	<div class="advantages">
		<h4 class="h1 center">We have single rooms starting at $1180 and limited shared rooms starting at $790</h4>
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
				<img src="/design/{$settings->theme|escape}/images/landing/invoice.svg" alt="Utilities">
				<p class="title">Utilities</p>
				<p class="text">You`ll never have to "pay the bills" again. This includes gas, water, electric and WiFi</p>
			</div>
			<div class="item">
				<img src="/design/{$settings->theme|escape}/images/landing/brush.svg" alt="Cleaning and maintenance">
				<p class="title">Cleaning and maintenance</p>
				<p class="text">We help you keep common spaces nice and tidy for everyone who shares them</p>
			</div>		
		</div>*}
		{include file='bx/adv_block.tpl'} 
		<div class="center">
			<a href="online-questionnaire/?utm_source=landing-page&utm_medium=rooms-for-rent-in-brooklyn" class="button2 red" target="_blank" rel="nofollow noopener noreferer">Apply now</a>
		</div>
	</div>
		<hr class="hr m0">
</div>

<div class="main_width txt">
	<h2 class="h1 center">Rooms in Bushwick</h2>
	<p>Situated in the northern part of Brooklyn, Bushwick is served by several major subway lines. It incorporates a large bus and subway hub and is also served by the Long Island Rail Road. It’s convenient to get to Manhattan forwork, a day out shopping, or an evening enjoying the theater, but you’ll never run out of things to do in Bushwick, either.</p>
	<p>Bushwick has a long history; it was founded by the Dutch in the 17th century. Once an independent town, it is an integral part of the city. (In fact, the geographic center of New York City is located on Stockholm Street). A revitalization has drawn younger professionals to the neighborhood seeking more affordable housing than other nearby areas. Art studios, galleries, music venues and other cultural amenities dot the landscape.</p> 
</div>	

<div class="main_width ">
	<div class="fx ch3 w">
		
        <div class="room center">
            <a class="img " href="the-knickerbocker-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-23.jpg" title="Affordable Rooms for Rent in Brooklyn (Image-6), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-6)" >
            </a>
            <a class="h3" href="the-knickerbocker-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house" target="_blank" rel="nofollow noopener noreferer">The Knickerbocker House</a>
        </div>
         <div class="room center">
            <a class="img " href="the-gates-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-60.jpg" title="Affordable Rooms for Rent in Brooklyn (Image-7), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-7)" >
            </a>
            <a class="h3" href="the-gates-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn" target="_blank" rel="nofollow noopener noreferer">The Gates House</a>  
        </div>
		<div class="room center">
            <a class="img" href="the-hancock-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn" target="_blank" rel="nofollow noopener noreferer">
            <img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-61.jpg" title="Affordable Rooms for Rent in Brooklyn (Image-8), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-8)" >
            </a>
            <a class="h3" href="the-hancock-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn" target="_blank" rel="nofollow noopener noreferer">The Hancock House</a>
        </div>          
</div>
    <div class="center">
        <a href="online-questionnaire/?utm_source=landing-page&utm_medium=rooms-for-rent-in-brooklyn" class="button2 red" target="_blank" rel="nofollow noopener noreferer">Apply now</a>
    </div>
    	<hr class="hr m0">
 </div>

<div class="main_width txt">
    <h2 class="h1 center">Rooms in Bed-Stuy</h2>
    <p>The Bedford-Stuyvesant neighborhood is located in the north-central part of Brooklyn (the name combines those of communities on the same land in the 17th and 18th centuries). Colloquially known as Bed-Stuy, it is bordered by major thoroughfares Flushing Avenue, Broadway and Atlantic Avenue. Fulton Street is the major shopping corridor in the area. Victorian architecture is prevalent, as are historic brownstones built in the late-19th century.</p>
    <p>Scenic architecture, diversity, a rich history and numerous public transportation options, including underground and elevated New York City Subway lines, the Long Island Rail Road and several bus routes, help define Bed-Stuy. Numerous celebrities have roots here, and the neighborhood has been represented in music, TV and in movies. To live in Bed-Stuy means possibly residing in a large historic home. In fact, one of our largest houses is here and includes spacious common areas and a backyard.</p> 
</div>  

<div class="main_width ">
    <div class="fx ch3 w">  
        <div class="room center">
            <a class="img " href="stuyvesant-heights-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-51.jpg" title="Affordable Rooms for Rent in Brooklyn (Image-9), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-9)" >
            </a>
            <a class="h3" href="the-newkirk-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house" target="_blank" rel="nofollow noopener noreferer">The Stuyvesant Heights House</a>
        </div>
         <div class="room center">
            <a class="img " href="the-lafayette-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/the-lafayette-house-landing.jpg" title="Affordable Rooms for Rent in Brooklyn (Image-10), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-10)" >
            </a>
            <a class="h3" href="the-lafayette-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house" target="_blank" rel="nofollow noopener noreferer">The Lafayette House</a>  
        </div>
         <div class="room center">
            <a class="img " href="the-bedford-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/the-bedford-house-bedroom-landing.jpg" title="Affordable Rooms for Rent in Brooklyn (Image-11), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-11)" >
            </a>
            <a class="h3" href="the-bedford-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house" target="_blank" rel="nofollow noopener noreferer">The Bedford House</a>  
        </div>
</div>
    <div class="center">
        <a href="online-questionnaire/?utm_source=landing-page&utm_medium=rooms-for-rent-in-brooklyn" class="button2 red" target="_blank" rel="nofollow noopener noreferer">Apply now</a>
    </div>
        <hr class="hr m0">
</div>
<div class="main_width txt">
	<h2 class="h1 center">Rooms in Williamsburg</h2>
	<p>Purchased by the Dutch West India Company in 1638, Williamsburg became a separate city in the mid-1800s, before ultimately becoming a part of New York City. Today, it has a vibrant nightlife and arts scene. Living here means it’s difficult not to appreciate the visual arts, live music, theater and cinema spaces that are based here. Affordable rooms from Outpost are available so you can be close to Manhattan and mingle with the many artists who call the area home.</p>
	<p>As in the rest of New York,  you will meet people from all walks of life and from all over the world. Outpost apartments provide the advantage of having the chance to meet new people all the time. Affordable living also means you can get out and experience great music, theater, cinema and the various festivals held throughout the year.</p> 
</div>	

<div class="main_width ">
	<div class="fx ch3 w c">
         <div class="room center">
            <a class="img " href="montrose-williamsburg-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-42.jpg" title="Affordable Rooms for Rent in Brooklyn (Image-12), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-12)" >
            </a>
            <a class="h3" href="montrose-williamsburg-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house" target="_blank" rel="nofollow noopener noreferer">The Montrose Williamsburg House</a>  
        </div>
        <div class="room center">
            <a class="img " href="the-williamsburg-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-70.jpg" title="Affordable Rooms for Rent in Brooklyn (Image-13), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-13)" >
            </a>
            <a class="h3" href="the-williamsburg-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn" target="_blank" rel="nofollow noopener noreferer">The Williamsburg House</a>  
        </div>
         <!-- <div class="room center">
            <a class="img " href="the-metropolitan-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house">
                <img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-41.jpg" alt="The Metropolitan House">
            </a>
            <a class="h3" href="the-metropolitan-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house">The Metropolitan House</a>  
        </div> -->
</div>
    <div class="center">
       <a href="online-questionnaire/?utm_source=landing-page&utm_medium=rooms-for-rent-in-brooklyn" class="button2 red" target="_blank" rel="nofollow noopener noreferer">Apply now</a>
    </div>
    	<hr class="hr m0">
 </div>


<div class="main_width txt">
	<h2 class="h1 center">Rooms in Flatbush</h2>
	<p>Flatbush is a large neighborhood in an area founded by Dutch colonists in 1651. It was one of several towns incorporated into the City of Brooklyn before it became part of New York City. In addition to being near major subway and bus lines, living here affords the opportunity to appreciate a walk in Prospect Park or a visit to the Brooklyn Botanic Garden. Flatbush Avenue, a major thoroughfare that runs across the borough, is where you’ll find abundant varieties of food.</p>
	<p>There are plenty of places to shop in Flatbush, which is dotted with a wealth ofmom and pop shops. More upscale, trendy stores have appeared around Church Avenue, while popular restaurants and bars have emerged on and around Cortelyou Road. Flatbush is an exciting place to live despite being a little longer commute to Manhattan.</p> 
</div>	

<div class="main_width ">
	<div class="fx ch3 w c">
		
        <div class="room center">
            <a class="img " href="the-newkirk-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-31.jpg" title="Affordable Rooms for Rent in Brooklyn (Image-14), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-14)" >
            </a>
            <a class="h3" href="the-newkirk-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house" target="_blank" rel="nofollow noopener noreferer">The Newkirk House</a>
        </div>
        <!--  <div class="room center">
            <a class="img " href="the-linden-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house">
                <img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-33.jpg" alt="The Linden House">
            </a>
            <a class="h3" href="the-linden-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house">The Linden House</a>  
        </div>

		<div class="room center">
            <a class="img" href="the-flatbush-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house">
            <img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-32.jpg" alt="The Flatbush House">
            </a>
            <a class="h3" href="the-flatbush-house/?utm_source=landing&utm_campaign=rooms-for-rent-in-brooklyn&utm_content=explore-house">The Flatbush House</a>
        </div>   -->
</div>
    <div class="center">
       <a href="online-questionnaire/?utm_source=landing-page&utm_medium=rooms-for-rent-in-brooklyn" class="button2 red" target="_blank" rel="nofollow noopener noreferer">Apply now</a>
    </div>
    	<hr class="hr m0">
 </div>



<div class="main_width txt">
	<h2 class="h1 center">Rooms for Couples and Families</h2>
	<p>Our coliving model provides shared spaces that are affordable and comfortable. We can accommodate couples and families looking for a community-centric living space. All the essentials are included, including Nest security systems.</p>
	<p>We can offer couples private rooms in our coliving houses, or you can rent out an entire apartment if you prefer more private space.</p> 
</div>	



<div class="w100 commun img">
	<img src="/design/{$settings->theme|escape}/images/landing/сommunity.jpg" title="Affordable Rooms for Rent in Brooklyn (Image-15), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-15)" >
	<div class="white_bl">
		<p class="text"><strong>If you’re ready to get started, apply online today and Outpost Club will set you up at one of our Brooklyn rooms for rent.</strong></p>
		<p class="text">Contact us to learn more about our private and shared rooms, coliving spaces and hot deals. We look forward to hearing from you!</p>
	</div>
</div>

<div class="main_width steps txt">
    <h4 class="h1 center">How to Reserve Your Spot</h4>
    <div class="fx ch3">
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/checklist.svg" title="Affordable Rooms for Rent in Brooklyn (Image-16), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-16)" >
            <p class="title">Step 1 <br>Fill out a short form</p>
            <p class="text">Fill out this form and a member of our team will contact you about pricing and availability.</p>

        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/smartphone.svg" title="Affordable Rooms for Rent in Brooklyn (Image-17), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-17)" >
            <p class="title">Step 2 <br>Get an offer within a day</p>
            <p class="text">Our team will give you a few different options based on your budget and our availability. </p>
        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/contract.svg" title="Affordable Rooms for Rent in Brooklyn (Image-18), outpost-club.com" alt="Affordable Rooms for Rent in Brooklyn (Image-18)" >
            <p class="title">Step 3 <br>Accept our offer and move in</p>
            <p class="text">You’re all set!</p>
        </div>
    </div>
    <div class="center">
		<a href="online-questionnaire/?utm_source=landing-page&utm_medium=rooms-for-rent-in-brooklyn" class="button2 red" target="_blank" rel="nofollow noopener noreferer">Apply now</a>
	</div>
	<hr class="hr m0">
</div> 	

<!-- 
</div> -->

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
