<!DOCTYPE html>
{*
    Общий вид страницы
    Этот шаблон отвечает за общий вид страниц без центрального блока.
*}
<html lang="en" {if $page->url == 'faq'}itemscope itemtype="https://schema.org/FAQPage"{/if}>
<head>
{literal}
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-KXBPTWX');
</script>
<!-- End Google Tag Manager -->
{/literal}

{*
{literal}
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-W4WX6P8');</script>
<!-- End Google Tag Manager -->
{/literal}

{if $this_page=='join_us'}
{literal}
<script> gtag('event', 'conversion', {'send_to': 'AW-867431680/3qi1CPXCpXsQgOrPnQM'}); </script>
{/literal}
{/if}
{literal}
<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '1309793025728193');
fbq('track', 'PageView');
</script>
<!-- DO NOT MODIFY -->
<!-- End Facebook Pixel Code -->
<!-- Start of HubSpot Embed Code -->
<script id="hs-script-loader" async defer src="//js.hs-scripts.com/4068949.js"></script>
<!-- End of HubSpot Embed Code -->
{/literal}
*}
{literal}
<!-- Start of HubSpot Embed Code -->
<script id="hs-script-loader" async defer src="//js.hs-scripts.com/4068949.js"></script>
<!-- End of HubSpot Embed Code -->
{/literal}
    <base href="{$config->root_url}/"/>
    <title>{$meta_title|escape}</title>
    
    {* Метатеги *}
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="description" content="{$meta_description|escape}" />
    {*<meta name="keywords"    content="{$meta_keywords|escape}" />*}
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {*<meta name="yandex-verification" content="a4fca232c041bec1" />
    <meta name="theme-color" content="#2BBA61">
    <meta name="robots" content="noindex, nofollow">*}

    {if $page->id == 193}
    <meta name="robots" content="noindex, nofollow">
    {/if}
    {if $author || $tag}
    <meta name="robots" content="noindex, follow">
    {/if}
    

    {* Канонический адрес страницы *}
    {if isset($canonical)}
        <link rel="canonical" href="{$config->root_url}{$canonical}"/>
    {elseif $page}
        <link rel="canonical" href="{$config->root_url}/{$page->url}"/>
    {/if}

{if $current_page_num==2}
    <link rel="prev" href="{$config->root_url}{url page=null}">
{elseif $current_page_num>2}
    <link rel="prev" href="{$config->root_url}{url page=$current_page_num-1}">
{/if}
{if $current_page_num<$total_pages_num}
    <link rel="next" href="{$config->root_url}{url page=$current_page_num+1}">
{/if}
    <link href="design/{$settings->theme|escape}/images/favicon.ico" rel="icon"          type="image/x-icon"/>
    <link href="design/{$settings->theme|escape}/images/favicon.ico" rel="shortcut icon" type="image/x-icon"/>
    
    {* Стили *}
    {*<link href="design/{$settings->theme|escape}/fonts/fa/font-awesome.min.css?v4.7.0" rel="stylesheet">*}
    <link href="design/{$settings->theme|escape}/js/slick/slick.css" rel="stylesheet">
    <link href="design/{$settings->theme|escape}/js/slick/slick-theme.css" rel="stylesheet">
    <link href="js/fancybox/jquery.fancybox.min.css" rel="stylesheet">

    <link href="design/{$settings->theme|escape}/css/style.css?v1.0.235" rel="stylesheet">
    <link href="design/{$settings->theme|escape}/css/style2.css?v1.0.78" rel="stylesheet">

    {if $page->menu_id == 5 && $page->parent_id != 0}
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no" />
    <script src="https://api.mapbox.com/mapbox-gl-js/v1.12.0/mapbox-gl.js"></script>
    <link href="https://api.mapbox.com/mapbox-gl-js/v1.12.0/mapbox-gl.css" rel="stylesheet" />
    {/if}

    {if $jquery_in_head == 1}
    <script src="js/jquery/jquery.js?v1.0.0"></script>
    {/if}
    
    
    
    {* Всплывающие подсказки для администратора *}

    <meta property="og:locale" content="en_US"/>
    <meta property="og:site_name" content="Coliving in New York | Outpost Club"/>

    {if $page_type == "post"}

        <meta property="og:type" content="article"/>
        <meta property="og:title" content="{$post->name|escape}"/>
        {if $meta_description}<meta property="og:description" content='{$meta_description}'/>{/if}

        {if $post->image}
            <meta property="og:image" content="{$config->root_url}/files/blog_originals/{$post->image}"/>
        {else}
            <meta property="og:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png"/>
        {/if}
        <meta property="og:url" content="{$config->root_url}/blog/{$post->url}"/>
    {elseif $this_page=='product'}
        {if $product->images|count>1}
            {$product_image = $product->images[1]}
            <meta property="og:image" content="{$product_image->filename|resize:'product':1000:700}"/>
        {elseif $product->image}
            <meta property="og:image" content="{$product->image->filename|resize:'product':900:700}"/>
        {else}
            <meta property="og:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png"/>
        {/if}
        <meta property="og:title" content="{$product->name|escape}"/>
        <meta property="og:url" content="{$config->root_url}/products/{$product->url}"/>
        {if $product->annotation}
            <meta property="og:description" content='{$product->annotation|strip_tags}'/>
        {elseif $meta_description}
            <meta property="og:description" content='{$meta_description}'/>
        {/if}
    {else}
        <meta property="og:title" content="{$page->name|strip_tags}"/>
        {if $meta_description}<meta property="og:description" content='{$meta_description}'/>{/if}

        {if $page->image}
            <meta property="og:image" content="{$page->image|resize:'pages':500:500}"/>
        {else}
            <meta property="og:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo1.1.png"/>
        {/if}
        <meta property="og:url" content="{$config->root_url}/{$page->url}"/>
    {/if}

