{* Application Page *}

{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

{$this_page='page' scope=parent}
{$jquery_in_head=1 scope=parent}



<div class="main_width {if $page->image == ''}page_wrap_{/if}">
    <br>
    <br>
    <p class="big_p center">
		{if $page->id==579}
			Feel free to reach out if you have any questions!
		{else}
			Moving to
			{if $page->house_page->parent_id==427 || in_array($page->id, [512, 572])}
				Philadelphia
			{else}
				New York
			{/if}
    		was never easier and affordable as it is now, with Outpost Club!
		{/if}
    </p>
    <br>
    <br>
    <br>
	{if !in_array($page->id, [572, 579])}
    <div class="steps txt">
        <h4 class="h5 center">How it works:</h4>        
        {include file='bx/how_it_works.tpl'} 
    </div>
	{/if}
    <div class="press_form hs_form_bx" data-house_id="{$page->house_page->nebo_id}">
        {$page->body}
		{if $page->id == 100} 
			{literal}
				<!--[if lte IE 8]>
				<script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2-legacy.js"></script>
				<![endif]-->
				<script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2.js"></script>
				<script>
				hbspt.forms.create({
					portalId: "4068949",
    				formId: "d39125d9-94c1-4b4e-b9c7-6e407c579d77",
				});
				</script>
			{/literal}
		{/if}
		{* <div class="testform">test</div> *}
    </div>
</div>




{literal}
<script>
$(function(){

let house_id = $('.hs_form_bx').data('house_id');

function sendHSForm() {
	let form = $('form.hs-form');

	if(!house_id)
		house_id = 0;

	if (form.find('input[name=email]').length) {
		let email = form.find('input[name=email]').val();
		$.cookie('email', email, {path: '/'});
	}
	
	// Houses
	let selected_houses = [];

	let manhattan_inp = form.find('[name=manhattan]:checked');
	if (manhattan_inp.length) {
    	manhattan_inp.each(function(){
			selected_houses.push($(this).attr('value'));
		});
    }
	let brooklyn_inp = form.find('[name=brooklyn]:checked');
	if (brooklyn_inp.length) {
    	brooklyn_inp.each(function(){
			selected_houses.push($(this).attr('value'));
		});
    }
	let philadelphia_inp = form.find('[name=philadelphia]:checked');
	if (philadelphia_inp.length) {
    	philadelphia_inp.each(function(){
			selected_houses.push($(this).attr('value'));
		});
    }
	let cassa_hotel_inp = form.find('[name=cassa_hotel]:checked');
	if (cassa_hotel_inp.length) {
    	cassa_hotel_inp.each(function(){
			selected_houses.push($(this).attr('value'));
		});
    }

	


	// Budget
	let budgets = [];
	let budget_inp = form.find('[name=what_is_your_budget_]:checked');
	if (budget_inp.length) {
    	budget_inp.each(function(){
			budgets.push($(this).attr('value'));
		});
    }


    // Refers
	let refers = [];
    let how_learn_inp = form.find('[name=how_learn]:checked');
    if (how_learn_inp.length) {
    	how_learn_inp.each(function(){
			refers.push($(this).attr('value'));
		});
    }

    

    form.ajaxSubmit({
        dataType: 'json',
        url: 'ajax/add_lead.php',
        type: 'POST',
        data: {
    		house_id: house_id,
			selected_houses: selected_houses,
			budgets: budgets,
			refers: refers,
			form_type: {/literal}{in_array($page->id, [572])} {* mason qr form *}{literal}
        },
        success: function(data){
        }
    });
}


window.addEventListener('message', event => {
	if(event.data.type === 'hsFormCallback' && event.data.eventName === 'onFormSubmit') {
		sendHSForm();
	}
});


// $('.testform').live('click', function(){sendHSForm();});


});

</script>
<style>
	body .hs-fieldtype-intl-phone.hs-input select{
		width: 22% !important;
	}
</style>
{/literal}