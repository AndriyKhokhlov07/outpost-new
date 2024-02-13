{* Page: About *}
{$canonical="/{$page->url}" scope=parent}
{$this_page='page page_about' scope=parent}


<div class="page_header content_width">
    <div class="cont_width">
        <h1 class="title1">{$page->header|escape}</h1>
        <p class="title_desc">Outpost club was launched by entrepreneurs who understand the challenges of moving to new places, working remotely and building a start-up from scratch in a new country.</p>

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
                <a href="{$config->root_url}/{$page->url}" itemprop="item"><span itemprop="name">{$page->name}</span></a>
                <meta itemprop="position" content="{$breadcrumb_n}">
            </div>
        </div><!-- path -->

    </div><!-- cont_width -->
</div><!-- content_width -->

<div class="image_block w100">
    {if $is_mobile == 1}
        <img src="{$page->image|resize:'pages':800:800}" alt="{$page->header}">
    {else}
        <img src="{$page->image|resize:'pages':1600:1600}" alt="{$page->header}">
    {/if}
</div><!-- image_block -->



<div class="content_width fx w sb rev content_margin">
    <div class="cont_bx w700px txt_bx">
        <p>Outpost Club was founded in 2016 by a team that knows what it’s like to move. We’ve spent our careers traveling around the world, working remotely and building start-ups while meeting interesting people everywhere we went.</p>
        <p>Our mission is to build a tight-knit community with shared passions and visions, thereby making the world we live in a better place. We believe that working together to build strong communities helps us all to thrive, and our community starts right at home, in our network of coliving houses throughout New York City.</p>
        <p>We build connections between people by offering members access to a network of creatives, entrepreneurs, executives and experts to help them develop professionally while forming relationships that will last for long after they move out of Outpost Club. Membership with Outpost Club gives you the opportunity to meet people of all different backgrounds, from dozens of countries and throughout the United States, while group activities widen the scope of our community.</p>
    </div>
</div><!-- skip_deposit_bx1 -->

<hr class="hr">

<div class="content_width">
    <p class="title1">Our Team</p>
    <p class="title2">The best and brightest</p>

    <div class="team fx w sb">
        <div class="column n1">
            <div class="item">
                <div class="wrapper">
                    <p class="position">Management</p>
                    <p class="name"><strong>Sergii Starostin</strong></p>
                    <p class="info">CEO</p>
                    <div class="img">
                        <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/team/starostin1.jpg" alt="Our Team (Sergii Starostin)" title="Our Team (Sergii Starostin), outpost-club.com">
                    </div>
                </div>
            </div>
            {if $is_mobile == 1}
                <div class="item">
                    <div class="wrapper">
                        <p class="position">Maintence</p>
                        <p class="name"><strong>Alex Prykhodko</strong></p>
                        <p class="info">COO</p>
                        <div class="img">
                            <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/team/prykhodko1.jpg" alt="Our Team (Alex Prykhodko)" title="Our Team (Alex Prykhodko), outpost-club.com">
                        </div>
                    </div>
                </div>
            {/if}
            <div class="item">
                <div class="wrapper">
                    <p class="position">Sales</p>
                    <p class="name"><strong>Alexander Kostromin</strong></p>
                    <p class="info">CSO</p>
                    <div class="img">
                        <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/team/kostromin1.jpg" alt="Our Team (Alexander Kostromin)" title="Our Team (Alexander Kostromin), outpost-club.com">
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="wrapper">
                    <p class="position">Customers Service</p>
                    <p class="name"><strong>Christian Nolff</strong></p>
                    <p class="info">New York Community Manager</p>
                    <div class="img">
                        <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/team/nolff1.jpg" alt="Our Team (Christian Nolff)" title="Our Team (Christian Nolff), outpost-club.com">
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="wrapper">
                    <p class="position">Finance</p>
                    <p class="name"><strong>Kateryna Gomenyuk</strong></p>
                    <p class="info">CFO</p>
                    <div class="img">
                        <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/team/gomenyuk1.jpg" alt="Our Team (Kateryna Gomenyuk)" title="Our Team (Kateryna Gomenyuk), outpost-club.com">
                    </div>
                </div>
            </div>
        </div>

        <div class="column n2">
            {if $is_mobile != 1}
                <div class="item">
                    <div class="wrapper">
                        <p class="position">Maintence</p>
                        <p class="name"><strong>Alex Prykhodko</strong></p>
                        <p class="info">COO</p>
                        <div class="img">
                            <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/team/prykhodko1.jpg" alt="Our Team (Alex Prykhodko)" title="Our Team (Alex Prykhodko), outpost-club.com">
                        </div>
                    </div>
                </div>
            {/if}
            <div class="item">
                <div class="wrapper">
                    <p class="position">Sales</p>
                    <p class="name"><strong>Evans McDonald</strong></p>
                    <p class="info">Philadelphia Junior Sales Manager</p>
                    <div class="img">
                        <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/team/mcdonald1.jpg" alt="Our Team (Evans McDonald)" title="Our Team (Evans McDonald), outpost-club.com">
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="wrapper">
                    <p class="position">Customers Service</p>
                    <p class="name"><strong>Jacob Shapiro</strong></p>
                    <p class="info">VP of Customer Support</p>
                    <div class="img">
                        <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/team/shapiro1.jpg" alt="Our Team (Jacob Shapiro)" title="Our Team (Jacob Shapiro), outpost-club.com">
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="wrapper">
                    <p class="position">Tech</p>
                    <p class="name"><strong>Jack Molchanov</strong></p>
                    <p class="info">CTO</p>
                    <div class="img">
                        <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/team/molchanov1.jpg" alt="Our Team (Jack Molchanov)" title="Our Team (Jack Molchanov), outpost-club.com">
                    </div>
                </div>
            </div>
        </div>

        <div class="column n3">
            <div class="item">
                <div class="wrapper">
                    <p class="position">Sales</p>
                    <p class="name"><strong>Taylor Post</strong></p>
                    <p class="info">Assistant Sales Manager</p>
                    <div class="img">
                        <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/team/post1.jpg" alt="Our Team (Taylor Post)" title="Our Team (Taylor Post), outpost-club.com">
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="wrapper">
                    <p class="position">Management</p>
                    <p class="name"><strong>Yana Ilnytska</strong></p>
                    <p class="info">Assistant Property Manager</p>
                    <div class="img">
                        <img class="lazy"
                             src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                             data-src="/design/{$settings->theme|escape}/images/team/ilnytska1.jpg"
                             alt="Our Team (Yana Ilnytska)"
                             title="Our Team (Yana Ilnytska), outpost-club.com"
                        >
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!-- content_width -->



