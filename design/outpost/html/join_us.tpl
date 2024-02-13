{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}
{$this_page='join_us' scope=parent}
{$apply_form="1" scope=parent}

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
    <div class="main_width apply_text {if $page->image == ''}page_wrap{/if}">
        {include file='bx/corona.tpl'} 
        <br>
        <p class="h5">After you fill out this form, you will be redirected to the next form, and receive an e-mail confirmation and/or a call from our booking department within 1-2 days. At that point, you will receive pricing and availability.</p>
        <div class="form_acnhor" id="apply"></div>
        <div class="press_form">
            <script src="//js.hsforms.net/forms/v2.js"></script>
            <script>
              hbspt.forms.create({
                portalId: "4068949",
                formId: "f7fcf175-50eb-4637-b9f8-996aacd3bd71"
            });
            </script>
        </div>
        <div class="hr m0"></div>
    </div>
    <div class="main_width steps txt">
        <h4 class="h5 center">How it works:</h4>
        {*<div class="fx ch3">
            <div>
                <img src="design/{$settings->theme|escape}/images/icons/form.svg" alt="Form">
                <p class="title">Step 1 <br> Fill out the form</p>
                <p class="text">To get pricing and availability, fill out the form on this page</p>

            </div>
            <div>
                <img src="design/{$settings->theme|escape}/images/icons/phone2.svg" alt="Interview">
                <p class="title">Step 2 <br> Have a Quick Interview</p>
                <p class="text">Schedule a time to talk or fill out our interview form</p>
            </div>
            <div>
                <img src="design/{$settings->theme|escape}/images/icons/house.svg" alt="Move in house">
                <p class="title">Step 3 <br> Move In!</p>
                <p class="text">You`re all set! We’re excited to welcome you to one of our coliving spaces here in NYC!</p>
            </div>
        </div>*}
        
        {include file='bx/how_it_works.tpl'} 
        
    </div>  
    

