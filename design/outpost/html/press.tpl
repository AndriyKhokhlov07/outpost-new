{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

{*
<div class="main_width page_wrap center">
	<h1 class="h1">Press</h1>
	<h5 class="h5">Catch up on our latest press and contact us if you’re working on a story</h5>
	<hr class="hr m0">
</div>
*}
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
    <h2 class="h1 center">What Is Coliving?</h2>
    <p class="big_p"><strong>Coliving (co living) is a shared-housing model</strong> in which communities are built around shared spaces in the home, allowing residents to live more affordably and socially.</p>
    <hr class="hr">
    </div>
</div>
<div class="main_width press">
    <div class="press_form">
        <!--[if lte IE 8]>
        <script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2-legacy.js"></script>
        <![endif]-->
        <script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2.js"></script>
        <script>
          hbspt.forms.create({
            portalId: "4068949",
            formId: "5a499813-0ec3-4c59-9ea7-5f43413ff61d"
        });
        </script>
    </div>
	<hr class="hr m0">
</div>
<div class="main_width">
	<h6 class="h5">Want to learn more? Check out our blog:</h6>
	<a href="blog" class="button1 black">Blog</a>
	<hr class="hr m0">
</div>

{get_posts type=2 var=s_reviews limit=10}
{$reviews_title='What People Are Saying:'}
{include file='bx/reviews_slider.tpl'}


<div class="main_width center find_us">
	<h6 class="h1">Find us on</h6>
    <div class="fx c w vc ch3 partners_slider">
        <div class="item">
            <a href="https://www.forbes.com/sites/ranagood/2020/01/28/outpost-making-long-term-city-travel-reality/#a34a44991a0e" target="_blank" rel="nofollow noopener noreferer">
                <img src="design/{$settings->theme|escape}/images/forbes.svg" title="Press (Image-3), outpost-club.com" alt="Press (Image-3)" >
            </a>
        </div>
        <div class="item">
            <!-- <a href="https://www.nytimes.com/2019/12/23/realestate/sharing-a-room-in-bedford-stuyvesant-and-making-new-friends.html" target="_blank" rel="nofollow noopener noreferer"> -->
            <a href="https://drive.google.com/file/d/18FPOeyiBtY5n-NKy8DhSn5ZBuhA_9Bwr/view?usp=share_link"> 
                <img src="design/{$settings->theme|escape}/images/new-york-city-logo.png" title="Press (Image-4), outpost-club.com" alt="Press (Image-4)" >
            </a>
        </div>
        <div class="item">
            <!-- <a href="https://www.nytimes.com/2019/12/23/realestate/sharing-a-room-in-bedford-stuyvesant-and-making-new-friends.html" target="_blank" rel="nofollow noopener noreferer"> -->
            <a href="https://www.nytimes.com/2020/11/27/realestate/coliving-pandemic.html" target="_blank" rel="nofollow noopener noreferer"> 
                <img src="design/{$settings->theme|escape}/images/new-york-city-logo.png" title="Press (Image-4), outpost-club.com" alt="Press (Image-4)" >
            </a>
        </div>
        <div class="item">
            <a href="https://www.foxbusiness.com/real-estate/co-living-real-estate-trend-has-renters-saving-thousands?fbclid=IwAR3G8nt2xCNOJr01TjFhmHq0LT5ZjrxLZtyYyT-wBGvNsfyDt6tsDfFngsg" target="_blank" rel="nofollow noopener noreferer">
                <img src="design/{$settings->theme|escape}/images/fox.png" title="Press (Image-5), outpost-club.com" alt="Press (Image-5)" >
            </a>
        </div>
    	<div class="item">
    		<a href="https://medium.com/qwerkycoliving/the-worlds-first-coliving-conference-co-liv-review-85e8d1a7ac09" target="_blank" rel="nofollow noopener noreferer">
    			<img src="design/{$settings->theme|escape}/images/icons/medium.svg" title="Press (Image-6), outpost-club.com" alt="Press (Image-6)" >
    		</a>
        </div>
        <div class="item">
        	<a href="https://coliving.com/blog/breaking-the-preconceived-notions-of-coliving" target="_blank" rel="nofollow noopener noreferer">
        		<img src="design/{$settings->theme|escape}/images/icons/coliving_logo.svg" title="Press (Image-7), outpost-club.com" alt="Press (Image-7)" >
        	</a>
        </div>
        <div class="item">
        	<div>
        		<img src="design/{$settings->theme|escape}/images/dislocation.jpg" title="Press (Image-8), outpost-club.com" alt="Press (Image-8)" >
        	</div>
        </div>
    	<div class="item">
    		<a href="http://au.blurb.com/" target="_blank" rel="nofollow noopener noreferer">
        		<img src="design/{$settings->theme|escape}/images/blurb-logo.png" title="Press (Image-9), outpost-club.com" alt="Press (Image-9)" >
        	</a>
    	</div>
    </div>
</div>