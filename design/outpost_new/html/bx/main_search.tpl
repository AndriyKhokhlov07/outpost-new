
{* The Gramercy Park Studios *}
{if $page->id == 479}
    {literal}
    <div class="id" id="apply"></div>
    <div id="search-widget_IO312PWQ" class="guesty_search_widget"><script>!function(e,t,a,n,c,r){function s(t){e.console.log("[Guesty Embedded Widget]:",t)}var i,d,l,o,y,m,g,h,p,u;n&&(i=n,d=t.getElementsByTagName("head")[0],(l=t.createElement("link")).rel="stylesheet",l.type="text/css",l.href=i,l.media="all",d.appendChild(l)),o=function(){try{e[a].create(r).catch(function(e){s(e.message)})}catch(e){s(e.message)}},h=!1,y=c,m=function(){h||this.readyState&&"complete"!=this.readyState||(h=!0,o())},(g=t.createElement("script")).type="text/javascript",g.src=y,g.async="true",g.onload=g.onreadystatechange=m,p=g,(u=t.getElementsByTagName("script")[0]).parentNode.insertBefore(p,u)}(window,document,"GuestySearchBarWidget","https://s3.amazonaws.com/guesty-frontend-production/search-bar-production.css","https://s3.amazonaws.com/guesty-frontend-production/search-bar-production.js",{"siteUrl":"outpost-club.guestybookings.com"});</script></div>
    {/literal}
{elseif $page->id == 253} {* New York *}
<div class="main_search new_york_search anchors_block {if $is_mobile == 1}mob_vers{/if} fx">
    <a href="#new_houses" class="anchor">
        <img src="/design/{$settings->theme|escape}/images/icons/flame.svg" alt="New houses">
        <span>New Houses</span>
    </a>
    <a href="#manhattan" class="anchor">
        <img src="/design/{$settings->theme|escape}/images/icons/empire-state-building.svg" alt="Manhattan">
        <span>Manhattan</span>
    </a>
    <a href="#brooklyn" class="anchor">
        <img src="/design/{$settings->theme|escape}/images/icons/brooklyn-bridge.svg" alt="Brooklyn">
        <span>Brooklyn</span>
    </a>
    <a href="#queens" class="anchor">
        <img src="/design/{$settings->theme|escape}/images/icons/crown.svg" alt="Queens">
        <span>Queens</span>
    </a>
</div>
{elseif $this_page == 'home'}
<div class="main_search  anchors_block {if $is_mobile == 1}mob_vers{/if} fx ch5">
    <a href="new-york#new_houses">
        <img src="/design/{$settings->theme|escape}/images/icons/flame.svg" alt="New houses">
        <span>New Houses</span>
    </a>
    <a href="new-york#manhattan">
        <img src="/design/{$settings->theme|escape}/images/icons/empire-state-building.svg" alt="Manhattan">
        <span>Manhattan</span>
    </a>

    <a href="new-york#brooklyn">
        <img src="/design/{$settings->theme|escape}/images/icons/brooklyn-bridge.svg" alt="Brooklyn">
        <span>Brooklyn</span>
    </a>

    <a href="new-york#queens">
        <img src="/design/{$settings->theme|escape}/images/icons/crown.svg" alt="Queens">
        <span>Queens</span>
    </a>

    <a href="philadelphia">
        <img src="/design/{$settings->theme|escape}/images/icons/liberty_bell.svg" alt="Philadelphia">
        <span>Philadelphia</span>
    </a>

    


    {*
    <a href="jersey-city">
        <img src="/design/{$settings->theme|escape}/images/icons/skyscraper.svg" alt="Jersey City">
        <span>Jersey City</span>
    </a>
    <a href="new-york">
        <img src="/design/{$settings->theme|escape}/images/icons/the-statue-of-liberty.svg" alt="New York">
        <span>New York</span>
    </a>
    <a href="#new_houses" class="anchor">
        <img src="/design/{$settings->theme|escape}/images/icons/flame.svg" alt="New houses">
        <span>New Houses</span>
    </a>
    <a href="the-japantown-house">
        <img src="/design/{$settings->theme|escape}/images/icons/vincent-thomas-bridge.svg" alt="San Francisco">
        <span>San Francisco</span>
    </a>
    *}
