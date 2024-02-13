{$canonical="/{$page->url}" scope=parent}

<div class="land bedly">
<div class="main_width center ">
    <p class="big_p">The Bedly and Outpost platforms are members-only housing networks that give members access to hundreds of apartments, unique opportunities to move seamlessly between different cities and neighborhoods, community events and exclusive perks.</p>
</div>

<div class="main_width">
	<div class="second_block fx w">
		<div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/buildings.svg" alt="Look no further than Outpost Club"></div>
		<div class="text">
			<img src="/design/{$settings->theme|escape}/images/landing/logo.svg" title="The Outpost Club Experience - Unlike any apartment you’ve ever moved to (Image-1), outpost-club.com" alt="The Outpost Club Experience - Unlike any apartment you’ve ever moved to (Image-1)" >
			<p>Founded in 2016 by a team who knows what it’s like to move.</p> 
            <p>Our mission is to build a tight-knit community with shared passions and visions, thereby making the world we live in a better place.</p>
            <p>We build connections between people by offering members access to a network of successful creatives, entrepreneurs, investors, executives and experts to help them grow their businesses and professional careers.</p>
		</div>
	</div>
</div>

<div class="main_width">
    <h4 class="h1 center">Our Locations</h4>
    <p class="big_p center">Our shared apartments are located in some of the most desired cities.</p>
    <br>
    <div class="fx ch2 w">
        {*<div class="room center">
            <a class="img" href="san-francisco">
                <img src="/design/{$settings->theme|escape}/images/landing/co-liv/lakeview-bedroom-2.jpg" alt="San Francisco coliving">
            </a>
            <a class="h2" href="san-francisco">San Francisco</a>
        </div>*}
        <div class="room center">
            <a class="img" href="philadelpia">
                <img src="/design/{$settings->theme|escape}/images/landing/the-mason-on-chestnut-philadelphia.jpg" title="The Outpost Club Experience - Unlike any apartment you’ve ever moved to (Image-2), outpost-club.com" alt="The Outpost Club Experience - Unlike any apartment you’ve ever moved to (Image-2)" >
            </a>
            <a class="h2" href="philadelpia">Philadelpia</a>
        </div>
        <div class="room center">
            <a class="img " href="new-york">
                <img src="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-concept-manhatten.jpg" title="The Outpost Club Experience - Unlike any apartment you’ve ever moved to (Image-3), outpost-club.com" alt="The Outpost Club Experience - Unlike any apartment you’ve ever moved to (Image-3)" >
            </a>
            <a class="h2" href="new-york">New York</a>
        </div>
    </div>
    <div class="center">
        <a href="online-questionnaire/?utm_source=landing-page&utm_medium=bedly" class="button2 red">Apply now</a>
    </div>
</div>

<div class="main_width">
    <h4 class="h1 center">The Outpost Club Experience - Unlike any apartment you’ve ever moved to</h4>
</div>
<div class="w100 faq bg_faq">
    <div class="item main_width">
        <ul>
            <li>
                <input class="hide" type="checkbox" id="faq_1">
                <label class="h5" for="faq_1">Flat Monthly Fee</label>
                <div class="text">While living with us, you won’t have to worry about a thing. You will pay a flat monthly fee and everything comes included. No utility bills, no unexpected maintenance costs.</div>
            </li>
             <li>
                <input class="hide" type="checkbox" id="faq_2">
                <label class="h5" for="faq_2">Full-Month Security Deposit Option</label>
                <div class="text">Before you move-in, we charge one full-month security deposit, which you will get back in full after your stay with us ends. However, if you would like to waive the security deposit, you may do so by using our partners at Qira! They’ll pay your security deposit for a small monthly fee ranging from $10-$20.</div>
            </li>
             <li>
                <input class="hide" type="checkbox" id="faq_3">
                <label class="h5" for="faq_3">House Leaders</label>
                <div class="text">All of our locations have a House Leader. If you have any questions during your stay with us, they’ll be there for you.</div>
            </li>
            
             <li>
                <input class="hide" type="checkbox" id="faq_5">
                <label class="h5" for="faq_5">Pricing</label>
                <div class="text">We have single rooms starting at $1350 and shared rooms starting at $790<div>
            </li>
             <li>
                <input class="hide" type="checkbox" id="faq_4">
                <label class="h5" for="faq_4">Flexible Contract</label>
                <div class="text">You can choose to pay month-to-month and extend your stay along the way, or choose to let us know up front how long you're staying and get better prices.</div>
            </li>
        </ul>
    </div>
    <div></div>
</div>

{get_posts type=2 var=s_reviews limit=16}
{include file='bx/reviews_slider.tpl'}

{$posts_slider_tag_id=27}
{include file='bx/blog_list.tpl'}

</div>


