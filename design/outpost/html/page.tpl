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
{if $page->id == 104}
    <p style="max-width: 200px; margin: 0 auto 25px;">
        <img src="/design/{$settings->theme|escape}/images/Qira.svg" alt="Qira logo" class="w100">
    </p>
	<div class="item">
        <!-- <h5 class="bold_h1">{$p->name}</h5> -->
        <ul>
            <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <input class="hide" type="checkbox" id="faq_1">
                <label class="h5 pc_1" for="faq_1" itemprop="name">How do I apply for Qira?</label>
                <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer"><div itemprop="text"><p>After you accept Outpost Club's offer and indicate that you want to use Qira, Outpost Club will send you a personal invitation to apply on our exclusive Qira portal. The application is free and takes only minutes to fill out!</p></div></div>
            </li>
            <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <input class="hide" type="checkbox" id="faq_2">
                <label class="h5 pc_2" for="faq_2" itemprop="name">How quickly will my Qira application be approved?</label>
                <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                	<div itemprop="text"><p>Pre-approval is nearly instantaneous. Qira will notify you or as soon as you have completed your application on their system. Once your application is submitted, give them up to 24 hours to complete the approval process.</p></div>
                </div>
            </li>
            <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <input class="hide" type="checkbox" id="faq_3">
                <label class="h5 pc_3" for="faq_3" itemprop="name">What if I have a past eviction or bankruptcy?</label>
                <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                	<div itemprop="text"><p>Qira factors in a number of criteria when making application decisions. Past rental and credit history is a strong indicator of future behavior, but certainly not the only important event. The Qira team do their best to evaluate your application in its entirety when making a final decision. The most important thing you can do is to be upfront and comprehensive when you apply.</p></div>
                </div>
            </li>
            <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <input class="hide" type="checkbox" id="faq_4">
                <label class="h5 pc_4" for="faq_4" itemprop="name">Can I apply with a roommate?</label>
                <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                	<div itemprop="text"><p>Yes. Qira will allow roommates to apply. You will each need to fill out a separate Qira application and note that you are applying with a roommate on the application.</p></div>
                </div>
            </li>
            <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <input class="hide" type="checkbox" id="faq_5">
                <label class="h5 pc_5" for="faq_5" itemprop="name">Are you working with all U.S. states?</label>
                <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                	<div itemprop="text"><p>Yes.</p></div>
                </div>
            </li>
            <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <input class="hide" type="checkbox" id="faq_6">
                <label class="h5 pc_6" for="faq_6" itemprop="name">Do you accept international renters?</label>
                <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                	<div itemprop="text"><p>Yes.</p></div>
                </div>
            </li>
            <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <input class="hide" type="checkbox" id="faq_7">
                <label class="h5 pc_7" for="faq_7" itemprop="name">How long does it take for me to get approved?</label>
                <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                	<div itemprop="text"><p>Pre-approval is almost instantaneous. Qira will notify you as soon as you have completed your application on their system. Once your application is submitted, give them up to 24 hours to complete the approval process.</p></div>
                </div>
            </li>
            <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <input class="hide" type="checkbox" id="faq_8">
                <label class="h5 pc_8" for="faq_8" itemprop="name">What do I need to supply when applying?</label>
                <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                	<div itemprop="text"><p>Your Social Security Number and proof of ID, employment and income are required.</p></div>
                </div>
            </li>
            <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <input class="hide" type="checkbox" id="faq_9">
                <label class="h5 pc_9" for="faq_9" itemprop="name">Is it safe to apply?</label>
                <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                	<div itemprop="text"><p>Yes, Qira takes security and safety very seriously.</p></div>
                </div>
            </li>
            <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <input class="hide" type="checkbox" id="faq_10">
                <label class="h5 pc_10" for="faq_10" itemprop="name">I can’t connect my bank or my bank is not listed How do I continue my application?</label>
                <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                	<div itemprop="text"><p>You can send your last threebank statements in PDF format to customerservice@Qira.com if you have issues connecting your bank.</p></div>
                </div>
            </li>
            <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <input class="hide" type="checkbox" id="faq_11">
                <label class="h5 pc_11" for="faq_11" itemprop="name">How much does Qira cost?</label>
                <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                	<div itemprop="text"><p>For security deposits, once the lease has been finalized, the Qira fee is 1%–2.5% of your total lease value, depending on your financial profile. There is an additional $49 setup cost, and that's it!</p></div>
                </div>
            </li>
            <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <input class="hide" type="checkbox" id="faq_12">
                <label class="h5 pc_12" for="faq_12" itemprop="name">When do I pay the Qira fee?</label>
                <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                	<div itemprop="text"><p>The Qira fee is paid only after you have finalized your lease agreement.</p></div>
                </div>
            </li>
            <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <input class="hide" type="checkbox" id="faq_13">
                <label class="h5 pc_13" for="faq_13" itemprop="name">Does Qira cover my late or missed rent payments?</label>
                <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                	<div itemprop="text"><p>No. Qira is not insurance for the renter. So make sure to pay your rent on time every month!</p></div>
                </div>
            </li>
            <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                <input class="hide" type="checkbox" id="faq_14">
                <label class="h5 pc_14" for="faq_14" itemprop="name">Do I pay my rent to Qira or to Outpost Club?</label>
                <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                	<div itemprop="text"><p>Rent is always paid to Outpost Club. Qira is only part of the lease approval process. Once Qira gets you approved, Qira steps away and you interact with Outpost Club. Of course, Qira will still be here if you have any questions.</p></div>
                </div>
            </li>
        </ul>
    </div>
    <div class="txt center">
        <p>Outpost Club assumes that by paying the security deposit, you, the tenant applicant, are fully committed to staying at the property you are paying for. Therefore, if you decide to cancel after paying the security deposit and signing the lease agreement, Outpost Club reserves the right to keep your security deposit under the following conditions: If you need to cancel more than 60 days before your arrival, you will be refunded your entire first month’s rent and your entire security deposit. If you need to cancel between 30 days before your arrival, you will receive your payment for the first month's rent back (minus fees). If you cancel less than 30 days before your arrival, you will receive no refund. If you pay your security deposit but have not signed your lease agreement, you are entitled to a full refund of your security deposit, but please keep in mind that your spot is not secured until you've completed the steps (including signing your lease), and therefore someone else may rent the room you have chosen.</p>
    </div>
{/if}
</div>

