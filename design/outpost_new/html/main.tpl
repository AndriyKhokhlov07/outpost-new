{* Главная страница *}

{* Для того чтобы обернуть центральный блок в шаблон, отличный от index.tpl *}
{* Укажите нужный шаблон строкой ниже. Это работает и для других модулей *}
{$wrapper = 'index.tpl' scope=parent}

{* Канонический адрес страницы *}
{$canonical="" scope=parent}

{$this_page='home' scope=parent}
{* {$apply_form="1" scope=parent} *}

{*
<div class="full_screen_banner">
    <div class="close_button"></div>
    <div class="banner_text">
        <img src="https://outpost-club.com/files/pages/nurse-landing.1600x1600.jpg" alt="Travel Nurse Housing">
        <div class="fx vc w">
            <p>If you’re a traveling nurse or other healthcare worker, we’ve set aside dedicated housing for special prices in a furnished house, with limited additional services to keep prices as low as possible.</p>
            <a href="https://bit.ly/2JlMST5" class="button1">More</a>
        </div>
    </div>
</div>
*}

{* Google Schema Home Page *}
{literal}
<script type="application/ld+json">
{
"@context": "https://schema.org",
"@type": "RealEstateAgent",
"image": [
    "https://outpost-club.com/files/uploads/about-outpost.1x1.jpg",
    "https://outpost-club.com/files/uploads/about-outpost.4x3.jpg",
    "https://outpost-club.com/files/uploads/about-outpost.16x9.jpg"
],
"@id":"https://outpost-club.com",
"name": "Outpost Club",
"url": "https://outpost-club.com",
"logo": "https://outpost-club.com/files/uploads/logo.jpg",
"email": "info@outpost-club.com",
"telephone": "+1 (833) 707 6611",
"address": {
    "@type": "PostalAddress",
    "streetAddress": "PO BOX 780556",
    "addressLocality": "New York",
    "addressRegion": "NY",
    "postalCode": "11378",
    "addressCountry": "USA"
},
"geo": {
    "@type": "GeoCoordinates",
    "latitude": 40.722732,
    "longitude": -73.907738
},
"sameAs": [
    "http://www.facebook.com/outpostclubNY",
    "https://www.instagram.com/outpostcoliving/?utm_source=outpost",
    "https://twitter.com/outpost_club"
],
{/literal}{if $info->houses->min_price && $info->houses->max_price}"priceRange": "${$info->houses->min_price} - ${$info->houses->max_price}",{else}"priceRange": "$790 - $3800",{/if}{literal}

"openingHoursSpecification": [{
    "@type": "OpeningHoursSpecification",
    "dayOfWeek": [
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday"
    ],
    "opens": "09:00 AM",
    "closes": "05:00 PM"
}],
"department":[
    {/literal}
    {$n=0}
    {foreach $houses as $h}
    {if $h->is_nebo_data}
    {$n=$n+1}
    {literal}
    {/literal}{if $n>1},{/if}{literal}{
        "@type": "RealEstateBusiness",
        "image": [
            "{/literal}{$h->image|resize:'pages':700:700}{literal}"
        ],
        "name": "Outpost Club", 
        "email": "info@outpost-club.com",
        "telephone": "+1 (833) 707 6611",
        "address": {
            "@type": "PostalAddress",
            "streetAddress": "{/literal}{$h->street_address}{literal}",
            "addressLocality": "{/literal}{$h->city}{literal}",
            "addressRegion": "{/literal}{$h->region}{literal}",
            "postalCode": "{/literal}{$h->postal}{literal}",
            "addressCountry": "USA"
        },
        "geo": {
            "@type": "GeoCoordinates",
            "latitude": "{/literal}{$h->latitude}{literal}",
            "longitude": "{/literal}{$h->longitude}{literal}"
        },
        {/literal}{if $h->min_price && $h->max_price}"priceRange": "${$h->min_price} - ${$h->max_price}",
        {/if}{literal}
        "openingHoursSpecification": [{
            "@type": "OpeningHoursSpecification",
            "dayOfWeek": [
                "Monday",
                "Tuesday",
                "Wednesday",
                "Thursday",
                "Friday"
            ],
            "opens": "09:00 AM",
            "closes": "05:00 PM"
        }]
    }
    {/literal}
    {/if}
    {/foreach}
    {literal}
]
}
</script>
{/literal}
{* Google Schema Home Page End *}


