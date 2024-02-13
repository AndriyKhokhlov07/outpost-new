{* Шаблон текстовой страницы *}

{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

{$this_page='page' scope=parent}

{if $page->menu_id==7}
{$members_menu=1 scope=parent}
{/if}



<div class="main_width {if $page->image == ''}page_wrap_{/if}">
    <div class="main_width left">
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
    </div><!-- main_width left -->

    {$page->body}
	

    <br>
    <div class="press_form" style="max-width:600px">
        <script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2.js?pre=1"></script>
        <script>
        hbspt.forms.create({
            region: "na1",
            portalId: "4068949",
            formId: "9bff1d5b-27b5-4391-9feb-0554ecc22b57"
        });
        </script>
    </div>
</div>

