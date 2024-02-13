{* Page: Management *}
{$canonical="/{$page->url}" scope=parent}
{$this_page='page page_management' scope=parent}


<div class="page_header content_width">
    <div class="cont_width">
        <h1 class="title1">{$page->header|escape}</h1>
        <p class="title_desc size_s">Outpost Club is a residential management company that designs, leases, and manages multifamily properties that are attractive to today's renters. At Outpost Club, we have created a tech platform and brand that is appealing to the renters and  creates more value for real estate owners in New York, Pennsylvania, New Jersey, Connecticut, Colorado, Florida and California.</p>

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
    {*<img src="/design/{$settings->theme|escape}/images/pages/management/1.webp" srcset="/design/{$settings->theme|escape}/images/pages/management/1@2x.webp 2x" alt="{$page->header}">*}
    {if $is_mobile == 1}
        <img src="{$page->image|resize:'pages':800:800}" alt="{$page->header}">
    {else}
        <img src="{$page->image|resize:'pages':1600:1600}" alt="{$page->header}">
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
            <li>flexible Leasing Structure, and</li>
            <li>coordinate all aspects of the customer experience (onboarding, logistics, roommates and property management).
            </li>
        </ul>
    </div>
</div>
<div class="fx rev">
    <div class="red_bx">
        <p><strong>OUTPOST CLUB</strong> enables landlords to aggregate these services and offer renters an integral housing service for <strong>A PREMIUM PRICE</strong>, which generates returns that are <strong>15% TO 30% HIGHER</strong> than traditional leasing models.</p>
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
                <p class="desc">Unlock Maximum Occupancy: Our locations boast a remarkable track record of maintaining a high occupancy rate year-round. Say goodbye to the stress of vacant units and embrace the confidence that comes with consistent returns on your investment.
                </p>
            </div>
        </div>
    </div><!-- advantages_bx -->
</div>


<hr class="hr cont_mt100">
<div class="content_width">
    <div class="cont_width">
        <h3 class="title1">Property Management Services</h3>
    </div>
</div>
<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_1">
        <p class="title2">Rent & Lease Management</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Collecting rent payments from tenants, handling lease agreements, and managing lease renewals and terminations.</p>
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_1">
        <p class="title2">Tenant Screening & Placement</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Conducting background checks, credit checks, and rental history verification to find suitable tenants.</p>
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_1">
        <p class="title2">Maintenance & Repairs</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Coordinating and overseeing maintenance and repair work within the community, addressing resident maintenance requests, and conducting routine inspections.</p>
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_1">
        <p class="title2">Landscaping &<br> Grounds Maintenance</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Managing the upkeep of common areas, including lawn care, landscaping, snow removal, trash, recycling, and maintaining community amenities.</p>
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_1">
        <p class="title2">Utility Management</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Monitoring and managing utilities, such as water, electricity, and gas, including billing and payment coordination.</p>
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_1">
        <p class="title2">Financial Management</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Budgeting, bookkeeping, and financial reporting/planning, including collecting fees, paying bills and expenses, and providing financial statements to owners or investors.</p>
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_1">
        <p class="title2">Community Rules & Regulations</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Enforcing community rules and regulations, addressing resident compliance issues, and handling any necessary legal or disciplinary actions.</p>
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_1">
        <p class="title2">Marketing & Advertising</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Creating and implementing marketing strategies to attract new tenants, including creating listings, showcasing available residences, and conducting showings.</p>
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_1">
        <p class="title2">Resident Relations</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Acting as the primary point of contact for residents, addressing inquiries, complaints, and concerns, and maintaining positive tenant relations.</p>
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_1">
        <p class="title2">Emergency Response</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Establishing emergency protocols and providing residents with emergency contact information, coordinating responses to incidents such as fires, natural disasters, or major maintenance issues.</p>
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_1">
        <p class="title2">Vendor Management</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Sourcing and managing relationships with vendors, contractors, and service providers for maintenance, repairs, landscaping, and other necessary services.</p>
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_1">
        <p class="title2">Community Events<br> & Activities</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Organizing and promoting community events, fostering a sense of community and engagement among residents.</p>
    </div>
</div>

<hr class="hr">
<div class="content_width ch2 fx w sb">
    <div class="column_size_1">
        <p class="title1">Reach out</p>
        <p class="title2">to us!</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p class="strong">Outpost Club can support landlords and developers at any point of the property life cycle from ground-up sites to existing stabilized properties, both residential and commercial components. We also work with residential properties that have - Rent Controlled Units, in addition to Free Market Units.</p>
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_2">
        <p class="title1">Selecting a<br> Property Manager</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>When you purchase or build a property and are looking for the Property Manager, or you have a poorly performing property, Outpost Club will respond to RFPs and submit management proposals for any type of residential asset, or residential assets with some commercial premises (conventional buildings, workforce housing, coliving, mixed use, or microunits).</p>
        <img class="img1 lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/management/1-select-2.jpg" alt="support">
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_2">
        <p class="title1">Acquiring<br> residential assets</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Our finance team will be of assistance with comps, market analysis and underwriting during the purchasing  phase with the goal of managing the property when it’s ready.</p>
        <img class="img1 lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/management/02-finance-2.jpg" alt="utilities">
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_2">
        <p class="title1">Specific and<br> Unique Units</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Outpost Club has a vast experience in managing nontraditional multifamily assets. Colivings, premises with large amounts of bedrooms, studios, or micro units - we do it all. Any units with 3 or more bedrooms can be operated as coliving, and can be generating increased NOI.</p>
        <p>If your building has large unit types that are difficult to market and lease, Outpost Club can build a strategy and furnish those units to rent them out as coliving (roommates) units.</p>
        <img class="img1 lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/management/03-specific-2.jpg" alt="utilities">
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_2">
        <p class="title1">Pre-development<br> and Development<br> Advisory</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Outpost Club provides pre-development and development advisory on concept, interior design, amenities, market positioning, and underwriting for ground-up projects, with or without coliving units.</p>
        <img class="img1 lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/management/4-pre-development-2.jpg" alt="utilities">
    </div>
