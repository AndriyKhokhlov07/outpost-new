<!DOCTYPE html>
<html lang="en" {if $page->url == 'faq'}itemscope itemtype="https://schema.org/FAQPage"{/if}>
<head>
{if !$lighthouse}
{literal}
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-KXBPTWX');
</script>

<!-- End Google Tag Manager -->
<script>var s=document.createElement("script");s.src="https://widget.vivacityapp.com/widget.js";document.head.appendChild(s);s.onload=function(){window.mpWidget.init({appid: "641402ecb6312803d821b8d6"})};</script>
{/literal}
{/if}
    <base href="{$config->root_url}/">
    <title>{$meta_title|escape}</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="{$meta_description|escape}">
    {*<meta name="keywords"    content="{$meta_keywords|escape}" />*}
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    {if in_array($page->id, [193, 475, 476, 356, 301]) || $page->menu_id==15 || $noindex_nofollow || in_array($smarty.get.tm, ['new', 2])}
        <meta name="robots" content="noindex, nofollow">
    {elseif $author || $tag || $noindex_follow}
        <meta name="robots" content="noindex, follow">
    {/if}

    {if isset($canonical)}
        <link rel="canonical" href="{$config->root_url}{$canonical}{if $page_type=='blog' && $current_page_num>1}/page-{$current_page_num}{/if}">
    {elseif $page}
        <link rel="canonical" href="{$config->root_url}/{$page->url}">
    {/if}

    {if $page_type=='blog'}
        {if $current_page_num==2}
            <link rel="prev" href="{$config->root_url}/blog">
        {elseif $current_page_num>2}
            <link rel="prev" href="{$config->root_url}/blog/page-{$current_page_num-1}">
        {/if}
        {if $current_page_num<$total_pages_num}
            <link rel="next" href="{$config->root_url}/blog/page-{$current_page_num+1}">
        {/if}
    {else}
        {if $current_page_num==2}
            <link rel="prev" href="{$config->root_url}{url page=null}">
        {elseif $current_page_num>2}
            <link rel="prev" href="{$config->root_url}{url page=$current_page_num-1}">
        {/if}
        {if $current_page_num<$total_pages_num}
            <link rel="next" href="{$config->root_url}{url page=$current_page_num+1}">
        {/if}
    {/if}

    <link href="design/{$settings->theme|escape}/images/favicon.ico" rel="icon"          type="image/x-icon">
    <link href="design/{$settings->theme|escape}/images/favicon.ico" rel="shortcut icon" type="image/x-icon">

    <link href="design/{$settings->theme|escape}/js/slick/slick.css" rel="stylesheet">
    <link href="design/{$settings->theme|escape}/js/slick/slick-theme.css" rel="stylesheet">
    <link href="js/fancybox/jquery.fancybox.min.css" rel="stylesheet">

    <link href="design/{$settings->theme|escape}/css/style.css?v1.0.10" rel="stylesheet">
    <link href="design/{$settings->theme|escape}/css/style2.css?v1.0.0" rel="stylesheet">
    <link href="design/{$settings->theme|escape}/css/style3.css?v1.0.0" rel="stylesheet">

    <meta property="og:locale" content="en_US">
    <meta property="og:site_name" content="{$meta_title|escape}">

    {if $page_type == "post"}
        <meta property="og:type" content="article"/>
        <meta property="og:title" content="{$post->name|escape}">
        {if $meta_description}
            <meta property="og:description" content="{$meta_description}">
        {/if}
        {if $post->image}
            <meta property="og:image" content="{$config->root_url}/files/blog_originals/{$post->image}">
        {else}
            <meta property="og:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo_b.svg">
        {/if}
        <meta property="og:url" content="{$config->root_url}/blog/{$post->url}">
    {else}
        <meta property="og:title" content="{$page->name|strip_tags}">
        {if $meta_description}
            <meta property="og:description" content='{$meta_description}'>
        {/if}
        {if $page->image}
            <meta property="og:image" content="{$page->image|resize:'pages':500:500}">
        {else}
            <meta property="og:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo_b.svg">
        {/if}
        <meta property="og:url" content="{$config->root_url}/{$page->url}">
    {/if}
