{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}
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
   
    
</div>
<div class="main_width center ">

    <h2 class="h1 center">What Is Coliving?</h2>
    <p class="big_p"><strong>Coliving is a shared-housing model</strong> in which communities are built around shared spaces, encouraging residents to live more socially and allowing them to build lasting relationships with one another.</p>
    <hr class="hr">
</div>
<div class="land w1200 txt">
    <div class="first_block">
        <div class="img">
            <img src="/design/{$settings->theme|escape}/images/landing/philly-coliving/Mason-Units-1.jpg" title="Coliving in Philadelphia (Image-1), outpost-club.com" alt="Coliving in Philadelphia (Image-1)" >
        </div>
        <div class="right_bl fx v vc">
            <h3 class="h1 center">Coliving Concept</h3>
            <p class="center big_p">Coliving, also known as communal living, cohousing or shared living, allows members to build communities around shared spaces like kitchens, lounges and study rooms while renting a private or shared bedroom or unit. <br>You’ll never have to worry about things like setting up WiFi or dealing with household maintenance, and community areas ranging from a movie theater to a basketball court to a study lounge mean that whatever your need, you’ll be able to find it at the Mason on Chestnut.</p>
        </div>
    </div>
</div>
<div class="main_width advantages txt">
        <h3 class="h3 center">What's included with your bedroom in our all-inclusive prices:</h3>
        {include file='bx/adv_block.tpl'} 
    <hr class="hr m0">
</div>
<div class="main_width  txt">
    <h4 class="h1 center">Coliving Spaces</h4>
    <p class="big_p center">EWhether you’re renting a one-bedroom unit or a room in a shared pod, you’ll have access to all of the community spaces at the Mason on Chestnut, including our massive chef’s kitchen with plenty of seating for group dinners; a variety of fitness areas, including a hardwood basketball court, 24-hour fitness room and a yoga studio; multiple private study and conference rooms for group projects or private work; a game room with pool tables and ping pong; a 400-seat movie theater; and a variety of lounges and living areas for relaxing and getting to know your fellow residents.</p>
    <p class="big_p center">For your safety, our high-security buildings are controlled by electronic access, with bike storage, storage lockers and a 24-hour electronic package room.</p>
</div>
<div class="w100 land">
    <div class="fx gall w">
        <a class="img" href="/design/{$settings->theme|escape}/images/landing/philly-coliving/Mason-Units-2.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/philly-coliving/Mason-Units-2.jpg" title="Coliving in Philadelphia (Image-2), outpost-club.com" alt="Coliving in Philadelphia (Image-2)" ></a>
        <a class="img" href="/design/{$settings->theme|escape}/images/landing/philly-coliving/Mason-Units-3.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/philly-coliving/Mason-Units-3.jpg" title="Coliving in Philadelphia (Image-3), outpost-club.com" alt="Coliving in Philadelphia (Image-3)" ></a>
        <a class="img" href="/design/{$settings->theme|escape}/images/landing/philly-coliving/Mason-Units-4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/philly-coliving/Mason-Units-4.jpg" title="Coliving in Philadelphia (Image-4), outpost-club.com" alt="Coliving in Philadelphia (Image-4)" ></a>
        <a class="img" href="/design/{$settings->theme|escape}/images/landing/philly-coliving/Mason-Units-5.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/philly-coliving/Mason-Units-5.jpg" title="Coliving in Philadelphia (Image-5), outpost-club.com" alt="Coliving in Philadelphia (Image-5)" ></a>
    </div>    
</div>

<div class="main_width txt">
    <h4 class="h1 center">Community</h4>
    <p class="big_p center">The Mason on Chestnut is more than just a place to crash while you’re in school or working at an internship. We’ve built our community to be a home away from home, with plenty of amenities that make it easy to meet your neighbors and make lasting memories, all while building relationships with people from all over the world with a variety of backgrounds and expertises.</p>
</div>
<div class="w100 commun commun_liv op_c wb_none">
    <div class="land_slider ">
        <div class="img">
            <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-com-1.jpg" title="Coliving in Philadelphia (Image-6), outpost-club.com" alt="Coliving in Philadelphia (Image-6)" >
        </div>
        <div class="img">
            <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-com-2.jpg" title="Coliving in Philadelphia (Image-7), outpost-club.com" alt="Coliving in Philadelphia (Image-7)" >
        </div>
        
        <div class="img">
            <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-com-3.jpg" title="Coliving in Philadelphia (Image-8), outpost-club.com" alt="Coliving in Philadelphia (Image-8)" >
        </div>
        <div class="img">
            <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-lazy="/design/{$settings->theme|escape}/images/landing/co-liv/coliving-com-4.jpg" title="Coliving in Philadelphia (Image-9), outpost-club.com" alt="Coliving in Philadelphia (Image-9)" >
        </div>
    </div>
</div>

<div class="main_width steps txt">
    <h4 class="h1 center">How to reserve your spot</h4>
    <div class="fx ch3">
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/checklist.svg" title="Coliving in Philadelphia (Image-10), outpost-club.com" alt="Coliving in Philadelphia (Image-10)" >
            <p class="title">Step 1 <br>Fill out a short form</p>
            <p class="text">Fill out this form and a member of our team will contact you about pricing and availability.</p>

        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/smartphone.svg" title="Coliving in Philadelphia (Image-11), outpost-club.com" alt="Coliving in Philadelphia (Image-11)" >
            <p class="title">Step 2 <br> Get an offer within a day</p>
            <p class="text">Our team will give you a few different options based on your budget and our availability. </p>
        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/contract.svg" title="Coliving in Philadelphia (Image-12), outpost-club.com" alt="Coliving in Philadelphia (Image-12)" >
            <p class="title">Step 3 <br> Accept our offer and move in</p>
            <p class="text">You’re all set!</p>
        </div>
    </div>
    <p class="center">We’re excited to welcome you to one of our affordable apartments in Philadelphia.</p>
    <div class="center">
        <a href="mason-chestnut-appliaction/?utm_source=landing-page&utm_medium=intern-housing" class="button2 red">Apply now</a>
    </div>
    <hr class="hr m0">
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
                <div class="text">Before you move-in, we charge one full-month security deposit, which you will get back in full after your stay with us ends. However, if you would like to waive the security deposit, you may do so by using our partners at Qira! They’ll pay your security deposit for a small monthly fee.</div>
            </li>
             <li>
                <input class="hide" type="checkbox" id="faq_3">
                <label class="h5" for="faq_3">House Leaders</label>
                <div class="text">All of our locations have a House Leader. If you have any questions during your stay with us, they’ll be there for you.</div>
            </li>
            
             <li>
                <input class="hide" type="checkbox" id="faq_5">
                <label class="h5" for="faq_5">Pricing</label>
                <div class="text">We have Pod with Shared Bathroom starting at $899 and Studio with balcony and kitchen starting at $1649<div>
            </li>
        </ul>
    </div>
    <div></div>
</div>

{get_posts type=2 var=s_reviews limit=5}
{include file='../bx/reviews_slider.tpl'}

{include file='../bx/blog_list.tpl'}
