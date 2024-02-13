{* Page: Coliving *}
{$canonical="/{$page->url}" scope=parent}
{$this_page='page page_coliving' scope=parent}
{$apply_link='/online-questionnaire/?utm_source=landing-page&utm_medium=coliving' scope=parent}

<div class="page_header content_width">
    <div class="cont_width">
        <h1 class="title1">{$page->header|escape}</h1>
        <p class="title_desc size_s">Coliving (Co living) is a shared-housing model in which communities are built around shared spaces in the home,allowing residents to live more affordably and socially</p>

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


<hr class="hr">
<div class="s_text_bx content_width ch2 fx w sb">
    <div class="column n1">
        <h3 class="title1">Coliving</h3>
        <p class="title2">Concept</p>
    </div>
    <div class="column n2 txt_bx">
        <p>Coliving, also known as communal living, cohousing or shared living, allows members to build communities around shared spaces like kitchens and living rooms while renting a private or shared bedroom.</p>
        <p>You'll never have to worry about utilities or Wi-Fi, the house will always be stocked with essentials and our cleaning crew comes regularly.</p>
    </div>
</div>


<div class="content_width cont_mt100">
    <div class="cont_width_">
        <p class="title1">What's Included with your bedroom</p>
        <p class="title2">In Our All-Inclusive Prices:</p>
    </div>
    <div class="advantages ch_4 fx w sb mob_show_desc">
        <div class="item">
            <div class="wrapper">
                <img class="lazy size2" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/coliving/landing1.svg" alt="furnishing">
                <p class="title height2"><span>Fully furnished</span></p>
                <p class="desc">Recently remodeled houses</p>
            </div>
        </div>
        <div class="item">
            <div class="wrapper">
                <img class="lazy size2" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/coliving/landing2.svg" alt="furnishing">
                <p class="title height2"><span>Security</span></p>
                <p class="desc">Our Nest systems will allow you to always feel safe at home</p>
            </div>
        </div>
        <div class="item">
            <div class="wrapper">
                <img class="lazy size2" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/coliving/landing3.svg" alt="furnishing">
                <p class="title height2"><span>Utilities</span></p>
                <p class="desc">You'll never have to worry about your utility bill again. Outpost manages all gas, elec- tricity, water and wifi bills for you. Utilities costs can be found on each house page.</p>
            </div>
        </div>
        <div class="item">
            <div class="wrapper">
                <img class="lazy size2" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/coliving/landing4.svg" alt="furnishing">
                <p class="title height2"><span>Cleaning and maintenance</span></p>
                <p class="desc">We help you keep common spaces nice and tidy for every-one who shares themy</p>
            </div>
        </div>
    </div>
</div>

<div class="right_text fx rev">
    <a class="main_button moreless-button arrow" href="{$apply_link}" data-text="Reach Out"></a>
</div>


<img class="img_m lazy cont_mt70" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/coliving/room.jpg" alt="Coliving">
<div class="s_text_bx content_width ch2 fx w sb">
    <div class="column n1">
        <p class="title1">Coliving</p>
        <p class="title2">Spaces</p>
    </div>
    <div class="column n2 txt_bx">
        <p>Each of our houses includes one or more kitchens, common areas and co-working spaces, allowing you plenty of room to cook, work and relax, all while getting to know people from all around the world. All of our houses were exclusively designed to be comfortable to all members in any room of the house.</p>
        <br>
        <p>Your room will be move-in ready, just like the rest of the house; there's no need to even bring a pillow. Our kitchens are fully stocked with appliances, cookware and everything else you'll need to make a home-cooked meal. We also have 24/7 security in all common areas</p>
    </div>
</div>


<img class="img_m lazy cont_mt70" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/coliving/coliving-com.jpg" alt="Coliving">
<div class="s_text_bx content_width ch2 fx w sb">
    <div class="column n1">
        <p class="title1">Community</p>
    </div>
    <div class="column n2 txt_bx">
        <p>Outpost Club is more than just a place to live and work. We've created a coliving community that offers both general and pro- fessional networking, giving you the opportunity to build rela- tionships with people from all over the world with a variety of backgrounds and expertises.</p>
        <br>
        <p>In addition to designing our spaces to make living together a breeze, we offer multiple events a month to help you get to know the entire Outpost Club community, whether at a movie night or while kayaking on the East River.</p>
    </div>
