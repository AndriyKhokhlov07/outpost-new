{* Page: Terms of use *}
{$canonical="/{$page->url}" scope=parent}
{$this_page='page page_terms_of_use' scope=parent}

<div class="page_header content_width">
    <div class="cont_width">
        <h1 class="title1">{$page->header|escape}</h1>
        <p class="title_desc size_s">Please read agreement these Terms of Use carefully because they contain important information regarding your rights and obligations.</p>

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
        <p class="title1">These Terms<br> of Use</p>
        <p class="title_desc size_s">Last Updated December 1, 2020</p>
    </div>

    <div class="column_size_1 cont_bx txt_bx">
        <p>These Terms of Use are a legal agreement between you and Outpost Club. Outpost Club is an online co-living leasing platform and provider of Outpost Club Coliving services belonging to the Outpost Club Inc. As such it provides fully furnished residential apartments rented out on a room basis in prime locations in various cities across United States of America, Canada and Europe. Along this document, Outpost Club refers to either Outpost Club Inc or Outpost Club Canada Inc, depending on the location of the room you desire to rent. For renting a room in Canada, Outpost Club will stand for Outpost Club Canada Inc, while for renting a room in the USA, Outpost Club will stand for Outpost Club Inc.</p>
        <p>Via the Platform’s website https://www.outpost-club.com, the user can request rent one of currently available rooms in a fast and easy manner. By leasing through the platform operated by Outpost Club, you enter into a direct (legally binding) contractual relationship with Outpost Club with which you step into a Lease agreement.</p>

        <p class="title_desc size_s"><strong>The services provided by outpost club belonging to the Outpost Club inc, include but are not limited to:</strong></p>
        <ol>
            <li>contact person for rent enquiry (tenant support);</li>
            <li>receiving complaints and dispute resolution;</li>
            <li>management of receivables (e. g. first month rent payment collection and the assertion of all claims to which the principal is entitled as well as dunning legal actions under consultation of experienced lawyers);</li>
            <li>conclusion and termination of Lease agreements in the case of tenant change;</li>
            <li>handover of cleaned apartments or rooms in a shared apartment with basic equipment (bedding, etc.);</li>
            <li>assignment of external service-providers in direct or indirect relation to the lease;</li>
            <li>contracting and supervision of all necessary repairs directly or indirectly related to the lease;</li>
            <li>Service charge settlement (if necessary);</li>
            <li>administration services;</li>
            <li>accounting;</li>
            <li>management of deposits.</li>
        </ol>

        <p>If a first month rent payment in form of monthly monetary payments applies to tenants of the Outpost Club Community, Outpost Club may provide additional services or features as portrayed on its website https://www.outpost-club.com. Outpost Club Inc waives responsibility to claims to the maximum extent permitted by law. If you do not agree to the Terms of Use, you are not permitted to obtain information from the website or to continue to use this information in any other manner.</p>
        <p>Independent of your registration, you declare with the use of this website that you have read, understood and accepted the following Terms of Use. Furthermore, you give your assurance that you will comply with the Terms of Use.</p>
    </div>
</div>

<hr class="hr cont_mt100">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_1">
        <p class="title1">Eligibility</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>The aim of the Outpost Club is to ensure, via the Outpost Club, the prosperous cohabitation of the Tenants. Each user is to be provided with an environment that is as free of conflict as possible and that has a high degree of social interaction with flatmates. Access to and the use of the website is only permitted for adults (minimum 18 years or older) and for natural persons of unrestricted legal capacity. By accessing or using this website, you confirm and guarantee that you are of the age of 18 years or older and have unrestricted legal capacity. Furthermore, you guarantee that you possess the required liquidity to cover the liabilities that arise in concluding a Lease agreement. If you cannot provide the required liquidity, you are not permitted to rent a room.</p>
    </div>
</div>


<hr class="hr cont_mt70">
<div class="content_width">
    <p class="title1">The Leasing process</p>
</div>

<div class="faq cont_mt30" id="faq">
    <ul>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_1">
            <label class="h5 pc_1" for="faq_1" itemprop="name">1. Book a tour</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>In order to be able to use specific features on the website and to be able to rent a room, you have to fill in the application. You may do this by entering your personal information at https://www.outpost-club.com and by clicking the button “Join Us”. By accepting the Privacy Policy, you allow Outpost Club Inc to access and use your personal data in the scope set forth in the Privacy Policy, and contact you via email. In this email, you will receive a survey that you have to answer and submit to our respective contact. It is furthermore possible that we contact you to set a time for a phone call or a video call. In case you are eligible to become a tenant, you will receive a link that leads to the website where you are asked to create an account, sign a Lease agreement.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_2">
            <label class="h5 pc_2" for="faq_2" itemprop="name">2. Create an Account</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>For the creation of a user account, you will be asked to specify a user name and a password of your choice. You are responsible for protecting your password. You agree that you will keep your access identification and password confidential at all times and not inform any third party of these and you will keep these safe and exclude third parties from accessing them. You further agree that you assume sole responsibility for any activities or actions carried out under your account, regardless of whether you have authorized such activities or actions. You are responsible for any abuse of the access identification and password. In the case of unauthorized use of your account, no matter what kind, by third parties, you will inform us immediately by sending an email to info@outpost-club.com.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_3">
            <label class="h5 pc_3" for="faq_3" itemprop="name">3. Apply for Tenancy</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>To become a tenant of the Outpost Club Community, by clicking on the button “Join Us” you will fill a registration form. After successful verification, you are directed to the Costumer Service Center where you will be asked to complete your personal information in the form. Then, you are asked to agree to the Lease agreement, the House Rules.</p>
                    <p>Only one account per person at https://www.outpost-club.com is permitted. You give your assurance that the registration information is accurate, current and complete and that you will keep this information up to date. Outpost Club Inc reserves the right to terminate your account and your access to the website in case of the following conduct violations:</p>
                    <p>1. failure to use the website over a lengthy period,</p>
                    <p>2. the creation of more than one user account,</p>
                    <p>3. in the case that violations of any applicable law or of the Terms of Use, the Lease agreement, the House Rules are committed,</p>
                    <p>4. in the case that false, out of date or incomplete information is given during the registration process or afterwards</p>
                    <p>5. as well as in the case of any possibly modified version of the Terms of Use not coming into force owing to the omission of the declaration of consent</p>
                    <p>There is no right to registration, leasing, or to tenancy in our provided rooms. Registration and leasing are at the discretion of Outpost Club Inc. You furthermore accept that a signed lease is a pre-condition to tenancy.</p></div>
            </div>
        </li>
    </ul>
