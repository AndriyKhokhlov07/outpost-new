{* Шаблон текстовой страницы *}

{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

{$this_page='page' scope=parent}




<div class="main_width {if $page->image == ''}page_wrap{/if}">
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
	{include file='bx/corona.tpl'} 
	<br>
	<br>
	{*<h1 class="text_center">{$page->header|escape}</h1>*}

	<div class="press_form">
	<script src="//js.hsforms.net/forms/v2.js"></script>
	<script>

	  hbspt.forms.create({

		portalId: "4068949",

		formId: "c6cec043-3716-412d-9647-bc62643b3877"

	});
	</script>
    </div>



	{$page->body}
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



