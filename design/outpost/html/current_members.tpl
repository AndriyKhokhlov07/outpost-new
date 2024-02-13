{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}
{$apply_button_hide=1 scope=parent}

{$members_menu=1 scope=parent}


<div class="page_wrap">
    <div class="guest_home w1200">
        <div class="fx w w100">

            {if $guest->booking_new_invoices || $issues || $new_event || $new_product}
            <div class="item user_bookings booking_invoices">
                <div class="header_bx fx w w100">
                    <div class="icon">
                        <i class="fa fa-bell"></i>
                    </div>
                    <div class="title_bx fx v c">
                        <div class="title">Notifications</div>
                    </div><!-- title_bx -->
                </div><!-- header_bx -->
                <div class="box">

                    <table class="table_s">
                        {* <tr>
                            <th>Type</th>
                            <th>Description</th>
                            <th></th>
                            <th></th>
                        </tr> *}
                        {if $guest->booking_new_invoices}
                            {foreach $guest->booking_new_invoices as $bi}
                            <tr>
                                <td>
                                    <div class="c red">
                                        {if $bi['status'] == 0}
                                            New invoice
                                        {elseif $bi['status'] == 1}
                                            Unpaid invoice
                                        {/if}
                                    </div>
                                </td>
                                <td>
                                    {$bi['created']|date_format:'%d-%b-%y'} {$bi['created']|date_format:'%I:%M %p'}
                                    <br>
                                    {foreach $bi['invoice_items'] as $i}
                                        {if $i['description']}
                                            <div class="invoice_desc">{$i['description']}</div>
                                        {/if}
                                    {/foreach}
                                </td>
                                <td>
                                    {$sum = 0}
                                    {foreach $bi['invoice_items'] as $i}
                                        {$sum = $sum + ( (($i['unitCost'] * $i['qty']) + $i['discount']) * $i['percent'])}
                                    {/foreach}
                                    <div class="nowrap">{money_format('%(#10n', $sum)}</div>
                                    <a class="more_inv nowrap" href="https://invoices.tokeet.com/invoice/guest/{$bi['created']}/{$bi['invoice_num']}/{$bi['pkey']}/{$bi['public_key']}/{$guest->tokeet_account}" target="_blank" rel="nofollow noopener noreferer">Show detail</a>
                                </td>
                                <td>
                                    <a class="button_red" href="https://invoices.tokeet.com/invoice/guest/{$bi['created']}/{$bi['invoice_num']}/{$bi['pkey']}/{$bi['public_key']}/{$guest->tokeet_account}" target="_blank" rel="nofollow noopener noreferer">Pay</a>
                                </td>
                            </tr>
                            {/foreach}
                        {/if}
                        {if $issues}
                            {foreach $issues as $issue}
                            <tr>
                                <td>
                                    <div class="c orange">Technical issue</div>
                                </td>
                                <td>
                                    {$issue->date_start|date_format:'%d-%b-%y %I:%M %p'} 
                                    {if $issue->assignment}
                                        <br>
                                        <div class="invoice_desc">{$issue->assignment|escape}</div>
                                    {/if}
                                </td>
                                <td>{$issues_statuses[$issue->status]}</td>
                                <td>
                                    <a class="more nowrap" href="technical-issues">detail →</a>
                                </td>
                            </tr>
                            {/foreach}
                        {/if}
                        {if $new_event}
                            <tr>
                                <td>
                                    <div class="c blue">New event</div>
                                </td>
                                <td>
                                    {$new_event->name|escape}
                                    {if $new_event->annotation}
                                        <br>
                                        <div class="invoice_desc">{$new_event->annotation|strip_tags}</div>  
                                    {/if} 
                                </td>
                                <td>
                                    {if $new_event->variant->price == 0}
                                        Free
                                    {else}
                                        {if $new_event->variants|count > 1}from {/if}
                                        {$currency->sign|escape} {$new_event->variant->price|convert}
                                    {/if}
                                </td>
                                <td>
                                    <a class="more nowrap" href="products/{$new_event->url}">detail →</a>
                                </td>
                            </tr>
                        {/if}
                        {if $new_product}
                            <tr>
                                <td>
                                    <div class="c blue">New product</div>
                                </td>
                                <td>
                                    {$new_product->name|escape}
                                    {if $new_product->annotation}
                                        <br>
                                        <div class="invoice_desc">{$new_product->annotation|strip_tags}</div>  
                                    {/if} 
                                </td>
                                <td>
                                    {if $new_product->variant->price == 0}
                                        Free
                                    {else}
                                        {if $new_product->variants|count > 1}from {/if}
                                        {$currency->sign|escape} {$new_product->variant->price|convert}
                                    {/if}
                                </td>
                                <td>
                                    <a class="more nowrap" href="products/{$new_product->url}">detail →</a>
                                </td>
                            </tr>
                        {/if}
                    </table>
                </div><!-- box -->
            </div><!-- item / bookings -->
            {/if}

            <div class="events_info_block w100">
                <div class="main_width">
                <!-- <h2 class="h3">Events</h2> -->
                <div class="events_info">
                    <div class="wrapper">
                        <p class="title">Save the date!<br> Outpost Events</p>
                        <a class="button" href="catalog/events">Events Calendar</a>
                    </div><!-- wrapper -->
                    <div class="bottom">
                        <fieldset>
                            <legend>Want to hold an event?</legend>
                        </fieldset>
                        <a href="new-event-request">Submit Event Request</a>
                        <a href="event-report">Submit Event Report</a>
                    </div><!-- bottom -->
                </div><!-- events_info -->
                </div>
            </div><!-- events_info_block -->

            <div class="essential_doc_block w100 text_center">
                <div class="id" id="essential_documents"></div>
                <h2 class="h3 title1">Essential Documents for Current Members</h2>
                <h5 class="h6 title2">All current members must read</h5>

                <div class="essential_doc fx w">
                    <a class="item" href="move-in-guide">
                        <div class="wrapper">
                            <img src="/design/{$settings->theme|escape}/images/houses.jpg" alt="Move-In Guide">
                            <div class="cont">
                                <h3 class="title h2">Move-In Guide</h3>
                                <div class="button">Explore</div>
                            </div>
                        </div><!-- wrapper -->
                    </a><!-- item -->

                    <a class="item" href="house-rules">
                        <div class="wrapper">
                            <img src="/design/{$settings->theme|escape}/images/essential_doc/rules.jpg" alt="house rules">
                            <div class="cont">
                                <h3 class="title h2">Get Familiar With The House Rules</h3>
                                <p class="white">If you read nothing else, please read this at least!</p>
                                <div class="button">A must-read for all Outpost Club Members</div>
                            </div>
                        </div><!-- wrapper -->
                    </a><!-- item -->

                    <a class="item" href="bedroom-policy">
                        <div class="wrapper">
                            <img src="/design/{$settings->theme|escape}/images/essential_doc/bedroom_pol.JPG" alt="bedroom policy">
                            <div class="cont">
                                <h3 class="title h2">Bedroom Policy</h3>
                                <p class="white">The way bedrooms operate here at Outpost</p>
                                <div class="button">Explore</div>
                            </div>
                        </div><!-- wrapper -->
                    </a><!-- item -->

                    <a class="item" href="the-roommate-bill-of-rights">
                        <div class="wrapper">
                            <img src="/design/{$settings->theme|escape}/images/essential_doc/roommate.jpg" alt="The Roommate Bill of Rights">
                            <div class="cont">
                                <h3 class="title h2">The Roommate Bill of Rights</h3>
                                <p class="white">Simple, obvious, but neccesary</p>
                                <div class="button">Explore</div>
                            </div>
                        </div><!-- wrapper -->
                    </a><!-- item -->

                    <a class="item" href="member-benefits">
                        <div class="wrapper">
                            <img src="/design/{$settings->theme|escape}/images/essential_doc/benefits.jpg" alt="faq">
                            <div class="cont">
                                <h3 class="title h2">Member Benefits</h3>
                                <p class="white">Outpost Club has exclusive deals with hand-picked companies to optimize your life</p>
                                <div class="button">Explore</div>
                            </div>
                        </div><!-- wrapper -->
                    </a><!-- item -->

                    <a class="item" href="referral-program">
                        <div class="wrapper">
                            <img src="/design/{$settings->theme|escape}/images/essential_doc/refferal.jpg" alt="faq">
                            <div class="cont">
                                <h3 class="title h2">Save by Referring a friend</h3>
                                <div class="button">Read about our referral program</div>
                            </div>
                        </div><!-- wrapper -->
                    </a><!-- item -->

                </div><!-- essential_doc -->
            </div><!-- essential_doc_block -->
            
            <div class="contact_info main_width text_center">
                <hr class="hr">
                <div class="fx vc">
                    <div class="img">
                        <img src="/design/{$settings->theme|escape}/images/contact_cart.ico" alt="Contact information">
                    </div>
                    <div>
                        <h2 class="h3">Contact information</h2>
                        <p class="h6">If you want to change/extend/cancel your booking:&nbsp;</p>
                        <a class="h6 green" href="mailto:Bookings@outpost-club.com">Bookings@outpost-club.com</a>
                    </div>
                </div>
                <hr class="hr">
                <div  class="fx vc">
                    <div class="img op_top">
                        <img src="/design/{$settings->theme|escape}/images/team/george.jpg" alt="Kijuan Smith">
                    </div>
                    <div>
                        <p class="h6">Contact George for emergencies or if you can not reach your House Leader</p>
                        <a class="h6 green" href="tel:+19177968350">+1 (917) 796-8350</a>
                    </div>
                </div>
                <hr class="hr">
                <div class="fx vc" >
                    <div class="img op_top">
                        <img src="/design/{$settings->theme|escape}/images/team/shapiro.jpg" alt="Contact Jacob">
                    </div>
                    <div>
                        <p class="h6">Contact Jacob for inquiries about pricing for friends and family or potential partnerships</p>
                        <a class="h6 green" href="tel:+13478155689">+1 (347) 815-5689</a>
                    </div>
                </div>
                <hr class="hr">
                <div  class="fx vc">
                    <div class="img">
                        <img src="/design/{$settings->theme|escape}/images/multy-user.png" alt="outpost Club">
                    </div>
                    <div>
                        <p class="h6">Contact your House leader if you have any questions about Outpost Club or for problems with the house</p>
                        <p class="h6">Your Facebook Messenger group</p>
                    </div>
                </div>
                <hr class="hr">

                <h3 class="h3">Anonymous Tips</h3>
                <div  class="fx vc button_in">
                    <div class="">
                        <a class="button2 md_link" href="#anon_tip">Open form</a>
                    </div>
                    <div>
                        <p class="left">If you have any ideas or complaints that you don't want to let us know personally you can use this from to notify us. We would love to hear from you!</p> 
                    </div>
                </div>
                {*
                <hr class="hr">
                <div>
                    <div>
                        <h3 class="h3">Interested in working with us?</h3>
                        <div class="fx button_in">
                            <a class="button2 md_link" href="#lead_req">Open form</a>
                            <p class="left">Are you interested in becoming a house leader in one of our spaces? Fill in the form and we'll get back to you ASAP!</p>
                        </div>
                        <div class="fx button_in">
                            <a class="button2 md_link" href="#job_req">Open form</a>
                            <p class="left">If you think your skill could help us in anyway, we would love to talk to you to see if their is anything you can do for Outpost! Just fill in the form and we'll get back to you ASAP! </p> 
                        </div>
                    </div>
                </div>
                *}
                <hr class="hr m0">
            </div>
            
            <div class="main_width team center">
                <h4 class="h3">Meet our House Leaders</h4>
                <div class="fx ch4 c w">
                    <div>
                        <div class="img">
                            <img src="/design/{$settings->theme|escape}/images/team/florencia.jpg" alt="Florencia">
                        </div>
                        <p class="name"><strong>Florencia</strong></p>
                        <p><a class="green" href="tel:+13478543215">347-854-3215</a></p>
                    </div>
                    <div>
                        <div class="img">
                            <img src="/design/{$settings->theme|escape}/images/team/nicolas.jpg" alt="Nicolas">
                        </div>
                        <p class="name"><strong>Nicolas</strong></p>
                        <p><a class="green" href="tel:+19292174647">929-217-4647</a></p>
                    </div>
                    <div>
                        <div class="img">
                            <img src="/design/{$settings->theme|escape}/images/team/isabel.jpg" alt="Isabel">
                        </div>
                        <p class="name"><strong>Isabel</strong></p>
                        <p><a class="green" href="tel:+13478791022">347-879-1022</a></p>
                    </div>
                </div>
                <div class="center">
                    <p>(All house leaders are contactable through the facebook messenger as well)</p>
                </div>

            <hr class="hr">
                <h4 class="h3">Meet our Home Care Specialists</h4>
                <div class="fx ch4 c w">
                    <div>
                        <div class="img">
                            <img src="/design/{$settings->theme|escape}/images/Lakhicharan.jpg" alt="Dwayne Lakhicharan">
                        </div>
                        <p class="name"><strong>Dwayne Lakhicharan</strong></p>
                    </div>
                    {*
                    <div>
                        <div class="img">
                            <img src="/design/{$settings->theme|escape}/images/team/smith.jpg" alt="Kijuan Smith">
                        </div>
                        <p class="name"><strong>Kijuan Smith</strong></p>
                    </div>
                     <div>
                        <div class="img">
                            <img src="/design/{$settings->theme|escape}/images/Ford.png" alt="Lamar Ford">
                        </div>
                        <p class="name"><strong>Lamar Ford</strong></p>
                    </div>
                    *}
                    <div>
                        <div class="img">
                            <img src="/design/{$settings->theme|escape}/images/Grimes.jpg" alt="John Grimes">
                        </div>
                        <p class="name"><strong>John Grimes</strong></p>
                    </div>
                </div>
                {*
            <hr class="hr">
                <h4 class="h3">Meet our Leadership Team</h4>
                <div class="fx ch4 c w">
                    <div>
                        <div class="img">
                            <img src="/design/{$settings->theme|escape}/images/team/prykhodko.jpg" alt="Alex Prykhodko">
                        </div>
                        <p class="name"><strong>Alex Prykhodko</strong></p>
                    </div>
                    <div>
                        <div class="img">
                            <img src="/design/{$settings->theme|escape}/images/team/morgunskyi.jpg" alt="Valentyn Margunskiy">
                        </div>
                        <p class="name"><strong>Valentyn Morgunskyi</strong></p>
                    </div>
                    <div>
                        <div class="img">
                            <img src="/design/{$settings->theme|escape}/images/team/starostin1.jpg" alt="Sergii Starostin">
                        </div>
                        <p class="name"><strong>Sergii Starostin</strong></p>
                    </div>
                    <div>
                        <div class="img">
                            <img src="/design/{$settings->theme|escape}/images/team/shapiro.jpg" alt="Jacob Shapiro">
                        </div>
                        <p class="name"><strong>Jacob Shapiro</strong></p>
                    </div>
                </div>
                *}
            </div>


            
            

        </div><!-- fx -->
    </div><!-- guest_home -->