<div class="main_width">

    <div class="advantages">
        <h2 class="h3 center">Find Your New Apartment With Outpost Club</h2>
        <div class="top_text txt center">
            <p>Finding a place to live should be as easy as buying a cup of coffee, but it often leaves us feeling like the coffee was spilled in our laps. That’s why we’ve built a process to make it super easy to find the right fit for you, whether you’re ready to lease your own apartment long-term, want a private bedroom in a coliving community, or anything.</p>
            <p>We’ve thoughtfully designed interesting and convenient houses at affordable prices, so you can spend more time living your life and less time stressing about where you’ll lay your head at night.</p>
        </div>
    </div>
    <hr class="hr m0">
</div>

<div class="main_width">
    <div class="advantages">
        <h2 class="h3 center">Explore Coliving Houses | Fully Furnished</h2>
        <div class="top_text txt center">
            {*<p class="h5">Check out our coliving houses in Manhattan, Brooklyn, San Francisco and Jersey City.</p>
            <p class="h5">You can apply and move into any available house as early as today with commitments between 1 and 12 months! Below you can find more information about coliving and each of our unique houses.</p> 
            <p class="h5">Feel free to reach out if you have questions!</p>
            *}
            <p><a style= "text-decoration: underline; text-decoration-color: red;" href="https://outpost-club.com/coliving">Coliving</a> isn’t just about having roommates or sharing a kitchen, and we want your time in one of our coliving houses to be more than just a place to live and work. We’ve built a coliving community that will give you the chance to build relationships with people of many different cultures, backgrounds and areas of expertise. Many of our former coliving members are still in touch with roommates around the world thanks to the relationships they built at Outpost Club.</p>
        </div>
    </div>
</div>

<!-- <div class="main_width">
    <div class="advantages">
        <p class="h3 center">Explore Coliving Houses | Fully Furnished</p>
        <div class="top_text txt center">
            <p>Coliving isn’t just about having roommates or sharing a kitchen, and we want your time in one of our coliving houses to be more than just a place to live and work. We’ve built a coliving community that will give you the chance to build relationships with people of many different cultures, backgrounds and areas of expertise. Many of our former coliving members are still in touch with roommates around the world thanks to the relationships they built at Outpost Club.</p>
            <a href="https://outpost-club.com/new-york">Explore Coliving Houses</a>
        </div>
    </div>
</div>

<div class="main_width">
    <div class="advantages">
        <p class="h3 center">Explore Full Apartments | Unfurnished</p>
        <div class="top_text txt center">
            <p>Anyone who’s looked at an apartment in New York City knows that no matter how well-prepared you are, you’ll probably end up sifting through endless Craigslist scams and Facebook groups for apartments that are gone by the time you apply — but not with Outpost Club. See an apartment you like? Just give us a call to set up a showing and we’ll take it from there. Want us to find roommates for you? Let us know and we’ll match you with other apartment seekers.</p>
            <a href="https://outpost-club.com/full-apartments">Explore Full Apartments</a>
        </div>
    </div>
</div>

<div class="main_width">
    <div class="advantages">
        <p class="h3 center">Explore Short-Term Solutions</p>
        <div class="top_text txt center">
            <p>We know that apartments can be difficult to find if you’re only looking to rent for a few months, and staying in a traditional hotel for months while you travel for work or school can get old fast. Outpost Club’s short-term solution is designed to make you feel right at home, whether you’re here for a few days or a few months.</p>
            <a href="https://outpost-club.com/cassa-studios">Explore Short-Term Stays</a>
        </div> -->
         

