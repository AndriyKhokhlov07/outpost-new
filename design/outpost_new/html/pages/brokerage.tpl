{* Page: Brokerage *}
{$canonical="/{$page->url}" scope=parent}
{$this_page='page page_about' scope=parent}
{$apply_link='/brokerage-application' scope=parent}

<div class="page_header content_width">
    <div class="cont_width">
        <h1 class="title1">{$page->header|escape}</h1>
        <p class="title_desc size_s">It's product offering to the specific properties of each building /or units/ it
            manages. We can create a solution that is right for you, depending on your
            desired level of management and brokerage services.</p>

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
    {if $page->image}
        {if $is_mobile == 1}
            <img src="{$page->image|resize:'pages':800:800}" alt="{$page->header}">
        {else}
            <img src="{$page->image|resize:'pages':1600:1600}" alt="{$page->header}">
        {/if}
    {else}
        <img src="/design/{$settings->theme|escape}/images/pages/management/1.webp" srcset="/design/{$settings->theme|escape}/images/pages/management/1@2x.webp 2x" alt="{$page->header}">
    {/if}
</div><!-- image_block -->



<div class="content_width ch2 fx w sb content_margin2">

    <div class="column_size_1">
        <p class="title1">Why<br> partner</p>
        <p class="title2">With outpost<br> club?</p>
    </div>

    <div class="column_size_1 cont_bx txt_bx">
        <p class="strong">Whether we manage your entire property, or only a portion of the units in your building,
            we deliver higher net rent because:</p>
        <ul>
            <li>We attract and manage good renters (with good credit) by</li>
            <li>offering a bundled service (Housing/Utilities/Furniture) under a</li>
            <li>flexible Leasing Structure</li>
            <li>coordinate all aspects of the customer experience (onboarding, logistics, roommates and property
                management).
            </li>
        </ul>
    </div>
</div>
<div class="fx rev">
    <div class="red_bx">
        <p><strong>OUTPOST Brokerage</strong> enables landlords to aggregate these services and offer renters an integral housing service for <strong>A PREMIUM PRICE</strong>, which generates returns that are <strong>15% TO 30% HIGHER</strong> than traditional leasing models.</p>
        <p>Higher Net Operating Income translates into <strong>BETTER VALUATION</strong> and <strong>REFINANCING RESULTS</strong>.</p>
    </div>
</div>

<hr class="hr">
<div class="advantages_bx content_width content_margin">
    <p class="title1">Why we better</p>
        <div class="advantages fx w sb">
        <div class="item">
            <div class="wrapper">
                <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/advantages/time_to_market.svg" alt="furnishing">
                <p class="title">Average Time to Market: 3 to 5 days</p>
                <p class="desc">We can move as quickly as you can. Our quick-to-react team documents and lists your property within a day, and we’ll start showing the property to clients shortly after. Given the quality of our work, we can assure your building is occupied soon after listing. We waste no time, knowing that every day your property sits vacant is another day of lost revenue.</p>
            </div>
        </div>
        <div class="item">
            <div class="wrapper">
                <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/advantages/top_line.svg" alt="utilities">
                <p class="title">New Development and Re-leasing</p>
                <p class="desc">Landlords and developers across Brooklyn, Queens, and Manhattan trust our decade of experience, integrity, and hands-on approach to leasing their properties. Find out what we can do for you.</p>
            </div>
        </div>
        <div class="item">
            <div class="wrapper">
                <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/advantages/NOI.svg" alt="reporting">
                <p class="title">Higher NOI</p>
                <p class="desc">We can command higher pricing, and attract individuals on the higher end of the market. These tenants are more likely to have higher credit scores and are more likely to pay on time. This means 20% to 40% higher top line revenues for the landlords we work with.
                    With the addition of a few coliving units to your existing property, landlords experience 15% to 30% higher NOI in those units in comparison to traditional rentals. Our tenants are actively interested in paying extra for that extra comfort.</p>
            </div>
        </div>
        <div class="item">
            <div class="wrapper">
                <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/advantages/collections.svg" alt="support">
                <p class="title">Corporate partners</p>
                <p class="desc">Unlock a world of opportunity for your properties with our unparalleled connections. Our sales team has cultivated deep relationships with numerous organizations that have an ongoing demand for high-quality housing. Partner with us and watch your properties flourish as we attract a quality clientele.</p>
            </div>
        </div>
        <div class="item">
            <div class="wrapper">
                <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/advantages/boutique_brokerage.svg" alt="furnishing">
                <p class="title">Boutique Brokerage</p>
                <p class="desc">Sick and tired of harassing your brokerage firm  for attention? At Outpost Brokerage , our team is dedicated to giving individualized time and energy to all our property partners. We have a select number of clients, allowing us to focus on you and your needs.</p>
            </div>
        </div>
        <div class="item">
            <div class="wrapper">
                <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/advantages/occupancy.svg" alt="utilities">
                <p class="title">Amazing Occupancy</p>
                <p class="desc">Unlock Maximum Occupancy: Our locations boast a remarkable track record of maintaining a high occupancy rate year-round. Say goodbye to the stress of vacant units and embrace the confidence that comes with consistent returns on your investment.</p>
            </div>
        </div>
    </div><!-- advantages_bx -->