</div>

<hr class="hr2">
<div class="content_width ch2 fx w sb">
    <div class="column_size_2">
        <p class="title1">Hotel operations<br> as Coliving</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Outpost Club works with hotel owners to repurpose hotels for residential use as micro-units or coliving. We focus on distressed properties that may create a great opportunity for conversion into residential properties.</p>
        <img class="img1 lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/management/5-hotel-operations-2.jpg" alt="utilities">
    </div>
</div>


<img class="img_m lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/management/2@2x.webp" alt="Coliving Property Management (picture 2)">
<div class="content_width ch2 fx w sb">
    <div class="column_size_2">
        <p class="title1">OVER 1,000 Bedrooms</p>
        <p class="title2">WITH 20+ PROPERTIES</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Outpost Club is a property management company and technology platform that connects tenants with bedrooms and apartment rentals.</p>
        <p>Our team is composed of over 100 employees and contractors, which enables us to onboard properties with ease. Our team is both an on-site team located in each city we operate, and  an international team located in over 20 countries around the world. Our international support team can provide you with around-the-clock support for both you and your tenants.</p>
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
        <p class="desc txt_bx">Short-term rentals through a network of long-stay hotels and residences</p>
    </div>
</div>
<div class="right_text fx rev">
    <a class="main_button moreless-button arrow" href="/online-questionnaire" data-text="Reach Out"></a>
</div>


<img class="img_m lazy cont_mt70" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/management/4@2x.webp" alt="Coliving Property Management (picture 3)">
<div class="content_width ch2 fx w sb">
    <div class="column_size_2">
        <p class="title1">Featured properties</p>
        <p class="title2"><a href="/the-williamsburg-house">The Williamsburg<br> House:</a></p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>The Williamsburg House in New York’s vibrant Williamsburg, Brooklyn neighborhood is a charming 40–unit building with modern amenities and sleek interior design. With an unassuming exterior that exudes old-school Brooklyn charm, the building surprises residents with its updated features. It offers five common areas for socializing, including a home theater, shared cafeteria, and a furnished rooftop with stunning views of the Manhattan skyline. Outpost Brokerage conducted a study of the market and the building’s composition (all 40 units are 4 bedroom, 2 bathroom with limited common areas and storage), and concluded we should offer it for students and interns. As a result, the average unit is rented for $8,500 to $9,000 per month, far exceeding neighborhood comparables.</p>
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
        <p>As a result, the units rent for $9,600 to $10,000 per month   Our team was able to generate presale leases that led us to achieving 100% occupancy within 30 days.</p>
    </div>
</div>


<div class="find_us_bx">
    <img class="img_m lazy cont_mt70" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/management/6-read-about-us-2.jpg" alt="Coliving Property Management (picture 5)">
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
    <a class="main_button moreless-button arrow" href="/online-questionnaire" data-text="Reach Out"></a>
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
                <div itemprop="text"><p>Outpost Club is a network of coliving spaces. This is facilitated by our management arm, our brokerage arm, and our technology platform, ne-bo for seamless coliving property management and sales.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_2">
            <label class="h5 pc_2" for="faq_2" itemprop="name">Where does Outpost Club Operate?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Outpost Club currently manages properties in Manhattan, Brooklyn, Queens. And Philadelphia, though we are motivated to operate properties anywhere. In the past, we have operated properties in Florida, and California as well.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_3">
            <label class="h5 pc_3" for="faq_3" itemprop="name">What is your property management agreement structure?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Inquire with us we provide information based on your needs.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_4">
            <label class="h5 pc_4" for="faq_4" itemprop="name">How does Outpost Club select tenants?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Each Outpost Club tenant undergoes a rigorous background and credit check, as well as income verification. We also work with partners to provide guarantors to those who need them.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_5">
            <label class="h5 pc_5" for="faq_5" itemprop="name">What types of properties does Outpost Club operate?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>We have experience operating single family and multifamily properties, as well as hotels. We are open to operating any type of residential properties, but specialize in multifamily properties, with no limit on the number of units.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_6">
            <label class="h5 pc_6" for="faq_6" itemprop="name">How many properties do you operate?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>While the number fluctuates as we grow, Outpost Club operates as the landlord's agent for around 2000 tenants.</p></div>
            </div>
        </li>
    </ul>
</div>





{*

{if $page->body2}
    <hr class="hr">
    <div class="about_s_text_bx s_text_bx content_width ch2 fx w sb">
        <div class="column n1">
            <p class="title1">Outpost Club is a coliving company launched by entrepreneurs</p>
            <p class="title2">Who understand the challenges of moving to new places</p>
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


*}
