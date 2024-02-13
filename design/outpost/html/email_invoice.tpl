{* Invoice email template for customer *}

{$subject = "Invoice #`$order->id`" scope=parent}
<div style="background:#f2f2f2;width:100%;min-width:100%;padding: 40px 0">
<table cellpadding="0" cellspacing="0" border="0" align="center" width="600" style="max-width:96%; margin:0 auto !important;">
	<tr>
		<td style="padding: 0 30px 20px;">
			<a href="{$config->root_url}" target="_blank" rel="nofollow noopener noreferer" style="display:block; margin:0 0 20px;">
				<img src="{$config->root_url}/design/{$settings->theme|escape}/images/logo_b.svg" alt="{$settings->company_name}" width="190" height="28">
			</a>
			<p style="color:#333; font: 100 14px/1.1 Helvetica; margin:0 0 7px;">1277 Jefferson ave <br>Brooklyn NY 11221 United States</p>
			<p style="font: 100 14px/1.1 Helvetica; margin:0 0 7px;"><a style="color:#333; text-decoration:none;" href="tel:+18337076611" target="_blank" rel="nofollow noopener noreferer">+1 (833) 707-6611</a></p>
			<p style="font: 100 14px/1.1 Helvetica; margin:0;"><a style="color:#333; text-decoration:none;" href="mailto:info@outpost-club.com" target="_blank" rel="nofollow noopener noreferer">info@outpost-club.com</a></p>
		</td>
	</tr>
	<tr>
		<td>
			<table cellpadding="0" cellspacing="0" border="0" align="center" style="background:#fff; border-radius: 5px; width:100%; box-shadow: 0 3px 15px rgba(0,0,0,.15);">
				<tr>
					<td colspan="4" style="padding: 40px 30px 20px;">
						<p style="background:{if $order->paid == 1}#008f35{elseif $order->status == 1}#2881ee{elseif $order->status == 3}#cacaca{else}#333{/if}; display:inline-block; color:#fff; font: 600 16px/1 Helvetica; text-transform: uppercase; padding:6px 12px 3px; margin: 0 0 3px;">
							{if $order->paid == 1}
								Paid
							{else if $order->status == 0}
								New
							{elseif $order->status == 1}
								Pending
							{elseif $order->status == 2}
								Closed
							{elseif $order->status == 3}
								Canceled
							{/if}
						</p>
						<p style="color:#333; font: 500 36px/1 Helvetica; text-transform:uppercase; margin:0 0 15px;">Invoice</p>
						<p style="color:#333; font: 100 14px/1.1 Helvetica; margin:0 0 7px;">Invoice number: <span style="font-weight:700">{$order->id}</span></p>
						<p style="color:#333; font: 100 14px/1.1 Helvetica; margin:0 0 7px;">Date of issue: <span style="font-weight:700">{$order->date|date}</span></p>
						{if $order->paid != 1 && $order->status != 3}
							<p style="color:#333; font: 100 14px/1.1 Helvetica; margin:0 0 7px;">Due date: <span style="font-weight:700">{(strtotime($order->date)+ (2*24*60*60))|date_format:'%b %e, %Y'}</span></p>
						{/if}

						<p style="color:#333; font: 500 22px/1 Helvetica; text-transform:uppercase; margin:40px 0 10px;">Billed to</p>
						<p style="color:#333; font: 100 14px/1.1 Helvetica; margin:0 0 7px;">{$order->name|escape}</p>
						<p style="color:#333; font: 100 14px/1.1 Helvetica; margin:0 0 7px;">{$order->email|escape}</p>
					</td>
				</tr>
				<tr>
					<td width="15"></td>
					<td style="color:#999; font: 100 12px/1 Helvetica; text-transform:uppercase; padding: 5px 15px;">Items</td>
					<td></td>
					<td width="15"></td>
				</tr>
				{foreach $purchases as $purchase}
					<tr>
						<td style="background:#f2f2f2" width="15"></td>
						<td style="background:#f2f2f2; border-bottom:#d9d9d9 1px solid; color:#555; font: 500 15px/1 Helvetica; padding:12px 15px 10px;">{$purchase->product_name|escape} {$purchase->variant_name|escape}</td>
						<td style="background:#f2f2f2; border-bottom:#d9d9d9 1px solid; color:#222; font: 500 15px/1 Helvetica; text-align:right; width:70px; padding:12px 15px 10px;">{$currency->sign}&nbsp;{($purchase->price*$purchase->amount)|convert}</td>
						<td style="background:#f2f2f2" width="15"></td>
					</tr>
				{/foreach}

				{if $order->discount > 0}
					<tr>
						<td style="background:#dee0e1" width="15"></td>
						<td style="background:#dee0e1; border-bottom:#c7c9ca 1px solid; color:#555; font: 500 15px/1 Helvetica; text-align:right; padding:12px 15px">Discount</td>
						<td style="background:#dee0e1; border-bottom:#c7c9ca 1px solid; color:#222; font: 500 15px/1 Helvetica; text-align:right; width:70px;padding:12px 15px">{$order->discount}&nbsp;%</td>
						<td style="background:#dee0e1" width="15"></td>
					</tr>
				{/if}
				<tr>
					<td style="background:#dee0e1" width="15"></td>
					<td style="background:#dee0e1; {if $payment_method}border-bottom:#c7c9ca 1px solid;{/if} color:#555; font: 500 15px/1 Helvetica; text-align:right; padding:12px 15px">Total</td>
					<td style="background:#dee0e1; {if $payment_method}border-bottom:#c7c9ca 1px solid;{/if} color:#222; font: 500 15px/1 Helvetica; text-align:right; width:70px; padding:12px 15px">{$currency->sign}&nbsp;{$order->total_price|convert}</td>
					<td style="background:#dee0e1" width="15"></td>
				</tr>
				{if $payment_method}
					{$payment_commission = (($all_currencies[$payment_method->currency_id]->rate_from / $all_currencies[$payment_method->currency_id]->rate_to) - 1) * $order->total_price}
					<tr>
						<td style="background:#dee0e1" width="15"></td>
						<td style="background:#dee0e1; border-bottom:#c7c9ca 1px solid;color:#555; font: 500 15px/1 Helvetica; text-align:right; padding:12px 15px">Fee ({$payment_method->name})</td>
						<td style="background:#dee0e1; border-bottom:#c7c9ca 1px solid; color:#222; font: 500 15px/1 Helvetica; text-align:right; width:70px; padding:12px 15px">{$currency->sign}&nbsp;{$payment_commission|convert}</td>
						<td style="background:#dee0e1" width="15"></td>
					</tr>
					<tr>
						<td style="background:#dee0e1" width="15"></td>
						<td style="background:#dee0e1; color:#555; font: 500 15px/1 Helvetica; text-align:right; padding:12px 15px">Total to pay</td>
						<td style="background:#dee0e1; color:#222; font: 500 15px/1 Helvetica; text-align:right; width:70px; padding:12px 15px">{$currency->sign}&nbsp;{($order->total_price+$payment_commission)|convert}</td>
						<td style="background:#dee0e1" width="15"></td>
					</tr>
				{/if}
				<tr>
					<td colspan="4" style="padding: 20px 30px 20px;">
						{if $order->status == 0}
							<a style="display:block; border-radius: 7px; background:#008f35; color:#fff; font:500 20px/1 Helvetica; text-align:center; text-transform:uppercase; text-decoration: none; padding: 17px 10px 15px; margin: 0 0 45px;" href="{$config->root_url}/order/{$order->url}#pm" target="_blank" rel="nofollow noopener noreferer">Pay</a>
						{/if}
						
						<p style="color:#666;font:100 13px/1 Helvetica;">You can view invoice status by following this link:<br><a style="color:#000" href="{$config->root_url}/order/{$order->url}" target="_blank" rel="nofollow noopener noreferer">{$config->root_url}/order/{$order->url}</a>
						</p>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td style="padding: 15px 30px 20px;">
			<p style="color:#444;font:100 13px/1 Helvetica;"><span style="font-weight:400">Questions?</span> Contact Outpost Club Inc at <a style="color:#444; font-weight:400" href="mailto:info@outpost-club.com" target="_blank" rel="nofollow noopener noreferer">info@outpost-club.com</a> or call at <a style="color:#444; font-weight:400; white-space:nowrap;" href="tel:+18337076611" target="_blank" rel="nofollow noopener noreferer">+1 (833) 707-6611</a>.</p>
		</td>
	</tr>