{* 
and <a class="green" href="../jersey-city" target="_blank">Jersey City</a></strong>
*}
 

        {*
        <div class="form top_form">
        	<div class="form_acnhor" id="apply"></div>
			<script src="//js.hsforms.net/forms/v2.js"></script>
			<script>
			  hbspt.forms.create({
				portalId: "4068949",
				formId: "f7fcf175-50eb-4637-b9f8-996aacd3bd71"
			});
			</script>
        </div>
        <div class="center mob">
        	<a href="{if $apply_form}#apply{else}/join-us{/if}" class="button1 black {if $apply_form}anchor{/if}">Apply Now</a>
        </div>
        *}


    </div>
</div>

{*
<div class="main_width">
	<div class="advantages">
		<h5 class="h3 center">What's included with your bedroom in our all-inclusive prices:</h5>
		{include file='bx/adv_block.tpl'} 
	</div>
</div>
*}

<div class="main_width rooms" id="cities">
    {*
		{foreach $pages as $p}
            {if $p->url=="new-york"}
                <div class="w100">
                    <a class="img op_bottom" href="{$p->url}">
                        {if $p->coming_soon==1}
                            <div class="coming_soon">Coming soon</div>
                        {elseif $p->new==1}
                            <div class="new">New</div>
                        {/if}
                        {if $is_mobile == 1}
                        <img class="lazy" data-src="{$p->image|resize:'pages':400:400}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="{$p->name}">
                        {else}
                        <img class="lazy" data-src="{$p->image|resize:'pages':1200:1200}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="{$p->name}">
                        {/if}
                    </a>
                    <a class="h2" href="{$p->url}">{$p->name|escape}</a>
                    <br>
                    <a href="{$p->url}" class="button2">Explore our houses</a>
                </div>
            {/if}
        {/foreach}
    <div class="fx w ch2 cities" >
    	
        {foreach $pages as $p}
            {if $p->menu_id==5 && $p->url!="new-york"}
                <div class="room">
                    <a class="img " href="{$p->url}">
                        {if $p->coming_soon==1}
                            <div class="coming_soon">Coming soon</div>
                        {elseif $p->new==1}
                            <div class="new">New</div>
                        {/if}
                        {if $is_mobile == 1}
                        <img class="lazy" data-src="{$p->image|resize:'pages':400:400}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="{$p->name}">
                        {else}
                        <img class="lazy" data-src="{$p->image|resize:'pages':700:700}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="{$p->name}">
                        {/if}
                    </a>
                    <a class="h2" href="{$p->url}">{$p->name|escape}</a>
                    <br>
                    <a href="{$p->url}" class="button2">Explore our houses</a>
                </div>
            {/if}
        {/foreach}
    </div>
    <hr class="hr">
    *}
    <div class="anchor_block" id="new_houses"></div>

    <div class="advantages">
        <!-- <h5 class="h3 center">Our Latest Additions</h5> -->
    </div>
    <div class="fx w ch2">
    	{get_pages parent_id=253 var=pages_ny limit=4 new=1}
        {foreach $pages_ny as $p}
                <div class="room">
                    <a class="img" href="{$p->url}">
                        {if $p->new==1}
                        <div class="new">New</div>
                        {/if}
                        {if $is_mobile == 1}
                        <img class="lazy" data-src="{$p->image|resize:'pages':400:400}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Easy move-in. Easy living. Find your next home. (Image-1), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-1)" >
                        {else}
                        <img class="lazy" data-src="{$p->image|resize:'pages':700:700}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Easy move-in. Easy living. Find your next home. (Image-2), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-2)" >
                        {/if}

                    </a>
                    <a class="h2" href="{$p->url}">{$p->name|escape}</a>
                    <div class="annotation">
                        {$p->annotation}
                    </div>
                    <a href="{$p->url}" class="button2">Explore the house</a>
                </div>
        {/foreach}
        {*
        {get_pages parent_id=254 var=pages_sf limit=1}
        {foreach $pages_sf as $p}
            <div class="room">
                <a class="img" href="{$p->url}">
                    {if $is_mobile == 1}
                    <img class="lazy" data-src="{$p->image|resize:'pages':400:400}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="{$p->name}">
                    {else}
                    <img class="lazy" data-src="{$p->image|resize:'pages':700:700}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="{$p->name}">
                    {/if}
                </a>
                <a class="h2" href="{$p->url}">{$p->name|escape}</a>
                <div class="annotation">
                    {$p->annotation}
                </div>
                <a href="{$p->url}" class="button2">Explore the house</a>
            </div>
        {/foreach}
        {get_pages parent_id=288 var=pages_jc limit=1}
        {foreach $pages_jc as $p}
                <div class="room">
                    <a class="img" href="{$p->url}">
                        {if $is_mobile == 1}
                        <img class="lazy" data-src="{$p->image|resize:'pages':400:400}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="{$p->name}">
                        {else}
                        <img class="lazy" data-src="{$p->image|resize:'pages':700:700}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="{$p->name}">
                        {/if}
                    </a>
                    <a class="h2" href="{$p->url}">{$p->name|escape}</a>
                    <div class="annotation">
                        {$p->annotation}
                    </div>
                    <a href="{$p->url}" class="button2">Explore the house</a>
                </div>
        {/foreach}
        *}
    </div>

