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

<div class="main_width">
    <div class="advantages">
        <p class="h3 center">Who we are</p>
        <div class="top_text txt center">
            {*<p class="h5">Check out our coliving houses in Manhattan, Brooklyn, San Francisco and Jersey City.</p>
            <p class="h5">You can apply and move into any available house as early as today with commitments between 1 and 12 months! Below you can find more information about coliving and each of our unique houses.</p> 
            <p class="h5">Feel free to reach out if you have questions!</p>
            *}
            <p >Outpost Club is a network of coliving houses. We believe that renting a room should be as easy as buying a cup of coffee. We built a process to make it <strong>super easy to move to <a class="green" href="../new-york" target="_blank" rel="nofollow noopener noreferer">New York</a>, and we&rsquo;ve designed interesting and convenient houses at affordable prices. At Outpost Club, you receive more than just a place to live and work; the Outpost Club platform creates a coliving community that offers both general and professional networking.</p>
        </div>
         

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
<div class="main_width">
	<div class="advantages">
		
		<h5 class="h3 center">What's included with your bedroom in our all-inclusive prices:</h5>
		{include file='bx/adv_block.tpl'} 
        
	</div>
    
</div>
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
        <h5 class="h3 center">Our new houses</h5>
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
    <hr class="hr">
</div>

<div class="main_width">
    <div class="w100 city_banner">
        <p class="h3 center">Studios and Residences</p>
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
    <hr class="hr">
</div>


<div class="main_width">
    <div class="w100 city_banner">
        {* <p class="h3 center">Studios and Residences</p> *}
        <div class="room">
            <a class="img op_bottom pb30" href="/the-mason">
                <img class="lazy" data-src="/design/{$settings->theme|escape}/images/museau-city.jpg" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="The Mason on Chestnut powered by Outpost">
            </a>
            <a href="/the-mason" class="h2">The Mason on Chestnut</a>
            <div class="annotation">
                <p>Philadelphia</p>
            </div>
            <a href="/the-mason" class="button2 red_border">Learn More</a>
        </div>
    </div>
    <hr class="hr">
</div>

<div class="main_width txt advantages center">
	{$page->body}
	{*<a href="{if $apply_form}#apply{else}/join-us{/if}" class="button1 black {if $apply_form}anchor{/if}">Apply Now</a>*}
</div>

<div class="main_width features">
	<div class="fx ch3">
		<div>
			<div class="img">
				<img src="/design/{$settings->theme|escape}/images/comfort.jpg" alt="Comfort">
				<div class="img_title">
					<p>Comfort</p>
				</div>
			</div>
			<p class="text">Our coliving spaces are stylish by design, all <strong>newly renovated</strong> and including modern appliances, central air, spacious common areas, outdoor space and private or shared bedrooms, depending on your budget.</p>
		</div>
		<div>
			<div class="img">
				<img src="/design/{$settings->theme|escape}/images/community.jpg" alt="Community">
				<div class="img_title">
					<p>Community</p>
				</div>
			</div>
			<p class="text">Our members come from <strong>all over the world</strong> to live in our coliving spaces, reflecting the diversity of New York. Members are connected with a network of successful individuals, creatives, entrepreneurs, investors, executives and experts in many fields.</p>
		</div>
		<div>
			<div class="img">
				<img src="/design/{$settings->theme|escape}/images/convenience.jpg" alt="Convenience">
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

{get_posts type=2 var=s_reviews limit=16}
{include file='bx/reviews_slider.tpl'}

{include file='bx/blog_list.tpl'} 

<div class="main_width center find_us">
	<h6 class="h1">Find us on</h6>
    <div class="partners_slider">
    	<div class="item">
            <a href="https://www.forbes.com/sites/ranagood/2020/01/28/outpost-making-long-term-city-travel-reality/#a34a44991a0e" target="_blank" rel="nofollow noopener noreferer">
                <img src="design/{$settings->theme|escape}/images/forbes.svg" alt="Forbes">
            </a>
        </div>
        <div class="item">
            <a href="https://www.nytimes.com/2019/12/23/realestate/sharing-a-room-in-bedford-stuyvesant-and-making-new-friends.html" target="_blank" rel="nofollow noopener noreferer">
                <img src="design/{$settings->theme|escape}/images/new-york-city-logo.png" alt="The New York Times">
            </a>
        </div>
        <div class="item">
            <a href="https://www.foxbusiness.com/real-estate/co-living-real-estate-trend-has-renters-saving-thousands?fbclid=IwAR3G8nt2xCNOJr01TjFhmHq0LT5ZjrxLZtyYyT-wBGvNsfyDt6tsDfFngsg" target="_blank" rel="nofollow noopener noreferer">
                <img src="design/{$settings->theme|escape}/images/fox.png" alt="Fox">
            </a>
        </div>
    	<div class="item">
    		<a href="https://medium.com/qwerkycoliving/the-worlds-first-coliving-conference-co-liv-review-85e8d1a7ac09" target="_blank" rel="nofollow noopener noreferer">
    			<img src="design/{$settings->theme|escape}/images/icons/medium.svg" alt="Medium">
    		</a>
        </div>
        <div class="item">
        	<a href="https://coliving.com/blog/breaking-the-preconceived-notions-of-coliving" target="_blank" rel="nofollow noopener noreferer">
        		<img src="design/{$settings->theme|escape}/images/icons/coliving_logo.svg" alt="Coloving">
        	</a>
        </div>
        <div class="item">
        	<div>
                <img src="design/{$settings->theme|escape}/images/dislocation.jpg" alt="Dislocation">
            </div>
        </div>
    	<div class="item">
    		<a href="http://au.blurb.com/" target="_blank" rel="nofollow noopener noreferer">
        		<img src="design/{$settings->theme|escape}/images/blurb-logo.png" alt="Blurb">
        	</a>
    	</div>
    </div>
</div>