</table>
</div>





{*
{$subject = "Order #`$order->id`" scope=parent}
<h1 style="font-weight:normal;font-family:arial;">
	<a href="{$config->root_url}/order/{$order->url}">Order #{$order->id}</a>
	for {$order->total_price|convert:$currency->id}&nbsp;{$currency->sign}
	{if $order->paid == 1}payment received{else}waiting for payment{/if},
	{if $order->status == 0}waiting for acceptance{elseif $order->status == 1}accepted{elseif $order->status == 2}executed{elseif $order->status == 3}отменен{/if}
</h1>
<table cellpadding="6" cellspacing="0" style="border-collapse: collapse;">
	<tr>
		<td style="padding:6px; width:170; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
			Status
		</td>
		<td style="padding:6px; width:330; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
			{if $order->status == 0}
				waiting for acceptance      
			{elseif $order->status == 1}
				accepted
			{elseif $order->status == 2}
				executed
			{elseif $order->status == 3}
				отменен
			{/if}
		</td>
	</tr>
	<tr>
		<td style="padding:6px; width:170; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
			Payment
		</td>
		<td style="padding:6px; width:330; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
			{if $order->paid == 1}
			<font color="green">payment received</font>
			{else}
			waiting for payment
			{/if}
		</td>
	</tr>
	{if $order->name}
	<tr>
		<td style="padding:6px; width:170; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
			Customer name
		</td>
		<td style="padding:6px; width:330; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
			{$order->name|escape}
		</td>
	</tr>
	{/if}
	{if $order->email}
	<tr>
		<td style="padding:6px; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
			Email
		</td>
		<td style="padding:6px; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
			{$order->email|escape}
		</td>
	</tr>
	{/if}
	{if $order->phone}
	<tr>
		<td style="padding:6px; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
			Phone
		</td>
		<td style="padding:6px; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
			{$order->phone|escape}
		</td>
	</tr>
	{/if}
	{if $order->address}
	<tr>
		<td style="padding:6px; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
			Shipping address
		</td>
		<td style="padding:6px; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
			{$order->address|escape}
		</td>
	</tr>
	{/if}
	{if $order->comment}
	<tr>
		<td style="padding:6px; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
			Customer comment
		</td>
		<td style="padding:6px; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
			{$order->comment|escape|nl2br}
		</td>
	</tr>
	{/if}
	<tr>
		<td style="padding:6px; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
			Order date
		</td>
		<td style="padding:6px; width:170; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
			{$order->date|date} {$order->date|time}
		</td>
	</tr>
</table>

<h1 style="font-weight:normal;font-family:arial;">You have ordered:</h1>

<table cellpadding="6" cellspacing="0" style="border-collapse: collapse;">

	{foreach $purchases as $purchase}
	<tr>
		<td align="center" style="padding:6px; width:100; padding:6px; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
			{$image = $purchase->product->images[0]}
			<a href="{$config->root_url}/products/{$purchase->product->url}"><img border="0" src="{$image->filename|resize:50:50}"></a>
		</td>
		<td style="padding:6px; width:250; padding:6px; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
			<a href="{$config->root_url}/products/{$purchase->product->url}">{$purchase->product_name}</a>
			{$purchase->variant_name}
			{if $order->paid && $purchase->variant->attachment}
			<br>
			<a href="{$config->root_url}/order/{$order->url}/{$purchase->variant->attachment}"><font color="green">Скачать {$purchase->variant->attachment}</font></a>
			{/if}
		</td>
		<td align=right style="padding:6px; text-align:right; width:150; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
			{$purchase->amount} {$settings->units} &times; {$purchase->price|convert:$currency->id}&nbsp;{$currency->sign}
		</td>
	</tr>
	{/foreach}
	
	{if $order->discount}
	<tr>
		<td style="padding:6px; width:100; padding:6px; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;"></td>
		<td style="padding:6px; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
			Discount
		</td>
		<td align=right style="padding:6px; text-align:right; width:170; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
			{$order->discount}&nbsp;%
		</td>
	</tr>
	{/if}

	{if $order->coupon_discount>0}
	<tr>
		<td style="padding:6px; width:100; padding:6px; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;"></td>
		<td style="padding:6px; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
			Coupon {$order->coupon_code}
		</td>
		<td align=right style="padding:6px; text-align:right; width:170; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
			&minus;{$order->coupon_discount}&nbsp;{$currency->sign}
		</td>
	</tr>
	{/if}

	{if $delivery && !$order->separate_delivery}
	<tr>
		<td style="padding:6px; width:100; padding:6px; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;"></td>
		<td style="padding:6px; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
			{$delivery->name}
		</td>
		<td align="right" style="padding:6px; text-align:right; width:170; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
			{$order->delivery_price|convert:$currency->id}&nbsp;{$currency->sign}
		</td>
	</tr>
	{/if}
	
	<tr>
		<td style="padding:6px; width:100; padding:6px; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;"></td>
		<td style="padding:6px; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;font-weight:bold;">
			Total
		</td>
		<td align="right" style="padding:6px; text-align:right; width:170; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;font-weight:bold;">
			{$order->total_price|convert:$currency->id}&nbsp;{$currency->sign}
		</td>
	</tr>
</table>

<br>
You can view order status by following this link:<br>
<a href="{$config->root_url}/order/{$order->url}">{$config->root_url}/order/{$order->url}</a>
<br>


*}