</head>

<body{if $this_page} class="c_{$this_page}"{/if}>
{if !$lighthouse}
<!-- Facebook Button -->
{literal}
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v14.0&appId=1468616060267565&autoLogAppEvents=1" nonce="YkwPuXaG"></script>
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KXBPTWX" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
{/literal}
{/if}



{include file='bx/header.tpl'}


<div class="content_wrapper main_width">
    {$content}

    {if $page->body2 && !$seo_text_hide}
        <div class="seo-text">
            <div class="descr-container">
                <div class="descr-text">{$page->body2}</div>
            </div>
            <span class="moreless-button" data-text="Read more"></span>
        </div>
    {/if}

    {if $page->blocks2 && !$page_faq_hide}
        {$faqs=$page->blocks2}
        {include file='bx/faq.tpl'}
    {/if}
</div><!-- content_wrapper -->






{include file='bx/footer.tpl'}
{include file='bx/mob_sidebar.tpl'}









{*
<div class="fix header{if $page->image || $post->image} v2{/if}">
    <div class="fx vc sb">
        {if $this_page == "home"}
    <div class="logo">
        <img src="/design/{$settings->theme|escape}/images/logo_ukr.svg" alt="Outpost logo">
    </div>
    {else}
    <a href="/" class="logo">
        <img src="/design/{$settings->theme|escape}/images/logo_ukr.svg" alt="Outpost logo">
    </a>
    {/if}
    <ul class="menu">

        <li>
            <a href="/hot-deals"><div class="green">Hot Deals</div></a>
        </li>
        <li class="menu_about">
            <span>Our Services</span>
            <ul class="hide">
                <li>
                    <a href="/coliving">Coliving</a>
                </li>
                <li>
                    <a href="/full-apartments">Full Apartments</a>
                </li>
                <li>
                    <a href="/student-housing-nyc">Student Housing</a>
                </li>
                <li>
                    <a href="/corporate-group">Corporate Group</a>
                </li>
            </ul>
        </li>


        {foreach $pages as $p}
            {if $p->menu_id==1}
                {if $p->url == 'join-us'}
                    <li{if $page && $page->id == $p->id && !$author && !$tag} class="selected"{/if}>
                        <a href="{if $apply_form}#apply{elseif $apply_link}{$apply_link}{elseif $page->id == 424}cassa-application{elseif $page->id == 428}philadelphia-application{else}/online-questionnaire{/if}" class="button {if $apply_form}anchor{/if}">{if $apply_name}{$apply_name}{elseif $page->id == 424 || $page->id == 428}{$avalability_button_text}{elseif $page->id == 413}{$apply_button_text}{else}{$p->name|escape}{/if}</a>
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

                {elseif $p->url == 'faq'}
                <li class="menu_about">
                    <span>Outpost Club</span>
                    <ul class="hide">
                        <li>
                            <a href="/about">About</a>
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


{if $page->image && $page->parent_id==0 && !$author && !$tag  && $current_page_num<2}
<div class="full_width top_block ">
{if $is_mobile == 1}
<img class="top_bg" src="{$page->image|resize:'pages':800:800}" alt="{$page->header}">
{else}
<img class="top_bg" src="{$page->image|resize:'pages':1600:1600}" alt="{$page->header}">
{/if}
<div class="header">
    <div class="fx vc sb">
          <a href="/" class="logo">
        <img src="/design/{$settings->theme|escape}/images/logo_ukr.svg" alt="Outpost logo">
    </a>
    <ul class="menu">
        <li>
            <a href="/hot-deals"><div class="green">Hot Deals</div></a>
        </li>
        <li class="menu_about">
            <span>Our Services</span>
            <ul class="hide">
                <li>
                    <a href="/coliving">Coliving</a>
                </li>
                <li>
                    <a href="/full-apartments">Full Apartments</a>
                </li>
                <li>
                    <a href="/student-housing-nyc">Student Housing</a>
                </li>
                <li>
                    <a href="/corporate-group">Corporate Group</a>
                </li>
            </ul>
        </li>

        {foreach $pages as $p}
            {if $p->menu_id==1}
                 {if $p->url == 'join-us'}
                <li class="{if $page && $page->id == $p->id && !$author && !$tag}selected{/if}">
                    <!-- <a href="{if $apply_form}#apply{else}/online-questionnaire{/if}" class="button {if $apply_form}anchor{/if}">{$p->name|escape}</a> -->
                    <a href="{if $apply_form}#apply{elseif $apply_link}{$apply_link}{elseif $page->id == 424}cassa-application{elseif $page->id == 428}philadelphia-application{else}/online-questionnaire{/if}" class="button {if $apply_form}anchor{/if}">{if $apply_name}{$apply_name}{elseif $page->id == 424 || $page->id == 428} {$avalability_button_text}{elseif $page->id == 413}{$apply_button_text}{else}{$p->name|escape}{/if}</a>
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
                {elseif $p->url == 'faq'}
                <li class="menu_about">
                    <span>Outpost Club</span>
                    <ul class="hide">
                        <li>
                            <a href="/about">About</a>
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
<div class=" header">
    <div class="fx vc sb">
    <a href="/" class="logo">
        <img src="/design/{$settings->theme|escape}/images/logo_ukr.svg" alt="Outpost logo">
    </a>
    <ul class="menu">
        <li>
            <a href="/hot-deals"><div class="green">Hot Deals</div></a>
        </li>
        <li class="menu_about">
            <span>Our Services</span>
            <ul class="hide">
                <li>
                    <a href="/coliving">Coliving</a>
                </li>
                <li>
                    <a href="/full-apartments">Full Apartments</a>
                </li>
                <li>
                    <a href="/student-housing-nyc">Student Housing</a>
                </li>
                <li>
                    <a href="/corporate-group">Corporate Group</a>
                </li>
            </ul>
        </li>


        {foreach $pages as $p}
            {if $p->menu_id==1}
                 {if $p->url == 'join-us'}
                <li class="{if $page && $page->id == $p->id && !$author && !$tag}selected{/if}">
                    <!-- <a href="{if $apply_form}#apply{else}/online-questionnaire{/if}" class="button {if $apply_form}anchor{/if}">{$p->name|escape}</a> -->
                    <a href="{if $apply_form}#apply{elseif $apply_link}{$apply_link}{elseif $page->id == 424}cassa-application{elseif $page->id == 428}philadelphia-application{else}/online-questionnaire{/if}" class="button {if $apply_form}anchor{/if}">{if $apply_name}{$apply_name}{elseif $page->id == 424 || $page->id == 428} {$avalability_button_text}{elseif $page->id == 413}{$apply_button_text}{else}{$p->name|escape}{/if}</a>
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

                {elseif $p->url == 'faq'}
                <li class="menu_about">
                    <span>Outpost Club</span>
                    <ul class="hide">
                        <li>
                            <a href="/about">About</a>
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
    <div class="id" id="t_apply"></div>
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
<div class="header">
    <div class="fx vc sb">
    <a href="/" class="logo">
        <img src="/design/{$settings->theme|escape}/images/logo_ukr.svg" alt="Outpost logo">
    </a>
    <ul class="menu">
        <li>
            <a href="/hot-deals"><div class="green">Hot Deals</div></a>
        </li>
        <li class="menu_about">
            <span>Our Services</span>
            <ul class="hide">
                <li>
                    <a href="/coliving">Coliving</a>
                </li>
                <li>
                    <a href="/full-apartments">Full Apartments</a>
                </li>
                <li>
                    <a href="/student-housing-nyc">Student Housing</a>
                </li>
                <li>
                    <a href="/corporate-group">Corporate Group</a>
                </li>
            </ul>
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

                {elseif $p->url == 'faq'}

                <li class="menu_about">
                    <span>Outpost Club</span>
                    <ul class="hide">
                        <li>
                            <a href="/about">About</a>
                        </li>
                        <li>
                            <a href="/our-houses">Our houses</a>
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
            {elseif $user->type==3}
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
            <li>
                <a class="button" href="technical-issues#request_form">Technical Request</a>
            </li>
            {/if}
        </ul>
    {else}

     <ul class="menu">
        <li>
            <a href="/hot-deals"><div class="green">Hot Deals</div></a>
        </li>
         <li class="menu_about">
             <span>Our Services</span>
             <ul>
                 <li>
                     <a href="/full-apartments">Full Apartments</a>
                 </li>
                 <li>
                     <a href="/corporate-group">Corporate Group</a>
                 </li>
                 <li>
                     <a href="/student-housing-nyc">Student Housing</a>
                 </li>
                 <li>
                     <a href="/coliving">Coliving</a>
                 </li>
             </ul>
         </li>

        {foreach $pages as $p}
            {if $p->menu_id==1}
                 {if $p->url == 'join-us'}
                <li{if $page && $page->id == $p->id && !$author && !$tag} class="selected"{/if}>
                    <a href="{if $apply_link}{$apply_link}{elseif $page->id == 424}cassa-application{elseif $page->id == 428}philadelphia-application{else}/online-questionnaire{/if}" class="button">{if $apply_name}{$apply_name}{elseif $page->id == 424 || $page->id == 428} {$avalability_button_text}{else}{$p->name|escape}{/if}</a>
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
                  <!--       <li>
                            <a href="/our-houses">Our houses</a>
                        </li> -->
                        <li>
                            <a href="/partner-with-us">Partner with us</a>
                        </li>
                        <li>
                            <a href="/press">Press</a>
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


{if $page->body2}
<div class="seo-text">
    <div class="descr-container">
        <div class="descr-text">{$page->body2}</div>
    </div>
    <span class="moreless-button" data-text="Read more"></span>
</div>
{/if}

{if $page->blocks2}
{$faqs=$page->blocks2}
{include file='bx/faq.tpl'}
{/if}



<div class="footer">
{if !$apply_button_hide}
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

    <div class="second_menu main_width">
        <a href="https://dhr.ny.gov/sites/default/files/466.15-notice-tenants-reasonable-accommodation.pdf" target="_blank" rel="nofollow noopener noreferer" class="info_txt" style="color: #fff; margin: 0 auto 30px; font-size: 16px">New York State Human Rights Law</a>
        <br>
        <p class="info_txt">Outpost Brokerage LLC, License 10991233003</p>
    </div>


    <p class="center main_width white txt" style="color: #fff; margin: 0 auto 35px;">*Household supplies can be changed or decreaased at Outpost Club’s discretion, or based on supply availability. Outpost is not responsible for temporary losses of utility service. Outpost Club is not responsible for any damages due to abcence of any supplies or utilities</p>
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
        <p class="info_txt"><span class="s">If you have a sales related question please call</span> <a href="tel:680-688-7678">680-688-7678</a></p>
        <p>PO Box 780556 Maspeth NY 11378</p>
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

<script src="design/{$settings->theme}/js/slick/slick.min.js?v1.0.0"></script>
<script src="js/fancybox/jquery.fancybox.min.js"></script>
<script src="design/{$settings->theme}/js/jquery.form.min.js"></script>
<script src="design/{$settings->theme}/js/jquery.cookie.js"></script>
<script src="design/{$settings->theme}/js/main.js?v1.54"></script>
<script src="design/{$settings->theme}/js/jquery.lazyloadxt.js"></script>
<script src="design/{$settings->theme}/js/autocomplete/jquery.autocomplete-min.js"></script>

{if $js_include}
<script src="{$js_include}"></script>
{/if}
{if $smarty.session.admin == 'admin' && $on}
<script src ="js/admintooltip/admintooltip.js"></script>
{/if}


*}







    <script src="js/jquery/jquery.js?v1.0.0"></script>
    <script src="design/{$settings->theme}/js/jquery.lazyloadxt.js"></script>
    <script src="design/{$settings->theme}/js/slick/slick.min.js?v1.0.0"></script>
    <script src="js/fancybox/jquery.fancybox.min.js"></script>
    <script src="design/{$settings->theme}/js/jquery.form.min.js"></script>
    <script src="design/{$settings->theme}/js/jquery.cookie.js"></script>
    <script src="design/{$settings->theme}/js/autocomplete/jquery.autocomplete-min.js"></script>
    <script src="design/{$settings->theme}/js/main.js?v1.0.2"></script>
</body>
</html>