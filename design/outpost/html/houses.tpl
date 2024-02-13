{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}


<div class="main_width rooms">
{$breadcrumb_n=0}	
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
    {if $city_id != 253}
    <div class="fx w ch2">
        {get_pages parent_id={$city_id} var=c_pages limit=100}
        {foreach $c_pages as $p}
                <div class="room">
                    <a class="img" href="{$p->url}">
                        {if $p->coming_soon==1}
                            <div class="coming_soon">Coming soon</div>
                        {elseif $p->new==1}
                            <div class="new">New</div>
                        {elseif $p->featured==1}
                            <div class="featured">Featured</div>
                        {/if}
                        {if $is_mobile == 1}
                        <img class="lazy" data-src="{$p->image|resize:'pages':400:400}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Check out our Houses in New York (Image-1), outpost-club.com" alt="Check out our Houses in New York  (Image-1)" >
                        {else}
                        <img class="lazy" data-src="{$p->image|resize:'pages':700:700}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Check out our Houses in New York (Image-2), outpost-club.com" alt="Check out our Houses in New York  (Image-2)" >
                        {/if}
                    </a>
                    <a class="h2" href="{$p->url}">{$p->name|escape}</a>
                    <div class="annotation">
                        {$p->annotation}
                    </div>
                    <a href="{$p->url}" class="button2">Explore the house</a>
                </div>
        {/foreach}
    </div>
    {else}
    <div class="anchor_block" id="new_houses"></div>
    <p class="h2">New Houses</p>
    <div class="fx w ch2">
        {get_pages parent_id={$city_id} var=c_pages limit=100 new=1}
        {foreach $c_pages as $p}
                <div class="room">
                    <a class="img" href="{$p->url}">
                        {if $p->coming_soon==1}
                            <div class="coming_soon">Coming soon</div>
                        {elseif $p->new==1}
                            <div class="new">New</div>
                        {elseif $p->featured==1}
                            <div class="featured">Featured</div>
                        {/if}
                        {if $is_mobile == 1}
                        <img class="lazy" data-src="{$p->image|resize:'pages':400:400}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Check out our Houses in New York (Image-3), outpost-club.com" alt="Check out our Houses in New York  (Image-3)" >
                        {else}
                        <img class="lazy" data-src="{$p->image|resize:'pages':700:700}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Check out our Houses in New York (Image-4), outpost-club.com" alt="Check out our Houses in New York  (Image-4)" >
                        {/if}
                    </a>
                    <a class="h2" href="{$p->url}">{$p->name|escape}</a>
                    <div class="annotation">
                        {$p->annotation}
                    </div>
                    <div class="bottom_bx fx sb vc">
                        <div class="button_bx">
                            <a href="{$p->url}" class="button2">Explore the house</a>
                        </div>
                        {if $p->id==413}
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
                        {/if}
                    </div>
                </div>
        {/foreach}
    </div>
    <div class="center">
        <a class="button2 red " href="../online-questionnaire">{$apply_button_text}</a>
    </div>
</div>

{*
<div class="main_width">
    <hr class="hr" id="manhattan">

    <div class="w100 city_banner">
        <p class="h2">Studios and Residences</p>
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
</div>
*}

{if $page->id==253 && false} {* NY *}
<div class="main_width">
    <div class="w100 city_banner">
        <p class="h2">Studios and Residences</p>
        <div class="room">
            <a class="img op_bottom pb30" href="/the-bryant-park-residences">
                <img alt="Check out our Houses
                in New York (Image-5)" title="Check out our Houses
                in New York (Image-5), outpost-club.com" class="lazy" data-src="/design/{$settings->theme|escape}/images/the-bryant-park.jpg" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="The Bryant Park Residences">
            </a>
            <a href="/the-bryant-park-residences" class="h2">The Bryant Park Residences</a>
            <div class="annotation">
                <p>Manhattan</p>
            </div>
            <a href="/the-bryant-park-residences" class="button2 red_border">Learn More</a>
        </div>
    </div>
</div>
{/if}

<!-- <div class="main_width">
    <div class="w100 city_banner">
        <div class="room">
            <a class="img op_bottom pb30" href="/the-gramercy-park-studios">
                <img class="lazy" data-src="/design/{$settings->theme|escape}/images/gramercy-city-page.jpg" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="The Gramercy Park Studios">
            </a>
            <a href="/the-gramercy-park-studios" class="h2">The Gramercy Park Studios</a>
            <div class="annotation">
                <p>Manhattan</p>
            </div>
            <a href="/the-gramercy-park-studios" class="button2 red_border">Learn More</a>
        </div>
    </div>
</div> -->

