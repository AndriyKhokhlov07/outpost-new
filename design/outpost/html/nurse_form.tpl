{* Шаблон текстовой страницы *}

{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

{$this_page='page' scope=parent}




<div class="main_width {if $page->image == ''}page_wrap{/if}">

	<div class="press_form">
	{literal}
	<!--[if lte IE 8]>
	<script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2-legacy.js"></script>
	<![endif]-->
	<script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2.js"></script>
	<script>
	  hbspt.forms.create({
		portalId: "4068949",
		formId: "b19fbb33-233b-4b96-a4fb-49837e332446"
	});
	</script>
    {/literal}
    </div>


	{$page->body}
</div>