</div>
<div class="right_text fx rev">
    <a class="main_button moreless-button arrow" href="{$apply_link}" data-text="Apply Now"></a>
</div>



<hr class="hr cont_mt70">
<div class="content_width">
    <div class="cont_width cont_mt40">
        <h3 class="title1">Our locations</h3>
        <p class="title3">Our shared apartments are located in some of the most desired cities</p>
    </div>
</div>

<div class="apartments_block content_width ch_2 fx w sb cont_mt40">
    <a class="item" href="philadelphia">
        <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/coliving/gp-bedroom.jpg" alt="Philadelphia">
        <p class="title size_m">Philadelphia</p>
    </a>
    <a class="item" href="new-york">
        <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/pages/coliving/mj-bedroom.jpg" alt="New-York">
        <p class="title size_m">New-York</p>
    </a>
</div>



<hr class="hr cont_mt80">
<div class="content_width">
    <div class="cont_width_ cont_mt40">
        <p class="title1">The Outpost Club Experience - </p>
        <p class="title2">Unlike any apartment you’ve ever moved to</p>
    </div>
</div>


<hr class="hr cont_mt70">
<div class="faq cont_mt30" id="faq">
    <ul>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_1">
            <label class="h5 pc_1" for="faq_1" itemprop="name">Flat Monthly Fee</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>While living with us, you won’t have to worry about a thing. You will pay a flat monthly fee and everything comes included. No utility bills, no unexpected maintenance costs.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_2">
            <label class="h5 pc_2" for="faq_2" itemprop="name">Full-Month Security Deposit Option</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Before you move-in, we charge one full-month security deposit, which you will get back in full after your stay with us ends. However, if you would like to waive the security deposit, you may do so by using our partners at Qira! They’ll pay your security deposit for a small monthly fee ranging from $10-$20.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_3">
            <label class="h5 pc_3" for="faq_3" itemprop="name">House Leaders</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>All of our locations have a House Leader. If you have any questions during your stay with us, they’ll be there for you.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_4">
            <label class="h5 pc_4" for="faq_4" itemprop="name">Pricing</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>We have single rooms starting at $1350 and shared rooms starting at $750</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_5">
            <label class="h5 pc_5" for="faq_5" itemprop="name">Flexible Contract</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>You can choose to pay month-to-month and extend your stay along the way, or choose to let us know up front how long you're staying and get better prices.</p></div>
            </div>
        </li>
    </ul>
</div>



{get_posts type=2 var=s_reviews limit=3}
{include file='bx/reviews.tpl'}





{$seo_text_hide=true scope=parent}
{$page_faq_hide=true scope=parent}