<div class="main_width rooms">
    <hr class="hr" id="manhattan">
    <p class="h2">Manhattan</p>
    <div class="fx w ch2">
    {get_pages parent_id={$city_id} var=m_pages limit=100 neighborhood=1}
    {foreach $m_pages as $p}
            <div class="room">
                <a class="img" href="{$p->url}">
                    {if $p->coming_soon==1}
                        <div class="coming_soon">Coming soon</div>
                   {elseif $p->new==1}
                        <div class="new">New</div>  
                    {elseif $p->featured==1}
                        <div class="featured">Featured</div>
                    {/if}
                    {if $is_mobile == 1}
                    <img class="lazy" data-src="{$p->image|resize:'pages':400:400}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Check out our Houses in New York (Image-6), outpost-club.com" alt="Check out our Houses in New York  (Image-6)" >
                    {else}
                    <img class="lazy" data-src="{$p->image|resize:'pages':700:700}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Check out our Houses in New York (Image-7), outpost-club.com" alt="Check out our Houses in New York  (Image-7)" >
                    {/if}
                </a>
                <a class="h2" href="{$p->url}">{$p->name|escape}</a>
                <div class="annotation">
                    {$p->annotation}
                </div>
                <a href="{$p->url}" class="button2">Explore the house</a>
            </div>
    {/foreach}
    </div>
    <div class="center">
        <a class="button2 red " href="../online-questionnaire">{$apply_button_text}</a>
    </div>

    <hr class="hr" id="brooklyn">
    <p class="h2">Brooklyn</p>
    <div class="fx w ch2">
    {get_pages parent_id={$city_id} var=b_pages limit=100 neighborhood=2}
    {foreach $b_pages as $p}
            <div class="room">
                <a class="img" href="{$p->url}">
                    {if $p->coming_soon==1}
                        <div class="coming_soon">Coming soon</div>
                    {elseif $p->new==1}
                        <div class="new">New</div>
                    {elseif $p->featured==1}
                        <div class="featured">Featured</div>
                    {/if}
                    {if $is_mobile == 1}
                    <img class="lazy" data-src="{$p->image|resize:'pages':400:400}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Check out our Houses in New York (Image-8), outpost-club.com" alt="Check out our Houses in New York  (Image-8)" >
                    {else}
                    <img class="lazy" data-src="{$p->image|resize:'pages':700:700}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Check out our Houses in New York (Image-9), outpost-club.com" alt="Check out our Houses in New York  (Image-9)" >
                    {/if}
                </a>
                <a class="h2" href="{$p->url}">{$p->name|escape}</a>
                <div class="annotation">
                    {$p->annotation}
                </div>
                <div class="bottom_bx fx sb vc">
                    <div class="button_bx">
                        <a href="{$p->url}" class="button2">Explore the house</a>
                    </div>
                    {if $p->id==413}
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
                    {/if}
                </div>
            </div>
    {/foreach}
    </div>
    {/if}
    <p class="center">*Pricing is subject to location, room type, length of stay, season, and availability*</p>
    <div  class="center">
        <span class="button2 red main_search_button" data-url="{if $apply_link}{$apply_link}{else}../online-questionnaire{/if}">
            <div data-cookie="{$page->id}" class="city_id"></div>
            {$apply_button_text}
        </span>
    </div>


    {get_pages parent_id={$city_id} var=qns_pages limit=100 neighborhood=3}
    {if $qns_pages}
    <hr class="hr" id="queens">
    <p class="h2">Queens</p>
    <div class="fx w ch2">
        {foreach $qns_pages as $p}
            <div class="room">
                <a class="img" href="{$p->url}">
                    {if $p->coming_soon==1}
                        <div class="coming_soon">Coming soon</div>
                    {elseif $p->new==1}
                        <div class="new">New</div>
                    {elseif $p->featured==1}
                        <div class="featured">Featured</div>
                    {/if}
                    {if $is_mobile == 1}
                        <img class="lazy" data-src="{$p->image|resize:'pages':400:400}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Check out our Houses in New York (Image-{$p->id}), outpost-club.com" alt="Check out our Houses in New York  (Image-{$p->id})" >
                    {else}
                        <img class="lazy" data-src="{$p->image|resize:'pages':700:700}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Check out our Houses in New York (Image-{$p->id}), outpost-club.com" alt="Check out our Houses in New York  (Image-{$p->id})" >
                    {/if}
                </a>
                <a class="h2" href="{$p->url}">{$p->name|escape}</a>
                <div class="annotation">
                    {$p->annotation}
                </div>
                <a href="{$p->url}" class="button2">Explore the house</a>
            </div>
        {/foreach}
    </div>
    <div class="center">
        <a class="button2 red " href="../online-questionnaire">{$apply_button_text}</a>
    </div>
    {/if}

    <hr class="hr m0">

</div>
{*
{if $page->id == 253}
<div class="anchor_block" id="locations"></div>
<div class="main_width">
	<h4 class="h3 center">Our Coliving Locations</h4>
	<iframe class="lazy" data-src="https://www.google.com/maps/d/embed?mid=1auTDUCQMxu4x5uNSz2_xs-aIb8m5zCB1&hl=en_US" style="width: 100%; height: 480px;"></iframe>
</div>
{elseif $page->id == 427}
<div class="anchor_block" id="locations"></div>
<div class="main_width">
    <h4 class="h3 center">Our Coliving Locations</h4>
    <iframe class="lazy" data-src="https://www.google.com/maps/d/embed?mid=1sy0eEGp3MH-UHfvRao4fSukOSjVZTPo&ehbc=2E312F" width="100%" height="480"></iframe>
</div>
{/if}
*}

{get_posts type=2 var=s_reviews limit=5}
{include file='bx/reviews_slider.tpl'}