</div>

<img class="img_m lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/management/2@2x.webp" alt="Coliving Property Management (picture 2)">
<div class="content_width ch2 fx w sb">
    <div class="column_size_2">
        <p class="title1">OVER 1,000 Units</p>
        <p class="title2">WITH 40+ PROPERTIES</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Outpost is a licensed brokerage - Outpost Brokerage - and property management - Outpost Club - company that combines our property management platform with our amazing on-the-ground team to build, sell, and maintain your properties in the innovative co-living format</p>
        <p>Our 35+ member brokerage staff enables us to onboard your properties with ease. We lead a team located in each city we operate, as well as an international support team located in over 20 countries around the world, providing around-the-clock service. Our team can provide you with customizable brokerage service, and individualized attention.</p>
    </div>
</div>

<div class="apartments_block content_width fx w sb">
    <div class="item">
        <img
                src="/design/{$settings->theme|escape}/images/pages/management/rooms/fully_furnished_units.webp"
                srcset="/design/{$settings->theme|escape}/images/pages/management/rooms/fully_furnished_units@2x.webp 2x"
                alt="Fully furnished units">
        <p class="title">Fully furnished units</p>
        <p class="desc txt_bx">All-inclusive bedrooms in coliving apartments</p>
    </div>
    <div class="item">
        <img
                src="/design/{$settings->theme|escape}/images/pages/management/rooms/unfurnished_units.webp"
                srcset="/design/{$settings->theme|escape}/images/pages/management/rooms/unfurnished_units@2x.webp 2x"
                alt="Unfurnished units">
        <p class="title">Unfurnished units</p>
        <p class="desc txt_bx">Traditional apartment style</p>
    </div>
    <div class="item">
        <img
                src="/design/{$settings->theme|escape}/images/pages/management/rooms/short_term_rentals.webp"
                srcset="/design/{$settings->theme|escape}/images/pages/management/rooms/short_term_rentals@2x.webp 2x"
                alt="Short-term rentals">
        <p class="title">Short-term rentals</p>
        <p class="desc txt_bx">Through a network of long-stay hotels and residences</p>
    </div>
</div>
<div class="right_text fx rev">
    <a class="main_button moreless-button arrow" href="/brokerage-application" data-text="Reach Out"></a>
</div>

<img class="img_m lazy cont_mt70" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/management/4@2x.webp" alt="Coliving Property Management (picture 3)">
<div class="content_width ch2 fx w sb">
    <div class="column_size_2">
        <p class="title1">Featured properties</p>
        <p class="title2"><a href="/the-williamsburg-house">The Williamsburg<br> House:</a></p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>The Williamsburg House in New York’s vibrant Williamsburg, Brooklyn neighborhood is a charming 40–unit building with modern amenities and sleek interior design. With an unassuming exterior that exudes old-school Brooklyn charm, the building surprises residents with its updated features. It offers five common areas for socializing, including a home theater, shared cafeteria, and a furnished rooftop with stunning views of the Manhattan skyline. Outpost Brokerage conducted a study of the market and the building’s composition (all 40 units are 4 bedroom, 2 bathroom with limited common areas and storage), and concluded we should offer it for students and interns.</p>
        <p><strong>As a result, the average unit is rented for $8,500 to $9,000 per month, far exceeding neighborhood comparables.</strong></p>
    </div>
