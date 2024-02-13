{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

<div class="main_width center ">
{$breadcrumb_n=0}	
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

<div class="land w1200 txt">
    <div class="first_block">
        <div class="img">
            <img alt="Coliving (Image-1)" title="Coliving (Image-1), outpost-club.com" src="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-concept4.jpg">
        </div>
        <div class="right_bl fx v vc">
            <h3 class="h1 center">Coliving Concept</h3>
            <p class="center big_p">Coliving, also known as communal living, cohousing or shared living, allows members to build communities around shared spaces like kitchens and living rooms while renting a private or shared bedroom. <br>You’ll never have to worry about utilities or WiFi, the house will always be stocked with essentials and our cleaning crew comes regularly.</p>
        </div>
    </div>
</div>
<div class="main_width advantages txt">
        <h3 class="h3 center">What's included with your bedroom in our all-inclusive prices:</h3>
        {include file='bx/adv_block.tpl'} 
    </div>
    <div class="center">
        <a href="online-questionnaire/?utm_source=landing-page&utm_medium=coliving" class="button2 red">Apply now</a>
    </div>
    <hr class="hr m0">
</div>
<div class="main_width  txt">
    <h4 class="h1 center">Coliving Spaces</h4>
    <p class="big_p center">Each of our houses includes one or more kitchens, common areas and co-working spaces, allowing you plenty of room to cook, work and relax, all while getting to know people from all around the world. All of our houses were exclusively designed to be comfortable to all members in any room of the house.</p>
    <p class="big_p center">Your room will be move-in ready, just like the rest of the house; there’s no need to even bring a pillow. Our kitchens are fully stocked with appliances, cookware and everything else you’ll need to make a home-cooked meal. We also have 24/7 security in all common areas</p>
</div>
<div class="w100 land">
    <div class="fx gall w">
        <a alt="Coliving (Image-2)" title="Coliving (Image-2), outpost-club.com" class="img" href="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-concept-space1.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-concept-space1.jpg" ></a>
        <a alt="Coliving (Image-3)" title="Coliving (Image-3), outpost-club.com" class="img" href="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-concept-space2.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-concept-space2.jpg" ></a>
        <a alt="Coliving (Image-4)" title="Coliving (Image-4), outpost-club.com" class="img" href="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-concept-space3.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-concept-space3.jpg" ></a>
        <a alt="Coliving (Image-5)" title="Coliving (Image-5), outpost-club.com" class="img" href="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-concept-space4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-concept-space4.jpg" ></a>
    </div>    
</div>

<div class="main_width txt">
    <h4 class="h1 center">Community</h4>
    <p class="big_p center">Outpost Club is more than just a place to live and work. We’ve created a coliving community that offers both general and professional networking, giving you the opportunity to build relationships with people from all over the world with a variety of backgrounds and expertises.</p>
    <p class="big_p center">In addition to designing our spaces to make living together a breeze, we offer events to help you get to know the entire Outpost Club community, whether at a movie night or while kayaking on the East River.</p>
</div>
<div class="center">
        <a href="online-questionnaire/?utm_source=landing-page&utm_medium=coliving" class="button2 red">Apply now</a>
    </div>
<hr class="hr m0">
<div class="w100 commun commun_liv op_c wb_none">
    <div class="land_slider ">
        <div class="img">
            <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-com-1.jpg" title="Coliving (Image-6), outpost-club.com" alt="Coliving (Image-6)" >
        </div>
        <div class="img">
            <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-com-2.jpg" title="Coliving (Image-7), outpost-club.com" alt="Coliving (Image-7)" >
        </div>
        
        <div class="img">
            <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-com-3.jpg" title="Coliving (Image-8), outpost-club.com" alt="Coliving (Image-8)" >
        </div>
        <div class="img">
            <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-com-4.jpg" title="Coliving (Image-9), outpost-club.com" alt="Coliving (Image-9)" >
        </div>
    </div>
</div>

<div class="main_width">
    <h4 class="h1 center">Our Locations</h4>
    <p class="big_p center">Our shared apartments are located in some of the most desired cities.</p>
    <br>
    <div class="fx ch2 w">
        {*
        <div class="room center">
            <a class="img" href="san-francisco">
                <img src="/design/{$settings->theme|escape}/images/landing/co-liv/lakeview-bedroom-2.jpg" alt="San Francisco coliving">
            </a>
            <a class="h2" href="san-francisco">San Francisco</a>
        </div>
        *}
        <div class="room center">
            <a class="img" href="philadelphia">
                <img alt="Coliving (Image-6)" title="Coliving (Image-6), outpost-club.com" src="/design/{$settings->theme|escape}/images/landing/the-mason-on-chestnut-philadelphia.jpg" title="Coliving (Image-10), outpost-club.com" alt="Coliving (Image-10)" >
            </a>
            <a class="h2" href="philadelphia">Philadelphia</a>
        </div>
        <div class="room center">
            <a class="img " href="new-york">
                <img alt="Coliving (Image-7)" title="Coliving (Image-7), outpost-club.com" src="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-concept-manhatten.jpg" title="Coliving (Image-11), outpost-club.com" alt="Coliving (Image-11)" >
            </a>
            <a class="h2" href="new-york">New York</a>
        </div>
    </div>
    <hr class="hr">
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
                <div class="text">We have single rooms starting at $1350 and shared rooms starting at $750<div>
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

{get_posts type=2 var=s_reviews limit=5}
{include file='bx/reviews_slider.tpl'}

{include file='bx/blog_list.tpl'} 