<p class="center">*Pricing is subject to location, room type, length of stay, season and availability*</p>

    <div class="top_text txt center">
            <a href="/new-york" class="button2 red">Explore Coliving Houses</a>
        </div>
    <hr class="hr m0">
    
</div>

<div class="main_width">
    <div class="w100 city_banner">
        <div class="room">
            <a class="img op_bottom pb30" href="/the-williamsburg-house">
                <img class="lazy" alt="Easy move-in. Easy living.
                Find your next home. (Image-3)" title="Easy move-in. Easy living.
                Find your next home. (Image-3), outpost-club.com" data-src="/design/{$settings->theme|escape}/images/will_apt.webp" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="The Williamsburg House powered by Outpost">
                <div class="sticker featured">Featured</div>
            </a>
            <a href="/the-williamsburg-house" class="h2">The Williamsburg House</a>
            <div class="annotation">
                <p>The Williamsburg House, Brooklyn</p>
            </div>
            <div class="bottom_bx fx sb vc">
                <div class="button_bx">
                    <a href="/the-williamsburg-house" class="button2 red_border">Learn More</a>
                </div>
                <div class="icons_bx fx w">
                    <div class="ic" data-tooltip="Fast, reliable WiFi">
                        <img class="lazy" data-src="design/{$settings->theme|escape}/images/icons/wifi.svg" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="WiFi">
                    </div>
                    <div class="ic" data-tooltip="In-unit laundry">
                        <img class="lazy" data-src="design/{$settings->theme|escape}/images/icons/washingmachine.svg" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="Washing Machine">
                    </div>
                    <div class="ic" data-tooltip="Community events">
                        <img class="lazy" data-src="design/{$settings->theme|escape}/images/icons/events.svg" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="Events">
                    </div>

                    <div class="ic w2" data-tooltip="Furnished interiors">
                        <img class="lazy" data-src="design/{$settings->theme|escape}/images/icons/furnished.svg" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="Furnished interiors">
                    </div>
                    <div class="ic w2" data-tooltip="Spacious bedrooms">
                        <img class="lazy" data-src="design/{$settings->theme|escape}/images/icons/bedroom.svg" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="Spacious bedrooms">
                    </div>
                </div>
            </div>

        </div>
    </div>
    <hr class="hr">
</div><!-- Williamsburg -->