</div>


<hr class="hr cont_mt50">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_1">
        <p class="title1">Liability</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Despite constant and careful maintenance and upkeep of the website, Outpost Club Inc cannot assume liability for the currency, accuracy or completeness of the information contained on the website nor for the constant availability of the website. Any maintenance work, further development or any other kinds of disturbances can lead to a temporary restriction or interruption of the website’s availability. An obligation on the part of Outpost Club Inc to keep the website up to date and always accessible and useable, does not exist.</p>
        <p>Outpost Club Inc disclaims any liability or responsibility for any communication with the users through its platform. The liability of Outpost Club Inc for damages resulting from the direct or indirect use of the website is excluded, unless compelling legal liability owing to intent, gross negligence, injury to life, limb or health, owing to fraudulent concealment of a fault or owing to the breach of contractual basic obligations, exists. Liability for breach of contractual obligations is limited to basic contract-typical, foreseeable damage, insofar as there is no intent or gross negligence.</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_1">
        <p class="title1">Leasing a Room</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>The rooms offered on the website are to be understood in each case as a solicitation for an offer to conclude a Lease agreement with Outpost Club Inc. If available, you might request a tour to the House prior to the signing of the Lease agreement. After entering the required data and subsequently submitting your legally-binding acceptance to conclude a Lease agreement by signing electronically the Lease agreement and submitting it, you submitted a binding contract which may be accepted by Outpost Club Inc with which you step into a Lease agreement. If there are several candidates for a room, Outpost Club reserves the right to assign the rooms to the most appropriate candidates at its discretion, with respect to any applicable non-discrimination regulations. There does not exist an entitlement on the part of the potential tenant to conclude a Lease agreement even in the absence of competitors.</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_1 relative">
        <p class="title1 sticky top100">Payment<br> Conditions</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>By concluding a Lease agreement through this website, the exclusive contact is Outpost Club Inc. The due first month rent payments (current fees and deposit) is to be paid to Outpost Club Inc with which you step into a Lease agreement. Payments are safely processed from your credit/debit card or bank account to the bank account Outpost Club Inc, operated by a third-party payment processor. The payment service provider does not become party to the Lease Contract and shall not serve as a point of recourse to the tenant for any matters concerning duties arising out of the Lease agreement. Outpost Club is furthermore the exclusive contact for all questions and claims resulting from the Lease agreement. Such questions and claims shall exclusively be addressed to Outpost Club and its support team.</p>
        <p>Once tenant accepts a legally-binding acceptance to conclude the Lease Contract, Outpost Club reserves the rented facilities for the tenant. In submitting the legally-binding acceptance for a Lease agreement, you agree to give your pre-authorization to be debited for the first month rent payment in the amount of the First Month Fee and Deposit as concluded in the Lease agreement, up to the time that Outpost Club accepts or refuses your offer. The tenant accordingly pays the Outpost Club a first month rent payment as agreed to in the Lease agreement. The first month rent payment will be debited from the relevant account of the tenant via the chosen means of payment upon the legally-binding request of the tenant. If the Lease agreement is not concluded, Outpost Club pays back the first month rent payment to the tenant. The payment of the first month rent must be made before the rental unit is handed over to the tenant, at the latest at the commencement of the Lease Term. The transfer of the first month rent payment must occur without additional transfer costs for the recipient and by means of one of the agreed payment methods. The monthly fee is to be paid in advance and without additional transfer costs for the recipient on the first working day of each month by means of one of the agreed payment methods.</p>
        <p>With the effective conclusion of a Lease agreement and additional service contracts, you are obligated to pay a Deposit and the correspondingly stipulated monthly first month rent payment to Outpost Club Inc.</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_1">
        <p class="title1">Changes</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Outpost Club reserves the right to modify at its sole discretion at any time without notice these Terms of Use as well as the content and structure of https://www.outpost-club.com at any time. If we make changes to these Terms of Use, we reserve the right to post the notice about the changes on the website. We will update the item &ld</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_1">
        <p class="title1">Severability</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>If any provision contained within these Terms of Use are or become invalid or unenforceable, the remaining provisions shall not be affected and that provision shall be enforced within the legally permitted scope.</p>
    </div>
</div>


