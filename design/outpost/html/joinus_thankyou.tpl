{* Шаблон текстовой страницы *}

{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

{$this_page='page' scope=parent}




<div class="main_width {if $page->image == ''}page_wrap{/if}">
	{include file='bx/corona.tpl'} 
	<br>
	<br>
	{*<h1 class="text_center">{$page->header|escape}</h1>*}

	<div class="press_form">
	
	<script src="//js.hsforms.net/forms/v2.js"></script>
	<script>
	  hbspt.forms.create({
		portalId: "4068949",
		formId: "d39125d9-94c1-4b4e-b9c7-6e407c579d77"
	});
	</script>
    </div>


	{$page->body}
</div>

<div class="main_width steps txt">
    <h4 class="h5 center">How it works:</h4>
    {*<div class="fx ch3">
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/form.svg" alt="Form">
            <p class="title">Step 1 <br> Fill out the form</p>
            <p class="text">To get pricing and availability, fill out the form on this page</p>

        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/phone2.svg" alt="Interview">
            <p class="title">Step 2 <br> Have a Quick Interview</p>
            <p class="text">Schedule a time to talk or fill out our interview form</p>
        </div>
        <div>
            <img src="design/{$settings->theme|escape}/images/icons/house.svg" alt="Move in house">
            <p class="title">Step 3 <br> Move In!</p>
            <p class="text">You`re all set! We’re excited to welcome you to one of our coliving spaces here in NYC!</p>
        </div>
    </div>*}
    
    {include file='bx/how_it_works.tpl'} 
    
</div>  