{*
<div class="main_width">
    <div class="w100 city_banner">
        <div class="room">
            <a class="img op_bottom pb30" href="/the-temple-1-house">
                <img class="lazy" alt="Easy move-in. Easy living.
                Find your next home. (Image-3)" title="Easy move-in. Easy living.
                Find your next home. (Image-3), outpost-club.com" data-src="/design/{$settings->theme|escape}/images/temple.jpg" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="The Temple 1 House powered by Outpost">
            </a>
            <a href="/the-temple-1-house" class="h2">The Temple 1 House</a>
            <div class="annotation">
                <p>The Temple 1 House, Philadelphia</p>
            </div>
            <a href="/the-temple-1-house" class="button2 red_border">Learn More</a>
        </div>
    </div>
    <hr class="hr">
</div><!-- temple -->
*}

{*
<div class="main_width">
    <div class="advantages">
        <h2 class="h3 center">Explore Short-Term Solutions</h2>
        <div class="top_text txt center">
            <p>We know that apartments can be difficult to find if you’re only looking to rent for a few months, and staying in a traditional hotel for months while you travel for work or school can get old fast. Outpost Club’s short-term solution is designed to make you feel right at home, whether you’re here for a few days or a few months.</p>
        </div>
    </div>
</div>
*}

{*
<div class="main_width">
    <div class="w100 city_banner">
        <!-- <p class="h3 center">Studios and Residences</p> -->
        <div class="room">
            <a class="img op_bottom pb30" href="/cassa-studios">
                <img class="lazy" data-src="/design/{$settings->theme|escape}/images/cassa-for-city-page.jpg" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="The Cassa Studios and Residences powered by Outpost">
            </a>
            <a href="/cassa-studios" class="h2">The Cassa Studios and Residences powered by Outpost</a>
            <div class="annotation">
                <p>Manhattan</p>
            </div>
            <a href="/cassa-studios" class="button2 red_border">Learn More</a>
        </div>
    </div>
    <!-- <hr class="hr"> -->
</div>

 <div class="main_width">
    <div class="w100 city_banner">
        <div class="room">
            <a class="img op_bottom pb30" href="/the-bryant-park-residences">
                <img class="lazy" data-src="/design/{$settings->theme|escape}/images/the-bryant-park.jpg" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="The Bryant Park Residences">
            </a>
            <a href="/the-bryant-park-residences" class="h2">The Bryant Park Residences</a>
            <div class="annotation">
                <p>Manhattan</p>
            </div>
            <a href="/the-bryant-park-residences" class="button2 red_border">Learn More</a>
        </div>
    </div>
</div>

<div class="main_width">
    <div class="w100 city_banner">
        <p class="h3 center">Studios and Residences</p>
        <div class="room">
            <a class="img op_bottom pb30" href="/the-gramercy-park-studios">
                <img class="lazy" alt="Easy move-in. Easy living.
                Find your next home. (Image-3)" title="Easy move-in. Easy living.
                Find your next home. (Image-3), outpost-club.com" data-src="/design/{$settings->theme|escape}/images/Gramercy.jpg" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="The Gramercy Park Studios powered by Outpost">
            </a>
            <a href="/the-gramercy-park-studios" class="h2">The Gramercy Park Studios</a>
            <div class="annotation">
                <p>Gramercy Park, Manhattan</p>
            </div>
            <a href="/the-gramercy-park-studios" class="button2 red_border">Learn More</a>
        </div>
    </div>
    <hr class="hr">
</div>
*}

<div class="main_width">
    <div class="advantages">
        <h2 class="h3 center">Explore Full Apartments</h2>
        <div class="top_text txt center">
            <p>Anyone who’s looked at an apartment in New York City knows that no matter how well-prepared you are, you’ll probably end up sifting through endless Craigslist scams and Facebook groups for apartments that are gone by the time you apply — but not with Outpost Club. See an apartment you like? Just give us a call to set up a showing and we’ll take it from there. Want us to find roommates for you? Let us know and we’ll match you with other apartment seekers.</p>
            <a href="/full-apartments" class="button2 red">Explore Full Apartments</a>
        </div>
    </div>
    <hr class="hr m0">
</div>