{*

<div class="content_width ch2 fx w sb rev content_margin2">
    <div class="column_size_1 cont_bx txt_bx">
        <p>THE FOLLOWING PRIVACY POLICY APPLIES TO EVERYBODY ACCESSING OUR WEBSITE WWW.OUTPOST-CLUB.COM FROM ANY LOCATION EXCEPT FOR THE UNITED STATES OF AMERICA.</p>
        <p>Outpost Club represents the entities of Outpost Club Inc, Outpost Club Canada Inc. This website is operated by Outpost Club Inc, 1277 Jefferson ave, of 2, Brooklyn, 11221, NY, USA.</p>
        <p>Data protection declaration and consent to data usage at www.outpost-club.com</p>
        <p>Your privacy is of paramount importance to us. Therefore, we take the protection and the lawful collection, processing and use of all information very seriously.</p>
        <p>With this declaration, you give your consent that we may collect your personal data as stated hereinafter for the purposes stated hereinafter, as well as process and make use of them. This consent may be revoked by you at any time with effect for the future.</p>
    </div>
</div>


<hr class="hr cont_mt70">
<div class="faq cont_mt30" id="faq">
    <ul>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_1">
            <label class="h5 pc_1" for="faq_1" itemprop="name">1. The subject of data protection</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>The subject matter of the data protection is personal data, such as, for example, name, telephone number, email address, postal address, date of birth, profession, occupation, nationality, but also usage data such as your IP-address as well as a clear attribution attached to your person.</p>
                    <p>This Privacy Policy applies to all entities belonging to the Outpost Club, which are involved in the operation of the website and in the initiation and implementation of contracts, which are concluded over the website.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_2">
            <label class="h5 pc_2" for="faq_2" itemprop="name">2. Data collection while using our website</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>We collect and store any information you enter on our website or pass on to us by any other means. The purpose of this is to enable us to conclude a lease agreement and / or lease with you and provide you the best service possible. We receive and store certain information every time you contact us. Just as many other websites, we also use so-called cookies to this end and we receive certain items of information when your web browser opens the website www.outpost-club.com. By using an account with the third-party provider Facebook Inc. / Facebook Ireland Limited in order to register on our website, you agree that Outpost Club may use all content provided and stored there in accordance with our terms of use. As a matter of principle, all instances of access of our website are stored in so-called log files. By default, the web server stores, among other things, for example: your IP address, date, time and duration of the page request, the referring website and the name of the file accessed and the amount of data transferred.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_3">
            <label class="h5 pc_3" for="faq_3" itemprop="name">3. Storage period</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Personal data is stored until the time of deletion of the account or the revocation of consent. However, Outpost Club reserves the right to display any content published by users for an unlimited period of time.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_4">
            <label class="h5 pc_4" for="faq_4" itemprop="name">4. Further use of the data collected regarding users’ activity on our website</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>We collect statistical information regarding users and their behaviour for analysis. The evaluation is intended solely for the generation and improvement of our website. The regular analysis of access statistics for the website enables us to understand the success of specific offers. It is, inter alia, a basis for steering the further development of the website and for the formulation of new and improved strategies.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_5">
            <label class="h5 pc_5" for="faq_5" itemprop="name">5. Data disclosure to third parties and use of data within the company</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>We need certain information so that we can provide our service with regard to consultation and support, as well as for the processing and conclusion of lease agreements and/or  leases. We only use the personal data of our prospective customers, which is collected, processed and made use of, internally within Outpost Club and for the prosecution of legal claims. A transfer of these data for commercial purposes does not take place. A transfer to authorised state institutions and authorities is carried out only within the framework of the statutory obligations to furnish information, or if we are obligated by a court decision to provide information. We take the company's internal data protection very seriously. Our employees are obligated to maintain confidentiality and to comply with data protection regulations.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_6">
            <label class="h5 pc_6" for="faq_6" itemprop="name">6. Links to other websites</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>On our website there are links to other websites. Outpost Club bears no responsibility for the privacy policies of other websites. Please consult the privacy policy of the relevant website to determine the extent to which there is data storage and processing on this website.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_7">
            <label class="h5 pc_7" for="faq_7" itemprop="name">7. Use of Google Analytics</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Our website uses Google Analytics, a web analytics service provided by Google Inc. It uses so-called “cookies”, which are stored on your computer and allow an analysis of your use of the website. It collects, for example, information about the operating system and the browser that you use, your IP address, the website you previously accessed (referrer URL) and the date and time of your visit to our website. On subsequent repeated visits of our website, frequently used information is automatically displayed for you. We are able to track your usage patterns with the help of the cookies. The information generated by cookies about the use of our website is transmitted to a Google server in the US and stored there. Google will use this information to evaluate your use of our website. Google may transfer these rights to third parties insofar as it is required to do so by law or in order that data may be processed on Google’s behalf. By accepting this privacy statement, you consent to the processing of your data by Google. You can change the settings of your browser so that it does not store cookies on your computer. It may be that you are no longer able to use all functions of the website if you disable or delete cookies.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_8">
            <label class="h5 pc_8" for="faq_8" itemprop="name">8. Changes</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>We reserve the right to amend or supplement the data protection provisions in order, for example, to enable the use of possible newly introduced additional functions, as is in our interest. Because we take data protection very seriously, we assure that significant changes to our privacy policy that lead to a weaker protection of customer data are always carried out with the consent of affected customers.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_9">
            <label class="h5 pc_9" for="faq_9" itemprop="name">9. Contact for data protection matters</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>If you have questions regarding data protection at our company, do not hesitate to contact us at info@outpost-club.com. Likewise,<strong> you have the right, at any time, without notice and for any reason, to obtain information about your stored personal data, about its origin and who receives it, as well as the purpose of its storage. You have the right to revoke your consent to data collection</strong>. Also if you wish to correct, erase or block (incorrect) information, please contact us at the above email address. There can however exist contractual and/or legal requirements regarding the deletion of data, in particular regarding accounting and billing. Data protection provisions and the handling of data may change continuously. This may be the case for example in the instance of changes in the data protection provisions at Google. It is therefore advisable and necessary to regularly inform oneself about changes in the law and business practices, for example, at Google.</p>
                <p><strong>By agreeing to the above Data Protection Policy, you give your consent to Outpost Club Inc, 1277 Jefferson ave, of 2, Brooklyn, 11221, NY, USA to collect, process and use your personal data in compliance with privacy laws and the relevant provisions.</strong></p></div>
            </div>
        </li>
    </ul>
</div>

<hr class="hr cont_mt100">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2 relative">
        <div class="sticky top100">
            <p class="title1">OUTPOST CLUB US<br> PRIVACY POLICY</p>
            <p class="title2">Introduction</p>
        </div>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Outpost Club represents the entities of Outpost Club Inc, Outpost Club Canda Inc (“Company”,“we”or “us”) respects your privacy. The Company offers tenant-based residential co-living spaces known as Outpost Club through its website www.outpost-club.com and its mobile application (referred to collectively as the “Services”). This policy describes:</p>
        <p>The types of information we may collect or that you may provide when you download, install, register with, apply for tenancy with, access, or use the Services. Our practices for collecting, using, maintaining, protecting, and disclosing that information. This policy applies only to information we collect through the Services, and in email, text, and other electronic communications sent through or in connection with the Services, and also to information we collect offline, such as information collected through our video and/or in-person interview process. This policy DOES NOT apply to information that:</p>
        <p>We collect on websites you may access through the Services. You provide to or is collected by any third party (see “Third-Party Information Collection”). These third parties may have their own privacy policies, which we encourage you to read before providing information on or through them.</p>
        <p>Please read this policy carefully to understand our policies and practices regarding your information and how we will treat it. If you do not agree with our policies and practices, do not access, install, download, register with, apply using, or use the Services. By accessing, installing, downloading, registering with, applying with or using the Services, you agree to this privacy policy. This consent may be revoked by you in writing at any time with effect for the future. This policy may change from time to time (see “Changes to Our Privacy Policy”). Your continued use of the Services after we make changes is deemed to be acceptance of those changes, so please check the policy periodically for updates.</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2">
        <p class="title1">Information We<br> Collect</p>
        <p class="title2">and How We Collect It</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>We collect information from and about users of the Services: Directly from you when you provide it to us</p>
        <p>Automatically when you use or access the Services, including through cookies and when your web browser opens the websites www.outpost-club.com</p>
        <p>Through our video and/or in-person interview process to become a tenant of the Company’s Community from third-party providers</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_1">
        <p class="title1">Information you</p>
        <p class="title2">Provide to us</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>When you access or use the Services, or during our video and/or in-person interview process we may ask you provide information:</p>
        <p>By which you may be personally identified, such as name and birth name, postal address, email address, telephone number, any other identifier by which you may be contacted online or offline, state of residence, birthday, gender identity, occupation, employer, languages spoken, social media accounts, social security number, credit card information and photographs (“personal information”).</p>
        <p>That is about you but individually does not identify you</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_1">
        <p class="title1">This information</p>
        <p class="title2">Includes:</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Information that you provide by filling in forms within the Services. This includes information provided at the time of registration and/or application for tenancy, posting any materials, and/or requesting further services. We may also ask you for information when you participate in our surveys or events, and when you report a problem with the Services.</p>
        <p>Information necessary for the Company to have a credit and background check performed on you</p>
        <p>Records and copies of your correspondence (including email addresses, phone numbers and user names), if you contact us your responses to surveys or questionnaires that we might ask you to complete as part of the tenancy application process</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2 relative">
        <div class="sticky top100">
            <p class="title1">Information<br> Collection<br> and</p>
            <p class="title2">Tracking<br> technologies</p>
        </div>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>When you download, access, and use the Services, we may use technology to automatically collect:</p>
        <p><strong>Usage Details.</strong> When you access and use the Services, we may automatically collect certain details of your access to and use of the Services, including location data, length of time you visit our site, page views, click-stream information, referring URL, logs, and other communication data and the resources that you access and use on or through the Services</p>
        <p><strong>Device Information.</strong> We may collect information about your device and internet connection, including the device’s unique device identifier, IP address, operating system, browser type, network information, and the device’s telephone number (if applicable).</p>
        <p><strong>Stored Information and Files.</strong> The Services also may access metadata and other information associated with other files stored on your device. This may include, for example, photographs, audio and video clips, personal contacts, and address book information</p>
        <p><strong>Location Information.</strong> The Service, in particular our mobile app, might collect real-time information about the location of your device, such as IP address and GPS location</p>
        <p>If you do not want us to collect this information do not download, access, or use the Services or delete the Services from your device. For more information, see “Choices About How We Use and Disclose Your Information”.</p>
        <p>We also do not collect information about your activities over time or across third-party websites, apps, or other online services (behavioral tracking).</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2 relative">
        <div class="sticky top100">
            <p class="title1">Automatic<br> information</p>
            <p class="title2">Collection and<br> tracking</p>
        </div>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>The technologies we use for automatic information collection may include:</p>
        <p><strong>Cookies (or browser/mobile cookies).</strong> A cookie is a small file placed on your device. It may be possible to refuse to accept cookies by activating the appropriate setting on your device. However, if you select this setting you may be unable to access certain parts of our Services.</p>
        <p><strong>Flash Cookies.</strong> Certain features of the Services may use local stored objects (or Flash cookies) to collect and store information about your preferences and navigation to, from, and on the Services. Flash cookies are not managed by the same browser settings as are used for browser cookies.</p>
        <p><strong>Web Beacons and Other Technologies.</strong> We may use standard internet technology, such as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) and other similar technologies, to track your use of the Services. The Services and related communications may contain small electronic files known as web beacons that permit the Company, for example, to count users who have visited those pages or opened an email and for other related statistics (for example, recording the popularity of certain content and verifying system and server integrity). We also may include web beacons in our e-mail messages or newsletters to determine whether messages have been opened and acted upon. The information we may obtain in this manner would enable us to customise the Services we offer and to measure the overall effectiveness of the Services, our online advertising, content, programming or other activities.</p>
        <p><strong>Google.</strong> We use Google Analytics, a web analytics service provided by Google Inc. It uses so-called “cookies”, which are stored on your computer and allow an analysis of your use of the Services. It collects, for example, information about the operating system and the browser that you use, your IP address, the website you previously accessed (referrer URL) and the date and time of your visit to the Services. On subsequent repeated visits to the Services, frequently used information is automatically displayed for you. We are able to track your usage patterns with the help of the cookies. The information generated by cookies about the use of the Services is transmitted to a Google server, which may be located within or outside of, the United States, and stored there. Google will use this information to evaluate your use of the Services. Google may transfer these rights to third parties insofar as it is required to do so by law or in order that data may be processed on Google’s behalf. By accepting this policy, you consent to the processing of your data by Google. You can change the settings of your browser so that it does not store cookies on your computer. It may be that you are no longer able to use all functions of the website if you disable or delete cookies.</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2 relative">
        <div class="sticky top100">
            <p class="title1">Third-Party<br>Information</p>
            <p class="title2">Collection</p>
        </div>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>When you use the Services, certain third parties may use automatic information collection technologies to collect information about you or your device. These third parties may include among others:</p>
        <ul>
            <li>Advertisers, ad networks, and ad servers.</li>
            <li>Analytics companies.</li>
            <li>Your device manufacturer.</li>
            <li>Your mobile service provider.</li>
            <li>Google</li>
            <li>Facebook</li>
        </ul>
        <p>These third parties may use tracking technologies to collect information about you when you use the Services. The information they collect may be associated with your personal information or they may collect information, including personal information, about your online activities over time and across different websites, apps, and other online services websites. They may use this information to provide you with interest-based (behavioral) advertising or other targeted content.</p>
        <p>We do not control these third parties’ tracking technologies or how they may be used. If you have any questions about an advertisement or other targeted content, you should contact the responsible provider directly.</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2 relative">
        <div class="sticky top100">
            <p class="title1">How We Use Your</p>
            <p class="title2">Information</p>
        </div>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>We use information that we collect about you or that you provide to us, including any personal information, to:</p>

        <p>Provide you with the Services and their contents, and any other information, products or services that you request from us. Evaluate your application for tenancy in Outpost Club, including running background and credit checks. Fulfill any other purpose for which you provide it. Give you notices about your account/tenancy, including expiration and renewal notices.</p>
        <p>Carry out our obligations and enforce our rights arising from any contracts entered into between you and us, including for billing and collection</p>
        <p>Notify you when updates to the Services are available, and of changes to any products or services we offer or provide through it</p>
        <p>The usage information we collect helps us to improve the Services and to deliver a better and more personalized experience by enabling us to:</p>
        <ul>
            <li>Estimate our usage patterns</li>
            <li>Store statistical information about your preferences and behaviors, allowing us to customize the Services</li>
            <li>Speed up your searches</li>
            <li>Recognize you when you use the Services</li>
        </ul>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2 relative">
        <div class="sticky top100">
            <p class="title1">Disclosure of</p>
            <p class="title2">Your Information</p>
        </div>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>We may disclose aggregated information about our users, and information that does not identify any individual or device, without restriction.</p>
        <p>In addition, we may disclose personal information that we collect or you provide:</p>
        <p>Internally within our Company and to our subsidiaries and affiliates.</p>
        <p>To contractors, service providers, and other third parties we use to support our business.</p>
        <p>For the processing and conclusion of leases.</p>
        <p>To a buyer or other successor in the event of a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of the Company’s assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which personal information held by the Company about our users is among the assets transferred.</p>
        <p>To fulfill the purpose for which you provide it. For example, if you give us an email address to use an email or referral feature of the Services, we will transmit the contents of that email and your email address to the recipients.</p>
        <p>For any other purpose disclosed by us when you provide the information.</p>
        <p>With your consent.<br>To comply with any court order, law, or legal process, including to respond to any request for cooperation from law enforcement, regulatory or other government agency, or to establish or enforce or apply our terms of use or our rights or remedies arising from any contracts entered into between you and us, and other agreements, including for billing and collection. In such cases, we may raise or waive any legal objection or right available to us, in our sole discretion.</p>
        <p>If we believe disclosure is necessary or appropriate in connection with efforts to investigate, prevent, report or take other action regarding illegal activity, suspected fraud or other wrongdoing; to protect or defend the rights, property, or safety of the Company, other tenants or others. This includes exchanging information with other companies and organizations for the purposes of fraud protection and credit risk reduction.</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2 relative">
        <div class="sticky top100">
            <p class="title1">Your Choices<br> About Our<br> Collection, Use,<br> and</p>
            <p class="title2">Disclosure<br> of Your Information</p>
        </div>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>We strive to provide you with choices regarding the personal information you provide to us. This section describes mechanisms we provide for you to control certain uses and disclosures of over your information.</p>
        <p>Tracking Technologies. You can set your browser to refuse all or some cookies, or to alert you when cookies are being sent. If you disable or refuse cookies or block the use of other tracking technologies, some parts of the Services may then be inaccessible or not function properly</p>
        <p>Location Information. The Services collects and uses real-time information about your device’s location which may not be blocked. If you do not want your location information collected, used, or disclosed, then do not use the Service.</p>
        <p>Email. When you contact us through the Services, you will be set up to receive email messages unless you indicate that you do not wish to receive emails. At any time you can choose to no longer receive such emails by following the instructions found in the emails.</p>
        <p>We do not control third parties’ collection or use of your information to serve interest-based advertising. However these third parties may provide you with ways to choose not to have your information collected or used in this way. You can opt out of receiving targeted ads from members of the Network Advertising Initiative (“NAI”) on the NAI’s website.</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2">
        <p class="title1">Accessing and<br> Correcting Your</p>
        <p class="title2">Personal<br> Information</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>If the Company provides you with login credentials, You can review and change your personal information by logging into the Service and visiting your account profile page.</p>

        <p>You may also send us an email at info@outpost-club.com to request access to, correct, or delete any personal information that you have provided to us. We cannot delete your personal information except by also deleting your user account. We may not accommodate a request to change information if we believe the change would violate any law or legal requirement or cause the information to be incorrect</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2">
        <p class="title1">Storage Period</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>Personal data is stored until the time of deletion of the account or the revocation of consent. However, we reserve the right to display any content published by users for an unlimited period of time.</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2">
        <p class="title1">Data Security</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>We have implemented measures designed to secure your personal information from accidental loss and from unauthorized access, use, alteration, and disclosure. All information you provide to us is stored on our secure servers behind firewalls. Any payment transactions will be encrypted using SSL technology.</p>
        <p>The safety and security of your information also depends on you. Where we have given you (or where you have chosen) a password for access to certain parts of the Services, you are responsible for keeping this password confidential. We ask you not to share your password with anyone.</p>
        <p>Unfortunately, the transmission of information via the internet and mobile platforms is not completely secure. Although we do our best to protect your personal information, we cannot guarantee the security of your personal information transmitted through the Services. Any transmission of personal information is at your own risk. We are not responsible for circumvention of any privacy settings or security measures we provide.</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2">
        <p class="title1">No Collection<br> of Information</p>
        <p class="title2">From Children</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>The Services are intended for use by adults only. We do not solicit or knowingly collect any information from visitors under 18 years of age. Please do not use the Services if you are not yet 18.</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2">
        <p class="title1">California</p>
        <p class="title2">Disclosures</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>For residents of California, California Bus. & Prof. Code § 22575 seeks disclosure of how the Services respond to web browser “do not track” signals or other mechanisms that provide consumers the ability to exercise choice regarding the collection of personal information about their online activities over time and across third-party websites or online services. Although it’s not clear that the statute applies, and although it does not define such signals or mechanisms, we believe that an example might be a browser option allowing you to ask websites not to track you across third-party websites so that they can serve targeted or behavioral advertising to you. If your browser or similar mechanism gives the Services a “do not track” signal, the Services will not honor it because of the tracking described in “Information We Collect and How We Collect It”</p>
        <p>A business subject to California Civil Code § 1798.83 is required to disclose to its California customers, upon request, the identity of any third parties to whom the business has disclosed personal information for the third parties’ direct marketing purposes within the previous calendar year, along with the type of personal information disclosed. If you are a California resident and would like to make such a request, please submit your request in writing to the address specified below. Please note that under California law businesses are only required to respond to a customer request once during any calendar year.</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2">
        <p class="title1">Using the<br> Services from</p>
        <p class="title2">Outside the<br> United States</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>This policy is intended to cover collection of information on or via the Services from residents of the United States. If you are visiting the Services from outside the United States, please be aware that your information may be transferred to, stored, and processed in the United States where our servers are located and our central database is operated. The data protection and other laws of the United States and other countries might not be as comprehensive as those in your country. Please be assured that we seek to take reasonable steps to ensure that your privacy is protected. By using the Services, you understand that your information may be transferred to our facilities and those third parties with whom we share it as described in this policy.</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2">
        <p class="title1">Changes to Our</p>
        <p class="title2">Privacy Policy</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>We may update our privacy policy from time to time. If we make material changes to how we treat our users’ personal information, we will post the new privacy policy on this page and notify you by posting an announcement on our Services or by email to the primary email address specified in your account.</p>
        <p>The date the privacy policy was last revised is identified at the bottom of the page. You are responsible for ensuring we have an up-to-date active and deliverable email address for you and for periodically visiting this privacy policy to check for any changes.</p>
    </div>
</div>

<hr class="hr cont_mt70">
<div class="content_width ch2 fx w sb content_margin2">
    <div class="column_size_2">
        <p class="title1">Contact</p>
        <p class="title2">Information</p>
    </div>
    <div class="column_size_1 cont_bx txt_bx">
        <p>To ask questions or comment about this privacy policy and our privacy practices, contact us at:</p>
        <p>Outpost Club Inc,<br> 1277 Jefferson ave<br> 11221 Brooklyn NY USA<br> Email: info@outpost-club.com</p>
    </div>
</div>


*}







