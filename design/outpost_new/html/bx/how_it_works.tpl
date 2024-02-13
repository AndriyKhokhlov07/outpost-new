{if $how_it_works_type == 2}
<div class="fx ch5 c">
    <div>
        <img src="design/{$settings->theme|escape}/images/icons/checklist.svg" alt="Form">
        <p class="title">Step 1 <br>Fill out a short form</p>
        <p class="text">Fill out this form and a member of our team will contact you about pricing and availability.</p>

    </div>
    <div>
        <img src="design/{$settings->theme|escape}/images/icons/invoice-2.svg" alt="Paid Invoices">
        <p class="title">Step 2 <br> Book your stay</p>
        <p class="text">Select your new room! Your booking is complete once you pay for your stay</p>
    </div>
    <div>
        <img src="design/{$settings->theme|escape}/images/icons/contract.svg" alt="Move in house">
        <p class="title">Step 3 <br> Move in</p>
        <p class="text">You’re all set!</p>
    </div>
</div>
<div class="txt">
    <p class="center">Outpost Club reserves the right to request additional documents if we feel they are needed to accurately assess a guest’s application to live at our locations. These may include financial documents, references, and contact information of previous landlords.</p>
</div>
{else}
<div class="fx ch5">
    <div>
        <img src="design/{$settings->theme|escape}/images/icons/checklist.svg" alt="Form">
        <p class="title">Step 1 <br>Fill out a short form</p>
        <p class="text">Fill out this form and a member of our team will contact you about pricing and availability.</p>

    </div>
    <div>
        <img src="design/{$settings->theme|escape}/images/icons/smartphone.svg" alt="Interview">
        <p class="title">Step 2 <br> Get an offer within a day</p>
        <p class="text">Our team will give you a few different options based on your budget and our availability.</p>
    </div>
    <div>
        <img src="design/{$settings->theme|escape}/images/icons/lens.svg" alt="Background check">
        {*<p class="title">Step 3 <br> Background check</p>
        <p class="text">We screen all candidates before approving applications</p>*}
        <p class="title">Step 3 <br> Rental application</p>
        <p class="text">All candidates complete a background check and credit check approval.</p>
    </div>
    <div>
        <img src="design/{$settings->theme|escape}/images/icons/invoice-2.svg" alt="Paid Invoices">
        <p class="title">Step 4 <br> Paid Invoices</p>
    </div>
    <div>
        <img src="design/{$settings->theme|escape}/images/icons/contract.svg" alt="Move in house">
        <p class="title">Step 5 <br> Move in</p>
        <p class="text">You’re all set!</p>
    </div>
</div>
<div class="txt">
    <p class="center">Outpost Club reserves the right to request additional documents if we feel they are needed to accurately assess a tenants application to live at our locations. These may include financial documents, references, and contact information of previous landlords.</p>
</div>
{/if}