<div class="find_us_bx">
    <hr class="hr">
    <div class="content_width">
        <h3 class="title1">Find us on...</h3>
    </div>

    <div class="partners_slider">
        <div class="item">
            <a href="https://www.forbes.com/sites/ranagood/2020/01/28/outpost-making-long-term-city-travel-reality/#a34a44991a0e" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/partners/forbes.svg" title="Easy move-in. Easy living. Find your next home. (Image-10), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-10)">
            </a>
        </div>
        <div class="item">
            <a href="https://www.nytimes.com/2019/12/23/realestate/sharing-a-room-in-bedford-stuyvesant-and-making-new-friends.html" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/partners/new-york-city-logo.png" title="Easy move-in. Easy living. Find your next home. (Image-11), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-11)">
            </a>
        </div>
        <div class="item">
            <a href="https://www.foxbusiness.com/real-estate/co-living-real-estate-trend-has-renters-saving-thousands?fbclid=IwAR3G8nt2xCNOJr01TjFhmHq0LT5ZjrxLZtyYyT-wBGvNsfyDt6tsDfFngsg" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/partners/fox.png" title="Easy move-in. Easy living. Find your next home. (Image-12), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-12)">
            </a>
        </div>
        <div class="item">
            <a href="https://medium.com/qwerkycoliving/the-worlds-first-coliving-conference-co-liv-review-85e8d1a7ac09" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/partners/medium.svg" title="Easy move-in. Easy living. Find your next home. (Image-13), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-13)">
            </a>
        </div>
        <div class="item">
            <a href="https://coliving.com/blog/breaking-the-preconceived-notions-of-coliving" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/partners/coliving_logo.svg" title="Easy move-in. Easy living. Find your next home. (Image-14), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-14)">
            </a>
        </div>
        <div class="item">
            <div>
                <img src="/design/{$settings->theme|escape}/images/partners/dislocation.jpg" title="Easy move-in. Easy living. Find your next home. (Image-15), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-15)">
            </div>
        </div>
        <div class="item">
            <a href="http://au.blurb.com/" target="_blank" rel="nofollow noopener noreferer">
                <img src="/design/{$settings->theme|escape}/images/partners/blurb-logo.png" title="Easy move-in. Easy living. Find your next home. (Image-16), outpost-club.com" alt="Easy move-in. Easy living. Find your next home.  (Image-16)">
            </a>
        </div>
    </div>
</div>


{if $page->body2}
    <hr class="hr">
    <div class="about_s_text_bx s_text_bx content_width ch2 fx w sb">
        <div class="column n1">
            <p class="title1">Outpost Club is a coliving company {*launched by entrepreneurs*}</p>
            {*<p class="title2">Who understand the challenges of moving to new places</p>*}
        </div>
        <div class="column n2">

            <div class="seo-text txt_bx">
                <div class="descr-container">
                    <div class="descr-text">{$page->body2}</div>
                </div>
                <div class="right_text fx rev">
                    <span class="main_button moreless-button arrow" data-text="Read more"></span>
                </div>
            </div>

        </div>
    </div>
{/if}

<div class="blog_info_bx">
    <hr class="hr">
    <div class="content_width">
        <p class="title1">If you want to know more about us</p>
        <p class="title2">Check out our blog:</p>
    </div>
    <div class="right_text fx rev">
        <a class="main_button" href="/blog" data-text="Blog"></a>
    </div>
</div><!-- blog_info_bx -->

{$seo_text_hide=true scope=parent}
