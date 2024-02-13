{* Invoice Page *}

{$this_page='order' scope=parent}
{$members_menu=1 scope=parent}
{$apply_button_hide=1 scope=parent}
{$meta_title = "Your invoice #`$order->id`" scope=parent}


<div class="invoice_width main_width">
	<div class="invoice_block w100">

		<div class="invoice_header fx w">

			<div class="company_info">
				<img class="logo_b" src="/design/{$settings->theme|escape}/images/logo_b.svg" alt="{$settings->company_name}">
				<p>1277 Jefferson ave <br>Brooklyn NY 11221 United States</p>
				<p><a href="tel:+18337076611" target="_blank" rel="nofollow noopener noreferer">+1 (833) 707-6611</a></p>
				<p><a href="mailto:info@outpost-club.com" target="_blank" rel="nofollow noopener noreferer">info@outpost-club.com</a></p>
			</div><!-- company_info -->

			<div class="invoice_info text_right">

				{if $order->paid == 1}
					<div class="status paid">Paid</div>
				{else}
					{if $order->status == 0}
						<div class="status new">New</div>
					{elseif $order->status == 1}
						<div class="status pending">Pending</div>
					{elseif $order->status == 3}
						<div class="status canceled">Canceled</div>
					{/if}
				{/if}

				<h3 class="title">Invoice</h3>
				<p>Invoice number: <span>{$order->id}</span></p>
				<p>Date of issue: <span>{$order->date|date}</span></p>
				{if $order->paid != 1 && $order->status != 3}
					<p>Due date: <span>{(strtotime($order->date)+ (2*24*60*60))|date_format:'%b %e, %Y'}</span></p>
				{/if}
			</div><!-- invoice_info -->

			<div class="bill_to">
				<h3 class="title">Billed to</h3>
				<p>{$order->name|escape}</p>
				<p>{$order->email|escape}</p>
			</div><!-- bill_to -->

		</div><!-- invoice_header -->


		<div class="inv_purchases">
			<table>
				<tr>
					<th class="pd"></th>
					<th colspan="2">Items</th>
					<th class="pd"></th>
				</tr>
				{foreach $purchases as $purchase}
					<tr>
						<td class="pd"></td>
						<td class="name">
							{$purchase->product_name|escape} {$purchase->variant_name|escape}
						</td>
						<td class="price">
							{$currency->sign}&nbsp;{($purchase->price*$purchase->amount)|convert}
						</td>
						<td class="pd"></td>
					</tr>
				{/foreach}
				{if $order->discount > 0}
					<tr class="total">
						<td class="pd"></td>
						<td class="name">Discount</td>
						<td class="price">{$order->discount}&nbsp;%</td>
						<td class="pd"></td>
					</tr>
				{/if}
				<tr class="total">
					<td class="pd"></td>
					<td class="name">
						Total
					</td>
					<td class="price">
						{$currency->sign}&nbsp;{$order->total_price|convert}
					</td>
					<td class="pd"></td>
				</tr>
				{if $payment_method}
					{$payment_commission = (($all_currencies[$payment_method->currency_id]->rate_from / $all_currencies[$payment_method->currency_id]->rate_to) - 1) * $order->total_price}
					<tr class="total">
						<td class="pd"></td>
						<td class="name">
							Fee ({$payment_method->name})
						</td>
						<td class="price">
							{$currency->sign}&nbsp;{$payment_commission|convert}
						</td>
						<td class="pd"></td>
					</tr>
					<tr class="total">
						<td class="pd"></td>
						<td class="name">
							Total to pay
						</td>
						<td class="price">
							{$currency->sign}&nbsp;{($order->total_price+$payment_commission)|convert}
						</td>
						<td class="pd"></td>
					</tr>
				{/if}
			</table>
		</div><!-- inv_purchases -->

		{if (!$order->paid && $order->status!=3) || !$order->payment_method_id}
			{if $payment_methods && !$payment_method && $order->total_price>0}
				<div class="id" id="pm"></div>
				<div class="payment_methods_block">
				<form method="post">
					<h3 class="title">Select payment method</h2>
					<div class="payment_methods fx w w100">
					    {foreach $payment_methods as $payment_method}
					    	{$payment_commission = (($all_currencies[$payment_method->currency_id]->rate_from / $all_currencies[$payment_method->currency_id]->rate_to) - 1) * $order->total_price}
					    	<div class="item fx v">		
								<div class="cont">
									<h4 class="title">
										{$payment_method->name}
										{if $payment_method->name=='ACH'}
											<span>Bank transfer</span>
										{/if}
									</h4>
									<div class="amounts fx w100">
										<p>
											Fee
											<span class="price">
												{$all_currencies[$payment_method->currency_id]->sign}
												{$payment_commission|convert}
											</span>
										</p>
										<p>
											Total to pay
											<span class="price">
												{$all_currencies[$payment_method->currency_id]->sign} {($order->total_price+$payment_commission)|convert}
											</span>
										</p>
									</div>
									{*
									<div class="description">
										{$payment_method->description}
									</div>
									*}
								</div><!-- cont -->
								<!-- <input class="button" type='submit' value='Select {$payment_method->name}'> -->
								<button class="button" type="submit" name="payment_method_id" value="{$payment_method->id}">
									Pay by
									{if $payment_method->module=='Stripe'}
										{$payment_method->module}
									{else}
										{$payment_method->name}
									{/if}
								</button>
					    	</div><!-- item -->
					    {/foreach}
					</div><!-- payment_methods -->
					<!-- <input type='submit' class="button" value='Proceed to checkout'> -->
					</form>
				</div><!-- payment_methods -->
			{elseif $payment_method && $order->status != 3}
				<div class="payment_method">
					<div class="title_block fx sb w100">
						<h3 class="title">Payment method: <span>{$payment_method->name}</span></h3>
						
						{if $order->status==0}
							<form method=post>
								<button class="button" type="submit" name="reset_payment_method" value="1">
									<i class="fa fa-arrow-left"></i> change payment method
								</button>
							</form>
						{else if $order->status==1}
							{*
							<form method=post>
								<button class="button" type="submit" name="reset_payment_method" value="1">
									Retry payment <i class="fa fa-arrow-right"></i>
								</button>
							</form>
							*}
						{/if}
					</div><!-- title_block -->
					
					<div class="checkout_block w100">
						{if $order->status==0}
							{checkout_form order_id=$order->id module=$payment_method->module}
						{else if $order->status==1}
							Pending...
						{/if}
					</div><!-- checkout_block -->
					
				</div><!-- payment_method -->
			{/if}
		{/if}


		<p class="inv_questions"><span>Questions?</span> Contact Outpost Club Inc at <a href="mailto:info@outpost-club.com" target="_blank" rel="nofollow noopener noreferer">info@outpost-club.com</a> or call at <a href="tel:+18337076611" target="_blank" rel="nofollow noopener noreferer">+1 (833) 707-6611</a>.</p>

	</div><!-- invoice_block -->
</div><!-- main_width -->
 