</div>

<img class="img_m lazy cont_mt70" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/management/5@2x.webp" alt="Coliving Property Management (picture 4)">
<div class="content_width ch2 fx w sb">
    <div class="column_size_2">
        <p class="title1">Featured properties</p>
        <p class="title2"><a href="/maison-jefferson">The Maison<br> On Jefferson:</a></p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>The Maison on Jefferson offers a stylish and comfortable living experience in a highly desirable location in Bed-Stuy, Brooklyn, NY The community attracts individuals who appreciate the finer things in life, providing a vibrant environment for professionals and creatives to connect and build meaningful relationships. Amenities such as collaborative spaces, well-equipped kitchens, and inviting outdoor areas enhance the dynamic lifestyle offered at The Maison on Jefferson. The property's unique composition of an average of 6 bedrooms and 4 bathrooms per apartment presented an exciting challenge to Outpost Brokerage. Outpost Club Brokerage conducted a study of the surrounding market and concluded that young professional moving to the city for the first time would pose as ideal tenants for the property.</p>
        <p><strong>As a result, the units rent for $9,600 to $10,000 per month   Our team was able to generate presale leases that led us to achieving 100% occupancy within 30 days.</strong></p>
    </div>
</div>







<div class="find_us_bx">
    <img class="img_m lazy cont_mt70" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/management/6@2x.webp" alt="Coliving Property Management (picture 5)">
    <div class="content_width">
        <h3 class="title1">Read about us in</h3>
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
<div class="right_text fx rev">
    <a class="main_button moreless-button arrow" href="/brokerage-application" data-text="Reach Out"></a>
</div>


<hr class="hr cont_mt70">
<div class="content_width">
    <p class="title1">FAQ</p>
</div>

<div class="faq cont_mt30" id="faq">
    <ul>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_1">
            <label class="h5 pc_1" for="faq_1" itemprop="name">What is Outpost Club?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Outpost Club is a licensed brokerage - Outpost Brokerage - and property management - Outpost Club - company that combines our property management platform with our amazing on-the-ground team to build, sell, and maintain your properties in the innovative co-living format.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_2">
            <label class="h5 pc_2" for="faq_2" itemprop="name">Is Outpost Brokerage a listing website?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>If you would like to be listed, please inquire and we will see what we can do. We generate leads and turn them into sales for the properties found on our website. We would be happy to discuss either exclusive or non-exclusive contracts.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_3">
            <label class="h5 pc_3" for="faq_3" itemprop="name">Where does Outpost Brokerage  Operate?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Outpost Brokerage  is currently based in New York, and  provides brokerage services in the states of New York, New Jersey, and Pennsylvania. Our expertise in the New York City boroughs of Manhattan, Brooklyn,Queens, Philadelphia's University City, and Jersey City.  We have also provided brokerage services for properties in Florida and California.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_4">
            <label class="h5 pc_4" for="faq_4" itemprop="name">What is your brokerage agreement structure?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Inquire with us (fill out the form on this page) and we will provide information based on your needs. Our agreement is pretty standard, but only shared with interested parties.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_5">
            <label class="h5 pc_5" for="faq_5" itemprop="name">How does Outpost Brokerage  select tenants?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>We have comprehensive IT products that include the most up-to-date background checks, social checks, credit checks, online tracers of phone and email usage, and bank account verification. Our IT partnerships with market-leaders such as Qira, SURE Insurance and TheGuarantors support us in putting legal and financial safeguards in place to make sure you have the best tenants, while also expanding your potential tenant pool, and protecting both sides.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_6">
            <label class="h5 pc_6" for="faq_6" itemprop="name">What types of properties does Outpost Brokerage work with?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Outpost Brokerage  specializes in multifamily properties, with no limit on the number of units. We successfully rent out regular single family and multifamily properties to qualified renters. But our true power comes when we are able to analyze your property, and find feasibility in renting a portion of your units under our fully-furnished coliving model</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_7">
            <label class="h5 pc_7" for="faq_7" itemprop="name">How large is Outpost Brokerage?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>In an average month Outpost Brokerage  represents an average of 40+ properties and over 1000 units.</p></div>
            </div>
        </li>
    </ul>
</div>