<div class="main_width txt advantages center">
	{$page->body}
	{*<a href="{if $apply_form}#apply{else}/join-us{/if}" class="button1 black {if $apply_form}anchor{/if}">Apply Now</a>*}
</div>

<div class="main_width partners_sb">
    <div class="second_block fx w">
        <div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/logo.svg" title="Easy move-in. Easy living. Find your next home. (Image-4), outpost-club.com" alt="Easy move-in. Easy living. Find your next home. (Image-4)"></div>
        <div class="text">
            <h4 class="h1">Who We Are</h4>
            <p>Outpost Club is a property management technology platform that connects tenants with bedroom and apartment rentals in unfurnished buildings; rents out fully furnished all-inclusive bedrooms in coliving apartments; and offers short-term rental solutions through a network of long-stay hotels and residences.</p>
        </div>
    </div>
</div>

<div class="main_width features">
	<div class="fx ch3">
		<div>
			<div class="img">
				<img alt="Easy move-in. Easy living.
                Find your next home. (Image-5)" title="Easy move-in. Easy living.
                Find your next home. (Image-5), outpost-club.com" src="/design/{$settings->theme|escape}/images/comfort.jpg" alt="Comfort">
				<div class="img_title">
					<p>Comfort</p>
				</div>
			</div>
			<p class="text">Our coliving spaces are stylish by design, all <strong>newly renovated</strong> and including modern appliances, central air, spacious common areas, outdoor space and private or shared bedrooms, depending on your budget.</p>
		</div>
		<div>
			<div class="img">
				<img alt="Easy move-in. Easy living.
                Find your next home. (Image-6)" title="Easy move-in. Easy living.
                Find your next home. (Image-6), outpost-club.com" src="/design/{$settings->theme|escape}/images/community.jpg" alt="Community">
				<div class="img_title">
					<p>Community</p>
				</div>
			</div>
			<p class="text">Our members come from <strong>all over the world</strong> to live in our coliving spaces, reflecting the diversity of New York. Members are connected with a network of successful individuals, creatives, entrepreneurs, investors, executives and experts in many fields.</p>
		</div>
		<div>
			<div class="img">
				<img alt="Easy move-in. Easy living.
                Find your next home. (Image-7)" title="Easy move-in. Easy living.
                Find your next home. (Image-7), outpost-club.com" src="/design/{$settings->theme|escape}/images/convenience.jpg" alt="Convenience">
				<div class="img_title">
					<p>Convenience</p>
				</div>
			</div>
			<p class="text">We offer <strong>affordable housing accommodations</strong> with <strong>all-inclusive prices</strong>, allowing our members to have a successful living and working experience <strong>without the hassles of moving into a new apartment</strong>. Our locations are all in great neighborhoods with nearby public transportation, entertainment, shopping and dining.</p>
		</div>
	</div>
</div>

{*
<div class="main_width socials fx c">
	<a href="mailto:info@outpost-club.com" target="_blank">
		<img src="/design/{$settings->theme|escape}/images/icons/email.svg" alt="Outpost email">
	</a>
	<a href="http://instagram.com/outpost_club" target="_blank">
		<img src="/design/{$settings->theme|escape}/images/icons/instagram.svg" alt="Outpost instagram">
	</a>
	<a href="https://twitter.com/outpost_club" target="_blank">
		<img src="/design/{$settings->theme|escape}/images/icons/twitter.svg" alt="Outpost twitter" title="twitter">
	</a>
	<a href="https://www.linkedin.com/company-beta/17932725/" target="_blank">
		<img src="/design/{$settings->theme|escape}/images/icons/linkedin.svg" alt="Outpost linkedin">
	</a>
	<a href="http://www.facebook.com/outpostclubNY/" target="_blank">
		<img src="/design/{$settings->theme|escape}/images/icons/facebook.svg" alt="Outpost facebook">
	</a>
</div>
*}

