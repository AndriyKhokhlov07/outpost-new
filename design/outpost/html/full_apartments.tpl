{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

<div class="promo main_width txt room_blocks">
{foreach $full_apartments as $p}

    {$breadcrumb_n=0}	
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



    <div class="room_block">
        {foreach $p->blocks as $pb}
        <div class="fx ch2">
            <div>
                {if $pb->images != ""}
                <div class="img_slider">
                   {foreach $pb->images as $img}
                    <div>
                        <div class="img">
                            {if $img@iteration==1}
                                <img class="lazy" data-src="{$img|resize:'gallery':700:700}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Full Apartments (Image-1), outpost-club.com" alt="Full Apartments  (Image-1)" >
                            {else}
                                <meta itemprop="image" content="{$img|resize:'gallery':700:700}">
                                <img data-lazy="{$img|resize:'gallery':700:700}" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" title="Full Apartments (Image-2), outpost-club.com" alt="Full Apartments  (Image-2)" />
                            {/if}
                        </div>  
                    </div>
                    {/foreach}
                </div>   
                {/if}             
            </div>
            <div>
                <p class="h5">{$p->header} <br><span>{$p->name}</span></p>
                <p class="green">Promotional price {$pb->price} per month</p>
                <div class="info">
                    <ul>
                        <li>Starting: {$pb->move_in}</li>
                        <li>Minimum stay: {$pb->min_stay}</li>
                        <li>Maximum stay: {$pb->max_stay}</li>
                    </ul>
                    {$pb->body}
                </div>
            </div>
        </div>
        <div class="center">
            <a href="/full-apartments-form" target="_blank" rel="nofollow noopener noreferer" class="button2 red">Schedule a Tour</a>
        </div>
        {/foreach}
    </div>
{/foreach}
</div>




