{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}
{* {$apply_form="1" scope=parent} *}

{$jquery_in_head == 1}

<div class="{if $page->bg_image == ''}page_wrap{/if} house">
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

    {* Google Schema for Houses *}
{literal}
<script type="application/ld+json">
{
"@context":"https://schema.org",
"@type":"RealEstateAgent",
"image": [
    "https://outpost-club.com/files/uploads/about-outpost.1x1.jpg",
    "https://outpost-club.com/files/uploads/about-outpost.4x3.jpg",
    "https://outpost-club.com/files/uploads/about-outpost.16x9.jpg"
],
"@id": "https://outpost-club.com",
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
    "addressCountry":"US"
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
"priceRange": "$790-$3,800",
"openingHoursSpecification": [
    {
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
    },
    {
        "@type": "OpeningHoursSpecification",
        "dayOfWeek": [
            "Saturday",
            "Sunday"
        ],
        "opens": "09:00 AM",
        "closes":"05:00 PM"
    }
]
}
</script>
{/literal}
{* Google Schema for Houses End *}
   
    
</div>
    <div class="main_width">
        {* Madelon (538) || Neighborhoods || Universities *}
        {if $page->id==538 || $page->menu_id==16 || $page->menu_id==17}
            <div class="txt">
                {$page->body}
            </div>
            {if $page->id==538}
                {get_pages id=[439,529,525,536] var=m_houses limit=4}
            {elseif $page->menu_id==16}
                {get_pages neighborhood_id=$page->id var=m_houses limit=100}
            {elseif $universities_houses}
                {$m_houses=$universities_houses}
            {/if}
            {if $m_houses}
                <div class="rooms fx w ch2">
                    {foreach $m_houses as $p}
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
            {/if}
        {else}
        
        <div class="fx ch2 w">
            <div class="txt">
                {$page->body}
            </div>
            <div id='map' style='min-height: 300px;' data-lon='{$page->longitude}' data-lat='{$page->latitude}'></div>

            {literal}
                <script>
                    var map_el = document.getElementById('map');

                    mapboxgl.accessToken = 'pk.eyJ1IjoiamFja21vbGNoYW5vdiIsImEiOiJja2Z6N3p5Y3EwMGk1MnlvMjBzeXpnNjlsIn0.x88CuSq2WV_d_47yQPLBIQ';
                    var map = new mapboxgl.Map({
                        container: 'map',
                        style: 'mapbox://styles/mapbox/light-v10',
                        center: [map_el.dataset.lon, map_el.dataset.lat],
                        zoom: 10.3,
                        maxZoom: 14
                    });

                    map.on('load', function () {
                        // Добавляем круг на карту
                        map.addLayer({
                            id: 'circle-layer',
                            type: 'circle',
                            source: {
                                type: 'geojson',
                                data: {
                                    type: 'Feature',
                                    geometry: {
                                        type: 'Point',
                                        coordinates: [map_el.dataset.lon, map_el.dataset.lat]
                                    }
                                }
                            },
                            paint: {
                                'circle-radius': {
                                    stops: [[10, 50], [12, 120], [14, 200]],
                                    base: 200
                                },
                                'circle-color': 'rgba(192, 30, 50, 0.5)', // Цвет круга
                                'circle-stroke-width': 2, // Толщина обводки
                                'circle-stroke-color': 'rgba(192, 30, 50, 1)' // Цвет обводки
                            }
                        });
                    });
                </script>
            {/literal}

            {*
            {literal}
            <script>
            var map_el = document.getElementById('map');

            mapboxgl.accessToken = 'pk.eyJ1IjoiamFja21vbGNoYW5vdiIsImEiOiJja2Z6N3p5Y3EwMGk1MnlvMjBzeXpnNjlsIn0.x88CuSq2WV_d_47yQPLBIQ';
            var map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/light-v10',
            center: [map_el.dataset.lon, map_el.dataset.lat],
            zoom: 10.3,

            });


            map.on('load', function () {

            map.loadImage(
            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAADVklEQVR4nO3aTWgdVRQH8GlN0aSKCCq0RGg05P7ve+3z/u9NF9no040LRRdduGihELBIcRVFXFT82FjoQkEQFLLSbqKoC91ItauKxvrxWtQ458xLSupD1AhC/Vr4xkXyitakvsQ0k2TuH85qYO45P97wZuZOksTExMTErE7yetIzO9Lfe27Pnht09+5bmsPGdGqmZgZaYejGVtjZl9eTnqJ7/V9phdCXuaG9Gc1o6nFMHd4U4lMhzgtxQYj8MvVbSnybEpOZs6+qt48LcWcrhL6i57ps1Ffvzrx9QYhPxOH3/xhyJXVBad5tDhtT9KyLRpz5+AoMvUiZ+4ueddEoMRkBIsAaADjzQNGzLpq1AlDijHjcM5EkVxU98z+ydpcAciHaSjRS2iMzt1cog4NXd9vn7Eh/b0YzXATA9+LNW0q8qLRH1OMRdTiYebM/82a/+MoBCfaw0j6pHi8LcVKIH4VodwEyJ8QpoR3PPJ4SN3RYaEaFZjSjGdWAx8Tb54V4TxzmlJhcewBvJ5Z7zjxJtk67qhPiGSXOreJltDEA/p7TIWwTYkyJX0oJ0Ik4fFBqACXejwARoMwADgeF+FC48ifODQ3QiXDwpizYe8VXnhbiDaH5InWYE+IPcfhz0wMsleldu64Rj9dKC5AkSSLejkeACBABIkAEiAARYP0ALBwfE+I5dXhFiONK+3anxNsJoR1Xj2NCjGXEvilvarMj/b2bAmCF1VbiV3H4SGiONmnvyEPYViaAf4GkHveVGSDvZmMkAmxqgC52hjY3AO3nGsxdeZJsKSkAcpnfLDmtxKPCauVSjPUO0FbiJyWm1eNsSjRSoqFEQ4imzB/rZjfoYqUOcynNCaF9KSOeUOLUugNQ2hPqq4Pf1Wrb83q9J0+SrZeeI0+SLXm93pOFW6//xg3tVYeHhDguxA+r+QvacLfCrbCzr+nNASXSUgJ0MmXMdeJwtrQAC+uUfF8gApQdwOOQOHwmy/yr3DQAF9er3XZzSuwTmqPq8Y4QXwvx8xLrtxe+DDmTEa+rx6HV7GW+oYLfCHXuIb6sVq+dCXbHVM0MTNXMwFfB7mjUattPXunvj4sGKDwRIAJEgAgQASJAiQEyVh5uBvvsUqXePlh0jzExMTExy8xfhaDcC7SYIfIAAAAASUVORK5CYII=',
            function (error, image) {
            if (error) throw error;
            map.addImage('cat', image);
            map.addSource('point', {
            'type': 'geojson',
            'data': {
            'type': 'FeatureCollection',
            'features': [
            {
            'type': 'Feature',
            'geometry': {
            'type': 'Point',
            'coordinates': [map_el.dataset.lon, map_el.dataset.lat]
            }
            }
            ]
            }
            });
            map.addLayer({
            'id': 'points',
            'type': 'symbol',
            'source': 'point',
            'layout': {
            'icon-image': 'cat',
            'icon-size': 0.5,
            }
            });
            }
            );
            });

            </script>
            {/literal}
            *}

            {*
            <div class="form">
                 <div class="form_acnhor" id="apply"></div>
                <script src="//js.hsforms.net/forms/v2.js"></script>
                <script>
                  hbspt.forms.create({
                    portalId: "4068949",
                    formId: "f7fcf175-50eb-4637-b9f8-996aacd3bd71"
                });
                </script>
            </div>
            *}
        </div>
        
        {/if}
        
       {*
       <div class="center">
            {if $page->id == 424}
                <a href="{if $apply_link}{$apply_link}{else}/cassa-application{/if}" class="button2 red">{$avalability_button_text}</a>
            {elseif $page->id == 428}
                <a href="{if $apply_link}{$apply_link}{else}/philadelphia-application{/if}" class="button2 red">{$avalability_button_text}</a>
            {else}
                <a href="{if $apply_link}{$apply_link}{else}/online-questionnaire{/if}" class="button2 red">{$apply_button_text}</a>
            {/if}
        </div> 
        *}
    </div>
    <div class="main_width txt room_blocks">
        {capture name=throughout}
            <p>We worked with interior designers to make the house comfortable for all of our members in any room of the house. For the furniture we used only the best suppliers and materials, from real wooden surfaces to sleek countertops.</p>
            <p><strong>We&rsquo;ve thought of all the little things you need to feel right at home upon arrival.</strong></p>
            <hr class="hr" />
            <div class="advantages">
                <h5 class="h5">What’s included with your bedroom in our all-inclusive price:</h5>
                {include file='bx/adv_block.tpl'} 
            </div>
        {/capture}
        {capture name=throughout_phila}
            <div class="advantages phila_adv">
                <h5 class="h5">What’s included with your bedroom in our all-inclusive price:</h5>
                {include file='bx/adv_block.tpl'} 
            </div>
        {/capture}
        {foreach $page->blocks as $pb}
        {if $pb->images != ""}
        <div class="room_block fx {if $pb->type == 1}ch2{else}w rv vc{/if}">
            {if $pb->images|count > 1}
            <div {if $pb->type != 1}class="w100"{/if}>
                <div class="img_slider">
                    {foreach $pb->images as $img}
                    <div>
                        {if $pb->type != 1}
                        <div class="img">
                            {*
                            {if $img@iteration==1}
                                <img class="lazy" data-src="{$img|resize:'gallery':1200:1200}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="{$pb->title}">
                            {else}
                            {/if}
                            *}

                                <meta itemprop="image" content="{$img|resize:'gallery':1200:1200}">
                                <img data-lazy="{$img|resize:'gallery':1200:1200}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="{$page->name} (Image-1), outpost-club.com" alt="{$page->name} (Image-1)" />
                        </div>  
                        {else}
                        <div class="img">
                            {*
                            {if $img@iteration==1}
                                <img class="lazy" data-src="{$img|resize:'gallery':700:700}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" alt="{$pb->title}">
                            {else}
                            {/if}
                            *}
                                <meta itemprop="image" content="{$img|resize:'gallery':700:700}">
                                <img data-lazy="{$img|resize:'gallery':700:700}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="{$page->name} (Image-2), outpost-club.com" alt="{$page->name} (Image-2)" />
                        </div>  
                        {/if}
                    </div>
                    {/foreach}
                </div>                
            </div>
            {else}
            {foreach $pb->images as $img}
            <div {if $pb->type != 1}class="w100"{/if}>
                <div class="img">
                    <img src="../{$config->galleries_images_dir}{$img}" title="{$page->name} (Image-3), outpost-club.com" alt="{$page->name} (Image-3)" />                                   
                </div>
            </div>
            {/foreach}
            {/if}
            <div>
                <p class="h5">{$pb->title}</p>
                <div class="info">{$pb->body}</div>
            </div>
        </div>
        {else}
        <div class="room_block">
            <p class="h5">{$pb->title}</p>
            <div class="info">{$pb->body|replace:'{throughout}':{$smarty.capture.throughout}|replace:'{throughout_phila}':{$smarty.capture.throughout_phila}}</div>
        </div>
        {/if}
        {/foreach}
    </div>

    {if $page->id == 424}
        {include file='cassa-faq.tpl'}
    {/if}

    {if $rel_houses}
    <div class="main_width">
        <h4 class="h3 center">Similar houses</h4>
        <div class="fx ch3 c w">
            {foreach $rel_houses as $house}
            <div class="room center">
                {if $house->image}
                    <a href="{$house->url}" class="img">
                        <img src="{$house->image|resize:pages:380:380}" title="{$page->name} (Image-4), outpost-club.com" alt="{$page->name} (Image-4)">
                    </a>
                {/if}
                <a class="h3" href="{$house->url}">{$house->name|escape}</a>
            </div>
            {/foreach}
        </div>
    </div>
    {/if}

    {if $comments}
    <div class="main_width reviews_list">
        <p class="h3 center">Members Reviews</p>
        <div class="reviews reviews_slider">
            {foreach $comments as $post}
            <div class="item">
                {if $post->image}
                    <div class="img">
                        {if $is_mobile == 1}
                        <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="{$post->image|resize:blog:150:150}"  title="{$page->name} (Image-5), outpost-club.com" alt="{$page->name} (Image-5)" >
                        {else}
                        <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="{$post->image|resize:blog:300:300}"  title="{$page->name} (Image-6), outpost-club.com" alt="{$page->name} (Image-6)" >
                        {/if}
                    </div>
                {/if}
                <div class="preview">
                    <p class="rw_title">
                        {$post->name}
                    </p>
                    <div>{$post->text}</div>
                </div>
            </div>
            {/foreach}
        </div>

    </div>
    {/if}


    {$posts_slider_tag_id=27}
    {$posts_slider_title='What do our members think about Outpost Club'}
    {include file='bx/blog_list.tpl'}
</div>