<div class="main_width advantages">
	{*
	<h4 class="h3 center">What's included in the all-inclusive price along with your bedroom:</h4>
	{include file='bx/advantages.tpl'} 
	<div class="hr"></div>
    <a class="button1 black" href="/online-questionnaire">Get your exclusive offer now</a>

	*}
        <div class="center">
            <a href="/online-questionnaire" class="button2 red {$apply_button_text}">{$apply_button_text}</a>
        </div>
	<div class="hr"></div>
</div>


{get_posts type=2 var=s_reviews limit=10}
{$reviews_title='What People Are Saying:'}
{include file='bx/reviews_slider.tpl'}


{include file='bx/blog_list.tpl'} 

<div class="main_width center find_us">
	<p class="h1">Find us on...</p>
    <div class="partners_slider">
    	<div class="item">
            <a href="https://www.forbes.com/sites/ranagood/2020/01/28/outpost-making-long-term-city-travel-reality/#a34a44991a0e" target="_blank" rel="nofollow noopener noreferer">
                <img src="design/{$settings->theme|escape}/images/forbes.svg" title="Easy move-in. Easy living. Find your next home. (Image-10), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-10)" >
            </a>
        </div>
        <div class="item">
            <!-- <a href="https://www.nytimes.com/2019/12/23/realestate/sharing-a-room-in-bedford-stuyvesant-and-making-new-friends.html" target="_blank" rel="nofollow noopener noreferer"> -->
            <a href="https://drive.google.com/file/d/18FPOeyiBtY5n-NKy8DhSn5ZBuhA_9Bwr/view?usp=share_link"> 
                <img src="design/{$settings->theme|escape}/images/new-york-city-logo.png" title="Press (Image-4), outpost-club.com" alt="Press (Image-4)" >
            </a>
        </div>
        <div class="item">
            <a href="https://www.nytimes.com/2019/12/23/realestate/sharing-a-room-in-bedford-stuyvesant-and-making-new-friends.html" target="_blank" rel="nofollow noopener noreferer">
                <img src="design/{$settings->theme|escape}/images/new-york-city-logo.png" title="Easy move-in. Easy living. Find your next home. (Image-11), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-11)" >
            </a>
        </div>
        <div class="item">
            <a href="https://www.foxbusiness.com/real-estate/co-living-real-estate-trend-has-renters-saving-thousands?fbclid=IwAR3G8nt2xCNOJr01TjFhmHq0LT5ZjrxLZtyYyT-wBGvNsfyDt6tsDfFngsg" target="_blank" rel="nofollow noopener noreferer">
                <img src="design/{$settings->theme|escape}/images/fox.png" title="Easy move-in. Easy living. Find your next home. (Image-12), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-12)" >
            </a>
        </div>
    	<div class="item">
    		<a href="https://medium.com/qwerkycoliving/the-worlds-first-coliving-conference-co-liv-review-85e8d1a7ac09" target="_blank" rel="nofollow noopener noreferer">
    			<img src="design/{$settings->theme|escape}/images/icons/medium.svg" title="Easy move-in. Easy living. Find your next home. (Image-13), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-13)" >
    		</a>
        </div>
        <div class="item">
        	<a href="https://coliving.com/blog/breaking-the-preconceived-notions-of-coliving" target="_blank" rel="nofollow noopener noreferer">
        		<img src="design/{$settings->theme|escape}/images/icons/coliving_logo.svg" title="Easy move-in. Easy living. Find your next home. (Image-14), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-14)" >
        	</a>
        </div>
        <div class="item">
        	<div>
                <img src="design/{$settings->theme|escape}/images/dislocation.jpg" title="Easy move-in. Easy living. Find your next home. (Image-15), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-15)" >
            </div>
        </div>
    	<div class="item">
    		<a href="http://au.blurb.com/" target="_blank" rel="nofollow noopener noreferer">
        		<img src="design/{$settings->theme|escape}/images/blurb-logo.png" title="Easy move-in. Easy living. Find your next home. (Image-16), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-16)" >
        	</a>
    	</div>
    </div>
    
</div>