	
{if $page->id == 428}
	<div class="fx ch5 c w">
	<!-- Philadelphia -->
		<div class="item">
	        <img src="/design/{$settings->theme|escape}/images/landing/living-room.svg" alt="Fully furnished">
	        <p class="title">Furnished</p>
	    </div>
		<div class="item">
			<img src="/design/{$settings->theme|escape}/images/landing/wifi.svg" alt="WiFi">
			<p class="title">WiFi*</p>
			<p class="note center">*One-time annual WiFi fee of $99</p>
		</div>
		<div class="item">
			<img src="/design/{$settings->theme|escape}/images/landing/invoice.svg" alt="Utilities">
			<p class="title">Utilities</p>
		</div>
		<div class="item">
			<img src="/design/{$settings->theme|escape}/images/landing/el.svg" alt="Electricity (no cap)">
			<p class="title">Electricity (no cap)</p>
		</div>
		<div class="item">
			<img src="/design/{$settings->theme|escape}/images/landing/brush.svg" alt="Cleaning and maintenance">
			<p class="title">Cleaning and maintenance</p>
			<p class="text">We help you keep common spaces nice and tidy for everyone who shares them</p>
		</div>
	</div>
{elseif $page->id == 534}
	<div class="fx c w">
		<!-- Myrtle House -->
		<div class="item">
	        <img src="/design/{$settings->theme|escape}/images/landing/living-room.svg" alt="Fully furnished">
	        <p class="title">Fully furnished</p>
	        <p class="text">Recently remodeled houses</p>
	    </div>
		<div class="item">
			<img src="/design/{$settings->theme|escape}/images/landing/shield_.svg" alt="Security">
			<p class="title">Security</p>
			<p class="text">Our Nest systems will allow you to always feel safe at home</p>
		</div>
		<div class="item">
			<img src="/design/{$settings->theme|escape}/images/landing/invoice.svg" alt="Utilities">
			<p class="title">Utilities</p>
			<p class="text">You’ll never have to worry about your utility bill again. Outpost manages all gas, electricity, water and wifi bills for you. Utilities costs can be found on each house page.</p>
			{*<p class="text">You`ll never have to "pay the bills" again. This includes gas, water, electric and WiFi</p>*}
		</div>
		<div class="item">
			<img src="/design/{$settings->theme|escape}/images/landing/brush.svg" alt="Cleaning and maintenance">
			<p class="title">maintenance</p>
			<p class="text">Our dedicated maintenance team is here so you don't to worry about finding the right people to do the job.</p>
		</div>
	</div>
{else}
	<div class="fx c w">
		<div class="item">
	        <img src="/design/{$settings->theme|escape}/images/landing/living-room.svg" alt="Fully furnished">
	        <p class="title">Fully furnished</p>
	        <p class="text">Recently remodeled houses</p>
	    </div>
		<div class="item">
			<img src="/design/{$settings->theme|escape}/images/landing/shield_.svg" alt="Security">
			<p class="title">Security</p>
			<p class="text">Our Nest systems will allow you to always feel safe at home</p>
		</div>
		<div class="item">
			<img src="/design/{$settings->theme|escape}/images/landing/invoice.svg" alt="Utilities">
			<p class="title">Utilities</p>
			<p class="text">You’ll never have to worry about your utility bill again. Outpost manages all gas, electricity, water and wifi bills for you. Utilities costs can be found on each house page.</p>
			{*<p class="text">You`ll never have to "pay the bills" again. This includes gas, water, electric and WiFi</p>*}
		</div>
		<!-- 413 - Williamsburg -->
		{if $page->id != 413}
		<div class="item">
			<img src="/design/{$settings->theme|escape}/images/landing/brush.svg" alt="Cleaning and maintenance">
			<p class="title">Cleaning and maintenance</p>
			<p class="text">We help you keep common spaces nice and tidy for everyone who shares them</p>
		</div>
		{/if}
	</div>
{/if}


{include file='bx/corona.tpl'} 