</div>
<!-- Philadelphia -->
{elseif $page->id == 428}
<div class="main_search {if $is_mobile == 1}mob_vers{/if} fx">
    <div>
        <div data-cookie="{$page->parent_id}" class="city_id"></div>
        <div data-cookie="{$page->neighborhood}" class="n_hood"></div>

        <span>House</span>
        <div class="select select_location">
            <div>
                {get_pages parent_id={$page->parent_id} var=c_pages limit=100}
                {foreach $c_pages as $p}
                <div data-cookie="{$p->name}" class="term {if $page->url == $p->url}selected{/if}">
                    <a href="{$p->url}" on click="return false">{$p->name}</a>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
    <div>
        <span>Lease Term</span>
        <div class="select select_term">
            <div>
                <div data-cookie="3-4 months" class="term selected">3-4 months</div>
                <div data-cookie="5-11 month" class="term">5-11 month</div>
                <div data-cookie="12+ months" class="term">12+ months</div>
            </div>
        </div>
    </div>
    <div class="main_search_button_wrap">
        <div data-url="{if $apply_link}{$apply_link}{else}/philadelphia-application{/if}" class="red main_search_button">{$avalability_button_text}</div>
    </div>
   
</div>
<!-- Cassa Hotel -->
{elseif $page->id == 424}
<div class="main_search {if $is_mobile == 1}mob_vers{/if} fx two_cities">
    <div>
        <div data-cookie="{$page->parent_id}" class="city_id"></div>
        <div data-cookie="{$page->neighborhood}" class="n_hood"></div>

        <span>House</span>
        <div class="select select_location">
            <div>
                {get_pages parent_id={$page->parent_id} var=c_pages limit=100}
                {foreach $c_pages as $p}
                {if $p->id == 424}
                <div data-cookie="{$p->name}" class="term {if $page->url == $p->url}selected{/if}">
                    <a href="{$p->url}" on click="return false">{$p->name}</a></div>
                {/if}
                {/foreach}
            </div>
        </div>
    </div>
    <div class="main_search_button_wrap">
        <div data-url="{if $apply_link}{$apply_link}{else}/cassa-application{/if}" class="red main_search_button">{$avalability_button_text}</div>
    </div>
</div>
{elseif $page->parent_id != 0}
<div class="main_search {if $is_mobile == 1}mob_vers{/if} fx">
    <div>
        <div data-cookie="{$page->parent_id}" class="city_id"></div>
        <div data-cookie="{$page->neighborhood}" class="n_hood"></div>

        <span>House</span>
        <div class="select select_location">
            <div>
                {get_pages parent_id={$page->parent_id} var=c_pages limit=100}
                {foreach $c_pages as $p}
                <div data-cookie="{$p->name}" class="term {if $page->url == $p->url}selected{/if}">
                    <a href="{$p->url}" on click="return false">{$p->name}</a></div>
                {/foreach}
            </div>
        </div>
    </div>
    <div>
        <span>Room type</span>
        <div class="select select_room_type">
            <div>
                <div data-cookie="Private room" class="term selected">Private room</div>
                {*<div data-cookie="Shared room" class="term">Shared room</div>*}
                <div data-cookie="Full Apartment" class="term">Full Apartment</div>
            </div>
        </div>
    </div>
    <div>
        <span>Lease Term</span>
        <div class="select select_term">
            <div>
                <div data-cookie="3-4 months" class="term selected">3-4 months</div>
                <div data-cookie="5-11 month" class="term">5-11 month</div>
                <div data-cookie="12+ months" class="term">12+ months</div>
            </div>
        </div>
    </div>
   <div class="main_search_button_wrap">
       <div data-url="{if $apply_link}{$apply_link}{else}/online-questionnaire{/if}" class="red main_search_button">{if $page->id == 413}{$apply_button_text}{else}Check Availability{/if}</div>
   </div>
</div>
{/if}