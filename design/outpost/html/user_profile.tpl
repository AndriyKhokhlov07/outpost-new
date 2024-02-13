{* User (Guest) page *}
{$canonical="/user/profile" scope=parent}
{$apply_button_hide=1 scope=parent}
{$members_menu=1 scope=parent}


<div class="page_wrap">
    <div class="guest_home w1200">
    	<h1 class="bold_h1">Profile</h1>
		<div class="fx w w100">

			{if $guest->main_info}
	    	<div class="item user_info">
	    	<form method="post">
				<input type="checkbox" name="change_password" id="change_password">
	    		<div class="header_bx fx w w100">
	    			<div class="icon">
	    				<i class="fa fa-user-circle-o"></i>
	    			</div>
	    			<div class="title_bx fx v c">
	    				<div class="title">{$guest->main_info['name']}</div>
	    				<div class="options_line">
	    					<a class="logout" href="user/logout/">Logout <i class="fa fa-sign-out"></i></a>
							<label for="change_password">Change password</label>
	    				</div>
	    			</div>
	    		</div>
	    		<div class="inp_bx new_password">
                    <input class="inp" type="password" name="password" placeholder="New password" value="">
                    <i class="fa fa-unlock-alt"></i>
                    <button type="submit"><i class="fa fa-arrow-right"></i></button>
                </div><!-- inp_bx -->
				
				{*
				{if $guest->main_info['address']}
					<div class="box">
						<div class="title">Address</div>
						{if $guest->main_info['address']['country'] || $guest->main_info['address']['city']}
							<p>
								{if $guest->main_info['address']['country']}
									{$guest->main_info['address']['country']}<br>
								{/if}
								{$guest->main_info['address']['city']}
							</p>
						{/if}
					</div><!-- box -->
				{/if}
				*}

				<div class="box">
					<div class="title">Email</div>
					<p>{$user->email}</p>
				</div><!-- box -->
				
				{if $guest->main_info['phones']}
					<div class="box">
						<div class="title">Phones</div>
						<p>
							{foreach $guest->main_info['phones'] as $phone}
								{if $rp@iteration > 1}<br>{/if}
								{$phone}
							{/foreach}
						</p>
					</div><!-- box -->
				{elseif $guest->main_info['phone']}
					<div class="box">
						<div class="title">Phone</div>
						<p>{$guest->main_info['phone']}</p>
					</div><!-- box -->
				{/if}

			</form>
	    	</div><!-- item / user_info -->
	    	{elseif $user}
	    		<div class="item user_info">
			    	<form method="post">
						<input type="checkbox" name="change_password" id="change_password">
			    		<div class="header_bx fx w w100">
			    			<div class="icon">
			    				<i class="fa fa-user-circle-o"></i>
			    			</div>
			    			<div class="title_bx fx v c">
			    				<div class="title">{$user->name}</div>
			    				<div class="options_line">
			    					<a class="logout" href="user/logout/">Logout <i class="fa fa-sign-out"></i></a>
									<label for="change_password">Change password</label>
			    				</div>
			    			</div>
			    		</div>
			    		<div class="inp_bx new_password">
		                    <input class="inp" type="password" name="password" placeholder="New password" value="">
		                    <i class="fa fa-unlock-alt"></i>
		                    <button type="submit"><i class="fa fa-arrow-right"></i></button>
		                </div><!-- inp_bx -->
		                <div class="box">
							<div class="title">Email</div>
							<p>{$user->email}</p>
						</div><!-- box -->
					</form>
	    		</div><!-- item / user_info -->
			{/if}

	    	{if $guest->booking_invoices}
			<div class="item user_bookings booking_invoices v1">
				<div class="header_bx fx w w100">
					<div class="icon">
						<i class="fa fa-tags"></i>
					</div>
					<div class="title_bx fx v c">
	    				<div class="title">Billing & Payments</div>
	    			</div><!-- title_bx -->
				</div><!-- header_bx -->
				<div class="box">
					<table class="table_s">
						<tbody>
						<tr class="tr_th">
							<th>Created</th>
							<th>ID</th>
							<th>Description</th>
							<th>Total</th>
							<th>Status</th>
							<th></th>
						</tr>
						{foreach $guest->booking_invoices as $bi}
							<tr>
								<td class="bi_date">
									{$bi['created']|date_format:'%d-%b-%y'}<br>
									{$bi['created']|date_format:'%I:%M %p'}
								</td>
								
								<td class="bi_id">
									{$bi['invoice_num']}
								</td>
								<td>
									{foreach $bi['invoice_items'] as $i}
										{if $i['description']}
											<span class="invoice_desc">{$i['description']}</span>
										{/if}
									{/foreach}
								</td>
								<td>
									{$sum = 0}
									{foreach $bi['invoice_items'] as $i}
										{$sum = $sum + ( (($i['unitCost'] * $i['qty']) + $i['discount']) * $i['percent'])}
									{/foreach}
									<div class="nowrap">{money_format('%(#10n', $sum)}</div>
									<br>
									<a class="more_inv" href="https://invoices.tokeet.com/invoice/guest/{$bi['created']}/{$bi['invoice_num']}/{$bi['pkey']}/{$bi['public_key']}/{$guest->tokeet_account}" target="_blank" rel="nofollow noopener noreferer">Show detail</a>
								</td>
								<td>
									{if $bi['status'] == 0}
										New
									{elseif $bi['status'] == 1}
										Unpaid
									{elseif $bi['status'] == 2}
										Paid
									{elseif $bi['status'] == -1}
										Canceled
									{/if}
								</td>
								<td>

									{if $bi['status'] == 0 || $bi['status'] == 1}
										<a class="button_red" href="https://invoices.tokeet.com/invoice/guest/{$bi['created']}/{$bi['invoice_num']}/{$bi['pkey']}/{$bi['public_key']}/{$guest->tokeet_account}" target="_blank" rel="nofollow noopener noreferer">Pay</a>
									{/if}
								</td>
							</tr>
						{/foreach}
						</tbody>
					</table>
				</div><!-- box -->
			</div><!-- item / bookings -->
			{/if}

	    	{if $guest->bookings}
			<div class="item user_bookings u_bookings">
				<div class="header_bx fx w w100">
					<div class="icon">
						<i class="fa fa-bookmark"></i>
					</div>
					<div class="title_bx fx v c">
	    				<div class="title">Bookings</div>
	    			</div><!-- title_bx -->
				</div><!-- header_bx -->
				<div class="box">
					<table class="table_s">
						<tbody>
						<tr class="tr_th">
							<th>Rental</th>
							<th>Arrive</th>
							<th>Depart</th>
							<th>Nights</th>
							<th>Guests</th>
							<th>Booking Charges</th>
						</tr>
						{foreach $guest->bookings as $booking}
							{$date_from = $booking['guest_arrive']}
							{$date_to = $booking['guest_depart']}
							{$datediff = ($date_to - $date_from) / (60 * 60 * 24)}
							<tr>
								<td>
									<div class="rental_title">{$booking['rental']['name']}</div>
									{if $booking['rental']['address']}
										<div class="rental_address">
											{$booking['rental']['address']['address']}, 
											{$booking['rental']['address']['city']},
											{$booking['rental']['address']['state']}
										</div>
									{/if}
								</td>
								<td class="bi_date">{$date_from|date_format:'%a %b %d, %Y'}</td>
								<td class="bi_date">{$date_to|date_format:'%a %b %d, %Y'}</td>
								<td>{$datediff}</td>
								<td>
									{$booking['num_adults'] + $booking['num_child']}
									{if $booking['num_child']}
										<br>
										<span class="adults_info">
										{$booking['num_adults']} {$booking['num_adults']|plural:'adult':'adults'}, {$booking['num_child']} {$booking['num_child']|plural:'children':'childrens'}
										</span>
									{/if}
								</td>
								<td class="booking_charges">
									<input type="checkbox" id="b_{$booking@iteration}">
									{if $booking['cost']->charge == 0 && $booking['cost']->userCharge > 0}
										<table>
											<tr><td>Base Charge:</td><td><span class="nowrap">{money_format('%(#10n', $booking['cost']->userCharge)}</span></td></tr>
											<tr><td>Discounts & Fees:</td><td><span class="nowrap">{money_format('%(#10n', $booking['cost']->feeSum)}</span></td></tr>
											<tr><td>Taxes:</td><td><span class="nowrap">{money_format('%(#10n', $booking['cost']->taxes)}</span></td></tr>
											<tr><td>Total:</td><td><span class="nowrap">{money_format('%(#10n', $booking['cost']->userCharge)}</span></td></tr>
										</table>
									{else}
									<table>
										<tr><td>Base Charge:</td><td><span class="nowrap">{money_format('%(#10n', $booking['cost']->charge)}</span></td></tr>
										<tr><td>Discounts & Fees:</td><td><span class="nowrap">{money_format('%(#10n', $booking['cost']->feeSum)}</span></td></tr>
										<tr><td>Taxes:</td><td><span class="nowrap">{money_format('%(#10n', $booking['cost']->taxes)}</span></td></tr>
										<tr><td>Total:</td><td><span class="nowrap">{money_format('%(#10n', $booking['cost']->sum)}</span></td></tr>
									</table>
									{/if}
									<label for="b_{$booking@iteration}"><span>Show detail</span><span>Hide detail</span></label>
								</td>
							</tr>
						{/foreach}
						</tbody>
					</table>
				</div><!-- box -->
			</div><!-- item / bookings -->
			{/if}


			


			{if $guest->main_info['files']}
			<div class="item user_bookings user_files">
				<div class="header_bx fx w w100">
					<div class="icon">
						<i class="fa fa-file"></i>
					</div>
					<div class="title_bx fx v c">
	    				<div class="title">Files</div>
	    			</div><!-- title_bx -->
				</div><!-- header_bx -->
				<div class="box">
					<div class="files fx w">
					{foreach $guest->main_info['files'] as $f}
						<a class="file fx v" href="{$f['url']}" data-fancybox>
							{if $f['type'] == 'application/pdf'}
								<i class="fa fa-file-pdf-o"></i>
							{elseif $f['type'] == 'image/jpeg' || $f['type'] == 'image/png'}
								<i class="fa fa-file-image-o"></i>
							{else}
								<i class="fa fa-file-o"></i>
							{/if}
							<span class="name" data-tooltip="{$f['name']}"><i>{$f['name']}</i></span>
							<span class="size">{round($f['size']/1024 /1024, 2)} MB</span>
						</a>
					{/foreach}
					</div><!-- files -->
				</div><!-- box -->
			</div><!-- item / user_files -->
			{/if}


    	</div><!-- fx -->


	</div><!-- guest_home -->
</div><!-- page_wrap -->