</div><!-- page_wrap -->



<div class="hide">

    <div id="anon_tip" class="form2">
        <form class="ajax">
            <p class="h5 left">Anonymous Tip Form</p>
            <input type="hidden" name="name[0]" value="">
            <input type="hidden" name="value[0]" value="Anonymous Tip">
            
            <input type="hidden" name="name[1]" value="Subject">
            <input type="text" name="value[1]" value="" placeholder="Subject*" required>

            <input type="hidden" name="name[2]" value="Message">
            <textarea name="value[2]" value="" placeholder="Message*"></textarea>

            <button class="button2" type="submit">Submit</button>
        </form><!-- form_view -->
        <div class="info hidden"><span></span></div>
    </div>

    <div id="job_req" class="form2">
        <form class="ajax">
            <p class="h5 left">Job Request Form</p>
            <input type="hidden" name="name[0]" value="">
            <input type="hidden" name="value[0]" value="Job Request">
            
            <input type="hidden" name="name[1]" value="First name">
            <input type="text" name="value[1]" value="" placeholder="First name*" required>

            <input type="hidden" name="name[2]" value="Last name">
            <input type="text" name="value[2]" value="" placeholder="Last name*" required>

            <input type="hidden" name="name[3]" value="Email Address ">
            <input class="required r_email" type="text" name="value[3]" value="" placeholder="Email Address*" required>

            <input type="hidden" name="name[4]" value="Phone Number">
            <input class="" type="text" name="value[4]" value="" placeholder="Phone Number" >

            <input type="hidden" name="name[5]" value="Message">
            <textarea name="value[5]" value="" placeholder="Message*"></textarea>

            <button class="button2" type="submit">Submit</button>
        </form>
        <div class="info hidden"><span></span></div>
    </div>

    <div id="lead_req" class="form2">
        <form class="ajax">
            <p class="h5 left">House Leader Form</p>
            <input type="hidden" name="name[0]" value="">
            <input type="hidden" name="value[0]" value="House Leader form">
            
            <input type="hidden" name="name[1]" value="First name">
            <input type="text" name="value[1]" value="" placeholder="First name*" required>

            <input type="hidden" name="name[2]" value="Last name">
            <input type="text" name="value[2]" value="" placeholder="Last name*" required>

            <input type="hidden" name="name[3]" value="Email Address ">
            <input class="required r_email" type="text" name="value[3]" value="" placeholder="Email Address*" required>

            <input type="hidden" name="name[4]" value="Phone Number">
            <input class="" type="text" name="value[4]" value="" placeholder="Phone Number" >

            <input type="hidden" name="name[5]" value="What House are you staying in?">
            <input class="" type="text" name="value[5]" value="" placeholder="What House are you staying in?*" required>

            <input type="hidden" name="name[6]" value="How long are you staying with Outpost?">
            <input class="" type="text" name="value[6]" value="" placeholder="How long are you staying with Outpost?" >

            <input type="hidden" name="name[7]" value="Why do you want to be a house leader?">
            <textarea name="value[7]" value="" placeholder="Why do you want to be a house leader?*"></textarea>

            <button class="button2" type="submit">Submit</button>
        </form><!-- form_view -->
        <div class="info hidden"><span></span></div>
    </div>

</div>   
