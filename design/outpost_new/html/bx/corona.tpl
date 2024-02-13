{*
<div class="covid_block">
    <img src="/design/{$settings->theme|escape}/images/icons/information.svg" alt="covid">
    {if $page->url == 'student-housing-nyc'}
    <div class="txt">
        <p>We never charge application fees: After we’ve sent you an offer, you can either pay your deposit or sign up with Qira for more flexibility, and we’ll have your space ready for spring semester! You can apply alone or sign up for a full apartment with a group of friends.</p>
        <p>We understand that the COVID-19 pandemic makes it difficult to make long-term plans, so we’re also offering a money-back guarantee on your deposit and membership fee if your university shuts down or the state enacts a stay-at-home order due to COVID-19.</p>
    </div>
    {else}
    <div class="txt">
    	{if $is_mobile == 1}
    	<p>
    	<span>As always, the well-being of our members is our top priority</span>
    	<input type="checkbox" id="show_text_corona" class="show_covid_text hide"> 
        <label for="show_text_corona" class="show_covid_text_label"><i></i></label>
        <span class="hide_text">, and we're committed to providing a safe environment for members at all Outpost houses as the novel coronavirus pandemic continues to evolve. We're following expert recommendations within our houses to ensure your safety, including by leaving rooms empty for at least 24 hours after a move-out, providing our staff with appropriate PPE and using high-strength Lysol, Clorox and bleach disinfectants to clean after every guest departure. We'll continue to adapt our strategies moving forward to ensure the health and safety of all of our members.</span>
        </p>
    	{else}
        <p>As always, the well-being of our members is our top priority, and we're committed to providing a safe environment for members at all Outpost houses as the novel coronavirus pandemic continues to evolve. We're following expert recommendations within our houses to ensure your safety, including by leaving rooms empty for at least 24 hours after a move-out, providing our staff with appropriate PPE and using high-strength Lysol, Clorox and bleach disinfectants to clean after every guest departure. We'll continue to adapt our strategies moving forward to ensure the health and safety of all of our members.</p>
        {/if}
       
    </div>
    {/if}
</div>
*}