</head>
<body{if $this_page} class="c_{$this_page}"{/if} {if $page_type=='product'} itemscope itemtype="http://schema.org/Product"{/if}>
{*
{literal}
<!--  Clickcease.com tracking--><script type='text/javascript'>var script = document.createElement('script');
script.async = true; script.type = 'text/javascript';
var target = 'https://www.clickcease.com/monitor/stat.js';
script.src = target;var elem = document.head;elem.appendChild(script);</script>
<noscript><a href='https://www.clickcease.com' rel='nofollow'><img src='https://monitor.clickcease.com/stats/stats.aspx' alt='ClickCease'/></a></noscript><!--  Clickcease.com tracking-->
<noscript><img class="hide" height="1" width="1" src="https://www.facebook.com/tr?id=1309793025728193&ev=PageView&noscript=1" alt="fbp" /></noscript>
{/literal}
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W4WX6P8"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
*}
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KXBPTWX"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
    {if $members_menu}
        <div class="fix header members_header{if $page->image || $post->image} v2{/if}">
            {*<div class="covid19"><b>We know you still need a home in times of uncertainty, so for new members, we’ve changed our cancellation policy and added more affordable options to our Hot Deals page. </b>
Book by April 30, 2020, with move-in by Aug. 31, 2020, and you can cancel or reschedule your stay up until 7 days before your move-in date.</div>*}
            <a href="/" class="logo">
                <img src="/design/{$settings->theme|escape}/images/logo.svg" alt="Outpost logo">
            </a>

            <ul class="menu">
                <li class="user_n">
                    <div class="u_info fx">
                        <div class="icon">
                            <i class="fa fa-user-circle-o"></i>
                        </div>
                        <div class="title_bx fx">
                            <div class="title">{$smarty.session.user_name}</div>
                            <div class="options_line">
                                <a href="user/profile/">Profile</a>
                                <a class="logout" href="user/logout/">Logout</a>
                            </div>
                        </div>
                    </div><!-- user_info -->
                </li>
                {if $user->type==2}
                <li>
                    <a href="houseleader">House Leader</a>
                </li>
                {else if $user->type==3}
                <li>
                    <a href="restocking">Restocking</a>
                </li>
                {/if}

                {if $user->type!=3}
                <li>
                    <a href="/current-members">Current Members</a>
                </li>
                {if $categories}
                    {foreach $categories as $c}
                        {if $c->visible}
                        <li>
                            <a href="catalog/{$c->url}">{$c->name|escape}</a>
                        </li>
                        {/if}
                    {/foreach}
                {/if}
                <li>
                    <a href="current-members#essential_documents">Essential Documents</a>
                </li>
                {*<li>
                    <a href="technical-issues">Technical issues</a>
                </li>*}
                <li>
                    <a class="button" href="technical-issues#request_form">Technical Request</a>
                </li>
                {/if}
            </ul>

            <div class="open_sidebar">
                <i></i>
            </div>
        </div>
    {else}
        <div class="fix header{if $page->image || $post->image} v2{/if}">
            {*<div class="covid19"><b>We know you still need a home in times of uncertainty, so for new members, we’ve changed our cancellation policy and added more affordable options to our Hot Deals page. </b>
Book by April 30, 2020, with move-in by Aug. 31, 2020, and you can cancel or reschedule your stay up until 7 days before your move-in date.</div>*}
            <div class="fx vc sb">
                {if $this_page == "home"}
            <div class="logo">
                <img src="/design/{$settings->theme|escape}/images/logo.svg" alt="Outpost logo">
            </div>
            {else}
            <a href="/" class="logo">
                <img src="/design/{$settings->theme|escape}/images/logo.svg" alt="Outpost logo">
            </a>
            {/if}
            <ul class="menu">
                
                <li>
                    <a href="/hot-deals"><div class="green">Hot deals</div></a>
                </li>
                <li>
                    <a href="/full-apartments"><div class="green">Full Apartments</div></a>
                </li>

                
                {foreach $pages as $p}
                    {if $p->menu_id==1}
                        {if $p->url == 'join-us'}
                        <li{if $page && $page->id == $p->id && !$author && !$tag} class="selected"{/if}>
                            <a href="{if $apply_form}#apply{else}/join-us{/if}" class="button {if $apply_form}anchor{/if}">{$p->name|escape}</a>
                        </li>
                        {elseif $p->url != "" && $p->url != 'faq' && $p->url != 'blog' && $p->url != 'our-houses'}
                        <li{if $page && $page->id == $p->id && !$author && !$tag} class="selected"{/if}>
                            {if $p->id == 100}
                                <a href="{$p->url}" class="button">{$p->name|escape}</a>
                            {elseif !$user && $p->url=='current-members'}
                                <a href="https://ne-bo.com/user/login" target="_blank" rel="nofollow noopener noreferer">{$p->name|escape}</a>
                            {else}
                                <a href="{$p->url}">{$p->name|escape}</a>
                            {/if}
                        </li>
                        {elseif $p->url == 'our-houses'}
                        <li class="menu_about">
                            <span>Our houses</span>
                            <ul class="hide">
                                {foreach $pages as $p}
                                {if $p->menu_id==5}
                                    <li>
                                        <a href="{$p->url}">{$p->name|escape}</a>
                                    </li>
                                {/if}
                                {/foreach}
                            </ul>
                        </li>
                        <li>
                            <a href="/coliving">Coliving</a>
                        </li>
                        {elseif $p->url == 'faq'}
                        <li class="menu_about">
                            <span>Outpost Club</span>
                            <ul class="hide">
                                <li>
                                    <a href="/about">About</a>
                                </li>
                                <li>
                                    <a href="/memberships">Memberships</a>
                                </li>
                                <li>
                                    <a href="/new-york">Our houses</a>
                                </li>
                                <li>
                                    <a href="{$p->url}">{$p->name|escape}</a>
                                </li>
                                <li>
                                    <a href="/blog">Blog</a>
                                </li>
                                <li>
                                    <a href="/partner-with-us">Partner with us</a>
                                </li>
                                <li>
                                    <a href="/press">Press</a>
                                </li>
                                <li>
                                    <a href="/covid-19"><div>COVID-19</div></a>
                                </li>
                            </ul>
                        </li>
                        {/if}
                    {/if}
                {/foreach}
            </ul>
            <div class="open_sidebar">
                <i></i>
            </div>
            </div>
        </div>
    {/if}
    {*
    {if $user}
        <div class="user_nav_block{if $page->image} v2{/if}">
            <div class="user_info fx">
                <div class="icon">
                    <i class="fa fa-user-circle-o"></i>
                </div>
                <div class="title_bx fx">
                    <div class="title">{$smarty.session.user_name}</div>
                    <div class="options_line">
                        <a href="user/profile/">Profile</a>
                        <a class="logout" href="user/logout/">Logout</a>
                    </div>
                </div>
            </div><!-- user_info -->
            <ul class="r_nav">
                {if $categories}
                    {foreach $categories as $c}
                        {if $c->visible}
                        <li>
                            <a href="catalog/{$c->url}">{$c->name|escape}</a>
                        </li>
                        {/if}
                    {/foreach}
                {/if}
                <li>
                    <a href="current-members#essential_documents">Essential Documents</a>
                </li>
                <li>
                    <a href="technical-issues">Technical issues</a>
                </li>
                <li>
                    <a class="button" href="technical-issues#request_form">Technical Request</a>
                </li>
            </ul>  
        </div><!-- user_nav_block -->
    {/if}
    *}
    {if $page->image && $page->parent_id==0 && !$author && !$tag  && $current_page_num<2}
    <div class="full_width top_block ">
        {if $is_mobile == 1}
        <img class="top_bg" src="{$page->image|resize:'pages':800:800}" alt="{$page->header}">
        {else}
        <img class="top_bg" src="{$page->image|resize:'pages':1600:1600}" alt="{$page->header}">
        {/if}
        <div class="covid header">
            <div class="covid19">As always, the well-being of our members is our top priority, and we're committed to providing a safe environment for members at all Outpost houses as the novel coronavirus pandemic continues to evolve.
            <input type="checkbox" id="show_text" class="show_covid_text hide"> 
            <label for="show_text" class="show_covid_text_label"><i></i></label>
            <div class="hide_text">We're following expert recommendations within our houses to ensure your safety, 
            including by leaving rooms empty for at least 24 hours after a move-out, providing our staff with appropriate PPE and using high-strength Lysol, Clorox and bleach disinfectants to clean after every guest departure. We'll continue to adapt our strategies moving forward to ensure the health and safety of all of our members.</div></div>
            <div class="fx vc sb">
                  <a href="/" class="logo">
                <img src="/design/{$settings->theme|escape}/images/logo.svg" alt="Outpost logo">
            </a>
            <ul class="menu">
                <li>
                    <a href="/hot-deals"><div class="green">Hot deals</div></a>
                </li>
                <li>
                    <a href="/full-apartments"><div class="green">Full Apartments</div></a>
                </li>

                
                {foreach $pages as $p}
                    {if $p->menu_id==1}
                         {if $p->url == 'join-us'}
                        <li class="{if $page && $page->id == $p->id && !$author && !$tag}selected{/if}">
                            <a href="{if $apply_form}#apply{else}/join-us{/if}" class="button {if $apply_form}anchor{/if}">{$p->name|escape}</a>
                        </li>
                        {elseif $p->url != "" && $p->url != 'faq' && $p->url != 'blog' && $p->url != 'our-houses'}
                        <li{if $page && $page->id == $p->id && !$author && !$tag} class="selected"{/if}>
                            {if $p->id == 100}
                                <a href="{$p->url}" class="button">{$p->name|escape}</a>
                            {elseif !$user && $p->url=='current-members'}
                                <a href="https://ne-bo.com/user/login" target="_blank" rel="nofollow noopener noreferer">{$p->name|escape}</a>
                            {else}
                                <a href="{$p->url}">{$p->name|escape}</a>
                            {/if}
                        </li>
                        {elseif $p->url == 'our-houses'}
                        <li class="menu_about">
                            <span>Our houses</span>
                            <ul class="hide">
                                {foreach $pages as $p}
                                {if $p->menu_id==5}
                                    <li>
                                        <a href="{$p->url}">{$p->name|escape}</a>
                                    </li>
                                {/if}
                                {/foreach}
                            </ul>
                        </li>
                        <li>
                            <a href="/coliving">Coliving</a>
                        </li>
                        {elseif $p->url == 'faq'}
                        <li class="menu_about">
                            <span>Outpost Club</span>
                            <ul class="hide">
                                <li>
                                    <a href="/about">About</a>
                                </li>
                                <li>
                                    <a href="/memberships">Memberships</a>
                                </li>
                                {*
                                <li>
                                    <a href="/our-houses">Our houses</a>
                                </li>
                                *} 
                                <li>
                                    <a href="{$p->url}">{$p->name|escape}</a>
                                </li>
                                <li>
                                    <a href="/blog">Blog</a>
                                </li>
                                <li>
                                    <a href="/partner-with-us">Partner with us</a>
                                </li>
                                <li>
                                    <a href="/press">Press</a>
                                </li>
                                <li>
                                    <a href="/covid-19"><div>COVID-19</div></a>
                                </li>
                                
                            </ul>
                        </li>
                        {/if}
                    {/if}
                {/foreach}
            </ul>
            <div class="open_sidebar">
                <i></i>
            </div>
            </div>
        </div>
        <div class="main">
            {if $page->annotation}
                {$page->annotation}
            {else}
                <h1 class="h1">{$page->header}</h1>
            {/if}

            {if $this_page=='home' || $page->menu_id == 5}
            {include file='bx/main_search.tpl'} 
            {/if}
        </div>
    </div>
    {elseif $page->bg_image}
    <div class="full_width top_block">
        {if $is_mobile == 1}
        <img class="top_bg" src="{$config->pages_bg_images_dir}{$page->bg_image}" alt="{$page->header}">
        {else}
        <img class="top_bg" src="{$config->pages_bg_images_dir}{$page->bg_image}" alt="{$page->header}">
        {/if}
        {*<img class="top_bg" src="{$config->pages_bg_images_dir}{$page->bg_image}" alt="{$page->header}">*}
        <div class="covid header">
            <div class="covid19">As always, the well-being of our members is our top priority, and we're committed to providing a safe environment for members at all Outpost houses as the novel coronavirus pandemic continues to evolve.
                <input type="checkbox" id="show_text" class="show_covid_text hide">
            <label for="show_text" class="show_covid_text_label"><i></i></label>
            <div class="hide_text">We're following expert recommendations within our houses to ensure your safety, 
            including by leaving rooms empty for at least 24 hours after a move-out, providing our staff with appropriate PPE and using high-strength Lysol, Clorox and bleach disinfectants to clean after every guest departure. We'll continue to adapt our strategies moving forward to ensure the health and safety of all of our members.</div></div>
            <div class="fx vc sb">
            <a href="/" class="logo">
                <img src="/design/{$settings->theme|escape}/images/logo.svg" alt="Outpost logo">
            </a>
            <ul class="menu">
                
                <li>
                    <a href="/hot-deals"><div class="green">Hot deals</div></a>
                </li>
                <li>
                    <a href="/full-apartments"><div class="green">Full Apartments</div></a>
                </li>

                
                {foreach $pages as $p}
                    {if $p->menu_id==1}
                         {if $p->url == 'join-us'}
                        <li class="{if $page && $page->id == $p->id && !$author && !$tag}selected{/if}">
                            <a href="{if $apply_form}#apply{else}/join-us{/if}" class="button {if $apply_form}anchor{/if}">{$p->name|escape}</a>
                        </li>
                        {elseif $p->url != "" && $p->url != 'faq' && $p->url != 'blog' && $p->url != 'our-houses'}
                        <li {if $page && $page->id == $p->id && !$author && !$tag} class="selected"{/if}>
                            {if $p->id == 100}
                                <a href="{$p->url}" class="button">{$p->name|escape}</a>
                            {elseif !$user && $p->url=='current-members'}
                                <a href="https://ne-bo.com/user/login" target="_blank" rel="nofollow noopener noreferer">{$p->name|escape}</a>
                            {else}
                                <a href="{$p->url}">{$p->name|escape}</a>
                            {/if}
                        </li>
                        {elseif $p->url == 'our-houses'}
                        <li class="menu_about">
                            <span>Our houses</span>
                            <ul class="hide">
                                {foreach $pages as $p}
                                {if $p->menu_id==5}
                                    <li>
                                        <a href="{$p->url}">{$p->name|escape}</a>
                                    </li>
                                {/if}
                                {/foreach}
                            </ul>
                        </li>
                        <li>
                            <a href="/coliving">Coliving</a>
                        </li>
                        {elseif $p->url == 'faq'}
                        <li class="menu_about">
                            <span>Outpost Club</span>
                            <ul class="hide">
                                <li>
                                    <a href="/about">About</a>
                                </li>
                                <li>
                                    <a href="/memberships">Memberships</a>
                                </li>
                                <li>
                                    <a href="{$p->url}">{$p->name|escape}</a>
                                </li>
                                <li>
                                    <a href="/blog">Blog</a>
                                </li>
                                <li>
                                    <a href="/partner-with-us">Partner with us</a>
                                </li>
                                <li>
                                    <a href="/press">Press</a>
                                </li>
                                <li>
                    <a href="/covid-19"><div>COVID-19</div></a>
                </li>
                            </ul>
                        </li>
                        {/if}
                    {/if}
                {/foreach}
            </ul>
            <div class="open_sidebar">
                <i></i>
            </div>
            </div>
        </div>
        <div class="main">
            {if $page->bg_text}
                {$page->bg_text}
            {else}
                <h1 class="h1">{$page->header}</h1>
            {/if}
            {if $page->menu_id == 5}
            {include file='bx/main_search.tpl'} 
            {/if}
        </div>
    </div>
    {elseif $post->image}
    <div class="full_width top_block">
        <img class="top_bg" src="{$config->blog_images_dir}{$post->image}" alt="{$post->name}">
        {if !$members_menu}
        <div class="covid header">
            <div class="covid19">As always, the well-being of our members is our top priority, and we're committed to providing a safe environment for members at all Outpost houses as the novel coronavirus pandemic continues to evolve.
            <input type="checkbox" id="show_text" class="show_covid_text hide"> 
            <label for="show_text" class="show_covid_text_label"><i></i></label>
            <div class="hide_text">We're following expert recommendations within our houses to ensure your safety, 
            including by leaving rooms empty for at least 24 hours after a move-out, providing our staff with appropriate PPE and using high-strength Lysol, Clorox and bleach disinfectants to clean after every guest departure. We'll continue to adapt our strategies moving forward to ensure the health and safety of all of our members.</div></div>
            <div class="fx vc sb">
            <a href="/" class="logo">
                <img src="/design/{$settings->theme|escape}/images/logo.svg" alt="Outpost logo">
            </a>
            <ul class="menu">
                <li>
                    <a href="/hot-deals"><div class="green">Hot deals</div></a>
                </li>
                <li>
                    <a href="/full-apartments"><div class="green">Full Apartments</div></a>
                </li>

                
                {foreach $pages as $p}
                    {if $p->menu_id==1}
                        
                        {if $p->url != "" && $p->url != 'faq' && $p->url != 'blog' && $p->url != 'our-houses'}
                        <li class="{if $page && $page->id == $p->id}selected{/if}">
                            <a href="{$p->url}"{if $p->id == 100} class="button"{/if}>{$p->name|escape}</a>
                        </li>
                        {elseif $p->url == 'our-houses'}
                        <li class="menu_about">
                            <span>Our houses</span>
                            <ul class="hide">
                                {foreach $pages as $p}
                                {if $p->menu_id==5}
                                    <li>
                                        <a href="{$p->url}">{$p->name|escape}</a>
                                    </li>
                                {/if}
                                {/foreach}
                            </ul>
                        </li>
                        <li>
                            <a href="/coliving">Coliving</a>
                        </li>
                        {elseif $p->url == 'faq'}
                        
                        <li class="menu_about">
                            <span>Outpost Club</span>
                            <ul class="hide">
                                <li>
                                    <a href="/about">About</a>
                                </li>
                                <li>
                                    <a href="/memberships">Memberships</a>
                                </li>
                                <li>
                                    <a href="/new-york">Our houses</a>
                                </li>
                                <li>
                                    <a href="{$p->url}">{$p->name|escape}</a>
                                </li>
                                <li>
                                    <a href="/blog">Blog</a>
                                </li>
                                <li>
                                    <a href="/partner-with-us">Partner with us</a>
                                </li>
                                <li>
                                    <a href="/press">Press</a>
                                </li>
                                <li>
                    <a href="/covid-19"><div>COVID-19</div></a>
                </li>
                                
                            </ul>
                        </li>
                        {/if}
                    {/if}
                {/foreach}
            </ul>
            <div class="open_sidebar">
                <i></i>
            </div>
            </div>
        </div>
        {/if}
        <div class="main">
            <h1 class="h1">{$post->name}</h1>
        </div>

    </div>
    {/if}

    <div class="sidebar_bg"></div>

    <div class="sidebar">   
        <div class="wrapper">

            {if $members_menu}

                <ul class="menu">
                    <li class="user_n">
                        <div class="u_info fx">
                            <div class="icon">
                                <i class="fa fa-user-circle-o"></i>
                            </div>
                            <div class="title_bx fx">
                                <div class="title">{$smarty.session.user_name}</div>
                            </div>
                        </div><!-- user_info -->
                        <div class="options_line">
                            <a href="user/profile/">Profile</a>
                            <a class="logout" href="user/logout/">Logout</a>
                        </div>
                    </li>
                    {if $user->type==2}
                    <li>
                        <a href="houseleader">House Leader</a>
                    </li>
                    {else if $user->type==3}
                    <li>
                        <a href="restocking">Restocking</a>
                    </li>
                    {/if}
                    {if $user->type!=3}
                    <li>
                        <a href="/current-members">Current Members</a>
                    </li>
                    {if $categories}
                        {foreach $categories as $c}
                            {if $c->visible}
                            <li>
                                <a href="catalog/{$c->url}">{$c->name|escape}</a>
                            </li>
                            {/if}
                        {/foreach}
                    {/if}
                    <li>
                        <a href="current-members#essential_documents">Essential Documents</a>
                    </li>
                    {*<li>
                        <a href="technical-issues">Technical issues</a>
                    </li>*}
                    <li>
                        <a class="button" href="technical-issues#request_form">Technical Request</a>
                    </li>
                    {/if}
                </ul>
            {else}

             <ul class="menu">
                <li>
                    <a href="/hot-deals"><div class="green">Hot deals</div></a>
                </li>
                <li>
                    <a href="/full-apartments"><div class="green">Full Apartments</div></a>
                </li>

                <li>
                    <a href="/coliving">Coliving</a>
                </li>
                {foreach $pages as $p}
                    {if $p->menu_id==1}
                         {if $p->url == 'join-us'}
                        <li{if $page && $page->id == $p->id && !$author && !$tag} class="selected"{/if}>
                            {*<a href="{if $apply_form}#apply{else}/join-us{/if}" class="button {if $apply_form}anchor{/if}">{$p->name|escape}</a>*}
                            <a href="/join-us" class="button">{$p->name|escape}</a>
                        </li>
                        {elseif $p->url != "" && $p->url != 'faq' && $p->url != 'our-houses'}
                        <li{if $page && $page->id == $p->id && !$author && !$tag} class="selected"{/if}>
                            {if $p->id == 100}
                                <a href="{$p->url}" class="button">{$p->name|escape}</a>
                            {elseif !$user && $p->url=='current-members'}
                                <a href="https://ne-bo.com/user/login" target="_blank" rel="nofollow noopener noreferer">{$p->name|escape}</a>
                            {else}
                                <a href="{$p->url}">{$p->name|escape}</a>
                            {/if}
                        </li>
                        {elseif $p->url == 'our-houses'}
                        <li class="menu_about">
                            <span>Our houses</span>
                            <ul>
                                {foreach $pages as $p}
                                {if $p->menu_id==5}
                                    <li>
                                        <a href="{$p->url}">{$p->name|escape}</a>
                                    </li>
                                {/if}
                                {/foreach}
                            </ul>
                        </li>
                        {elseif $p->url == 'faq'}
                        <li>
                            <a href="{$p->url}">{$p->name|escape}</a>
                        </li>
                        <li class="menu_about">
                            <span>Outpost Club</span>
                            <ul>
                                <li>
                                    <a href="/about">About</a>
                                </li>
                                <li>
                                    <a href="/memberships">Memberships</a>
                                </li>
                                <li>
                                    <a href="/new-york">Our houses</a>
                                </li>
                                <li>
                                    <a href="/partner-with-us">Partner with us</a>
                                </li>
                                <li>
                                    <a href="/press">Press</a>
                                </li>
                                <li>
                    <a href="/covid-19"><div>COVID-19</div></a>
                </li>
                            </ul>
                        </li>
                        {/if}
                    {/if}
                {/foreach}
            </ul>
            {/if}

            <div class="info">
                <a href="tel:+18337076611">+1 (833) 707-6611</a>
                <a href="mailto:info@outpost-club.com">info@outpost-club.com</a>
            </div>

        </div><!-- wrapper -->  
        <div class="close">
            <i></i>
        </div>
    </div><!-- sidebar -->
       
   {$content}
   {*
   <div class="full_screen_banner {if $smarty.cookies.banner}hide{/if}">
        <div class="close_button"></div>
        <div class="banner_text">
            <div class="fx vc w c">
                <p>Get a FREE iPad when you sign a 12-month lease at our newest Lafayette House! This offer is only available to the first five people to sign by Sept. 30 — so why wait?</p>
                <a href="https://bit.ly/2FraOGc" class="button red" target="_blank">Book a Room</a>
            </div>
        </div>
    </div>
    *}

   <div class="footer">
        {if !$apply_button_hide}
        {*
        <div class="fx c v vc grey">
            <a href="/join-us" class="button1 black">Apply Now</a>
            
            <div class="socials fx">
                <a href="mailto:info@outpost-club.com" target="_blank">
                    <img src="/design/{$settings->theme|escape}/images/icons/email.svg" alt="Outpost email">
                </a>
                <a href="http://instagram.com/outpost_club" target="_blank" rel="nofollow">
                    <img src="/design/{$settings->theme|escape}/images/icons/instagram.svg" alt="Outpost instagram">
                </a>
                <a href="https://twitter.com/outpost_club" target="_blank" rel="nofollow">
                    <img src="/design/{$settings->theme|escape}/images/icons/twitter.svg" alt="Outpost twitter">
                </a>
                <a href="https://www.linkedin.com/company-beta/17932725/" target="_blank" rel="nofollow">
                    <img src="/design/{$settings->theme|escape}/images/icons/linkedin.svg" alt="Outpost linkedin">
                </a>
                <a href="http://www.facebook.com/outpostclubNY/" target="_blank" rel="nofollow">
                    <img src="/design/{$settings->theme|escape}/images/icons/facebook.svg" alt="Outpost facebook">
                </a>
            </div>
            
        </div>
        *}
        {/if}
        <div class="fx c v vc grey">
            <ul class="second_menu main_width">
                <li>
                    <a href="/faq">Faq</a>
                </li>
                {foreach $pages as $p}
                    {if $p->menu_id==2}
                        <li>
                            <a href="{$p->url}">{$p->name|escape}</a>
                        </li>
                    {/if}
                {/foreach}
            </ul>
        </div>
        <div class="low_footer">
            <ul class="second_menu main_width">
                {foreach $pages as $p}
                    {if $p->menu_id==13}
                        <li>
                            <a href="{$p->url}">{$p->name|escape}</a>
                        </li>
                    {/if}
                {/foreach}
                
            </ul>
            <div class="info main_width">
                <p>Outpost Club, 10 Hanover Square, New York, NY, 10005, United States</p> 
                <a href="tel:+18337076611">+1 (833) 707-6611</a>
                <a href="mailto:info@outpost-club.com">info@outpost-club.com</a>
                <div class="socials fx c">
                    <a href="https://www.instagram.com/outpostcoliving/?utm_source=outpost" data-tooltip="Instagram" target="_blank" rel="nofollow noopener noreferer">
                        <img src="/design/{$settings->theme|escape}/images/icons/instagram_w.svg" alt="Outpost instagram">
                    </a>
                    <a href="http://www.facebook.com/outpostclubNY/" data-tooltip="Facebook" target="_blank" rel="nofollow noopener noreferer">
                        <img src="/design/{$settings->theme|escape}/images/icons/facebook-logo.svg" alt="Outpost facebook">
                    </a>
                </div>
            </div>

       </div>
       
   </div>
   <div class="scroll_top"></div>

    {if $jquery_in_head != 1}
    <script src="js/jquery/jquery.js?v1.0.0"></script>
    {/if}
    <script src="design/{$settings->theme}/js/slick/slick.min.js?v1.0.0"></script>
    <script src="js/fancybox/jquery.fancybox.min.js"></script>
    <script src="design/{$settings->theme}/js/jquery.form.min.js"></script>
    <script src="design/{$settings->theme}/js/main.js?v1.41"></script>
    <script src="design/{$settings->theme}/js/jquery.lazyloadxt.js"></script>
    <script src="design/{$settings->theme}/js/autocomplete/jquery.autocomplete-min.js"></script>
    {if $js_include}
        <script src="{$js_include}"></script>
    {/if}
    {if $smarty.session.admin == 'admin' && $on}
        <script src ="js/admintooltip/admintooltip.js"></script>
    {/if}

    
</body>

</html>