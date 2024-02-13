{* Page: Skip Your Security Deposit *}
{$canonical="/{$page->url}" scope=parent}
{$this_page='page page_skip_deposit' scope=parent}


<div class="page_header content_width">
    <div class="cont_width">
        <h1 class="title1">{$page->header|escape}</h1>
        <p class="title_desc">Outpost Club has partnered with Qira to offer zero security deposit for qualified tenants</p>

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



<div class="skip_deposit_bx1 content_width fx w sb">
    <div class="img_bx">
        <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/qira.svg" alt="Qira">
    </div>
    <div class="cont_bx txt_bx">
        <p>Outpost Club has partnered with Qira to offer ZERO security deposit for qualified tenants. Qualified members pay a small monthly fee during their time with Outpost Club, and never need to think about tying up their funds with a security deposit, allowing them to use their own money to enjoy exploring the city!</p>
        <p>Qira is free to apply to, and the costs include a one-time membership fee of $49, and a small monthly fee of $7-$21 (depending your total lease value, and your financial profile).</p>
        <p>Join today and free yourself from the security deposit hassle!</p>
    </div>
</div><!-- skip_deposit_bx1 -->


<div class="faq faq_cont_bx" id="faq">
    <ul>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_1">
            <label class="h5 pc_1" for="faq_1" itemprop="name">How do I apply for Qira?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>After you accept Outpost Club's offer and indicate that you want to use Qira, Outpost Club will send you a personal invitation to apply on our exclusive Qira portal. The application is free and takes only minutes to fill out!</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_2">
            <label class="h5 pc_2" for="faq_2" itemprop="name">How quickly will my Qira application be approved?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Pre-approval is nearly instantaneous. Qira will notify you or as soon as you have completed your application on their system. Once your application is submitted, give them up to 24 hours to complete the approval process.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_3">
            <label class="h5 pc_3" for="faq_3" itemprop="name">What if I have a past eviction or bankruptcy?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Qira factors in a number of criteria when making application decisions. Past rental and credit history is a strong indicator of future behavior, but certainly not the only important event. The Qira team do their best to evaluate your application in its entirety when making a final decision. The most important thing you can do is to be upfront and comprehensive when you apply.</p>
                </div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_4">
            <label class="h5 pc_4" for="faq_4" itemprop="name">Can I apply with a roommate?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Yes. Qira will allow roommates to apply. You will each need to fill out a separate Qira application and note that you are applying with a roommate on the application.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_5">
            <label class="h5 pc_5" for="faq_5" itemprop="name">Are you working with all U.S. states?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Yes.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_6">
            <label class="h5 pc_6" for="faq_6" itemprop="name">Do you accept international renters?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Yes.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_7">
            <label class="h5 pc_7" for="faq_7" itemprop="name">How long does it take for me to get approved?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Pre-approval is almost instantaneous. Qira will notify you as soon as you have completed your application on their system. Once your application is submitted, give them up to 24 hours to complete the approval process.</p>
                </div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_8">
            <label class="h5 pc_8" for="faq_8" itemprop="name">What do I need to supply when applying?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Your Social Security Number and proof of ID, employment and income are required.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_9">
            <label class="h5 pc_9" for="faq_9" itemprop="name">Is it safe to apply?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Yes, Qira takes security and safety very seriously.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_10">
            <label class="h5 pc_10" for="faq_10" itemprop="name">I can’t connect my bank or my bank is not listed How do I continue my application?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>You can send your last threebank statements in PDF format to customerservice@Qira.com if you have issues connecting your bank.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_11">
            <label class="h5 pc_11" for="faq_11" itemprop="name">How much does Qira cost?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>For security deposits, once the lease has been finalized, the Qira fee is 1%–2.5% of your total lease value, depending on your financial profile. There is an additional $49 setup cost, and that's it!</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_12">
            <label class="h5 pc_12" for="faq_12" itemprop="name">When do I pay the Qira fee?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>The Qira fee is paid only after you have finalized your lease agreement.</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_13">
            <label class="h5 pc_13" for="faq_13" itemprop="name">Does Qira cover my late or missed rent payments?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>No. Qira is not insurance for the renter. So make sure to pay your rent on time every month!</p></div>
            </div>
        </li>
        <li itemscope="" itemprop="mainEntity" itemtype="https://schema.org/Question">
            <input class="hide" type="checkbox" id="faq_14">
            <label class="h5 pc_14" for="faq_14" itemprop="name">Do I pay my rent to Qira or to Outpost Club?</label>
            <div class="faq_text" itemscope="" itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                <div itemprop="text"><p>Rent is always paid to Outpost Club. Qira is only part of the lease approval process. Once Qira gets you approved, Qira steps away and you interact with Outpost Club. Of course, Qira will still be here if you have any questions.</p></div>
            </div>
        </li>
    </ul>
</div>

{*
<div class="skip_deposit_bx1 n2 content_width fx rev">
    <div class="cont_bx txt_bx">
        <p>Qira is free to apply to, and the costs include a one-time membership fee of $49, and a small monthly fee of $7-$21 (depending your total lease value, and your financial profile).</p>
        <p>Join today and free yourself from the security deposit hassle !</p>
    </div>
</div>
*}


