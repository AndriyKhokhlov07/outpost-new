{* 404 *}

{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

{$this_page='page' scope=parent}

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
    </div>
    <div class="page404_block fx w">
        <div class="image">
            <img src="design/outpost/images/icons/frame.svg" alt="404-icon">
        </div>
        <div class="txt_block">
            <p>The page you are looking for has been moved or deleted.<br> You can return to our homepage.</p>
        </div>
        <div class="link_block">
            <a href="/">Clicking<br> Here</a>
        </div>
    </div>
</div>

