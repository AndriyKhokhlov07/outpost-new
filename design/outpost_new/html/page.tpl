{* Шаблон текстовой страницы *}

{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

{$this_page='page' scope=parent}

{if $page->menu_id==7}
{$members_menu=1 scope=parent}
{/if}

<!-- <div class="path">
	<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
	   <a href="{$config->root_url}/" itemprop="url"><span itemprop="title">Главная</span></a> 
    </div>
    {if $page->parent}
    <div itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
	   <a href="{$page->parent->url}" itemprop="url"><span itemprop="title">{$page->parent->name}</span></a>
    </div>
    {/if}
	<div itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
		<a href="{$config->root_url}/{$page->url}" itemprop="url">
			<span itemprop="title">{$page->name}</span>
		</a>
	</div>                
</div> -->

<!-- Заголовок страницы -->
<!-- <h1 data-page="{$page->id}" itemprop="name">{$page->header|escape}</h1> -->



<div class="main_width {if $page->image == ''}page_wrap_{/if} {if !in_array($page->id, [475, 476]) && $page->menu_id!=15}faq{/if}">
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
    {if in_array($page->id, [475, 476]) || $page->menu_id==15}
        <br>
        <br>
        <p class="big_p center">Moving to New York was never easier and affordable as it is now, with Outpost Club!</p>
        <br>
        <br>
        <br>
        <div class="steps txt">
            <h4 class="h5 center">How it works:</h4>        
            {include file='bx/how_it_works.tpl'} 
        </div>
        <div class="press_form">
            {$page->body}
        </div>
    {else}
        {$page->body}
    {/if}
	

	{if $page->id == 333}
		<br>
		<h2 class="center">Feel free to reach out if you have any questions!</h2>
		<div class="press_form">
        	<script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2.js"></script>
			<script>
			  hbspt.forms.create({
				portalId: "4068949",
				formId: "01501a48-f9fc-4b4c-a3e4-38bf52f5a68f"
			});
			</script>
        </div>
	{/if}
</div>

