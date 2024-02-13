{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

<!-- <div class="main_width center {if $page->image == ''}page_wrap{/if}">
    <h2 class="h1 center">What Is Coliving?</h2>
    <p class="big_p"><strong>Coliving (co living) is a shared-housing model</strong> in which communities are built around shared spaces in the home, allowing residents to live more affordably and socially.</p>
    <hr class="hr">
</div> -->

<div class="main_width txt memberships tab ">
        

        <div class="center">
            <p class="big_p">Membership with Outpost Club includes access to professionals like web designers, legal advisors, financial strategists, marketing developers and more, while dinners, seminars and activities widen the scope of community and connections.</p>
        </div>
        <div class="main_width advantages txt">
            <h3 class="h3 center">All Membership Levels Include</h3>
            {include file='bx/adv_block.tpl'} 
        </div>

        <h1 class="h1 center">Membership Levels</h1>

        <table class="table">
        <tbody>
        <tr>
            <th></th>
            <th class="bronze">
                <div class="title_b">
                    <p><span>Bronze</span> Membership</p>
                    <p class="price">$0 per year</p>
                </div>
            </th>
            <th class="silver">
                <div class="title_b">
                    <p><span>Silver</span> Membership</p>
                    <p class="price">$79 per year</p>
                </div>
            </th>
            <th class="gold">
                <div class="title_b">
                    <p><span>Gold</span> Membership</p>
                    <p class="price">$690 per year</p>
                    
                </div>
            </th>
        </tr>
       <!--  <tr>
            <th>All-inclusive membership: We take care of utilities, WiFi and household essentials</th>
            <td >
                <i class="plus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr> -->
        <tr>
            <th>Access to all house facilities</th>
            <td>
                <i class="plus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>Skip the security deposit with HelloRented</th>
            <td><i class="plus"></i></td>
            <td>
                <i class="plus"></i>
            </td>
            <td><i class="plus"></i></td>
        </tr>
        <!-- <tr>
            <th>24/7 security in all common areas</th>
            <td>
                <i class="plus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>Cleaning and maintenance: We take care of your home so you don't have to</th>
            <td><i class="plus"></i></td>
            <td><i class="plus"></i></td>
            <td><i class="plus"></i></td>
        </tr> -->
        <tr>
            <th>Regular house activities</th>
            <td>
                <i class="plus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>Free cancellation before move-in*</th>
            <td>
                <i class="plus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>New bedding upon arrival</th>
            <td>
                $59
            </td>
            <td>
                <i class="plus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>Same-day move-in option</th>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>Move in or out any day of the month</th>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>Flexible deposit options</th>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>Exclusive membership rates</th>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>No late-night check-in fee</th>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>One free week's stay duing 6 months after move-out</th>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>Private rooms: Guests can stay for up to four nights per month</th>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>Discounted HelloRented initiation fee</th>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>Optional bedroom cleaning add-on</th>
            <td>
                $39
            </td>
            <td>
                $39
            </td>
            <td>
                $29
            </td>
        </tr>
        <tr>
            <th>Priority access to all new Outpost houses</th>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>Flexibility: Cancel your stay with 30 days' notice for a $250 fee</th>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
        <tr>
            <th>Airplane insurance: We'll work with you if your travel plans change for up to two additional nights of stay</th>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
         <tr>
            <th>Split your membership payment (Between first two membership payments)</th>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="minus"></i>
            </td>
            <td>
                <i class="plus"></i>
            </td>
        </tr>
    </tbody>
    </table>
    <br>

    <div class="center">
        <a href="https://bit.ly/34saLSx" class="button2 red">{$apply_button_text}</a>
    </div>

    <p><i>*Subject to change</i></p>
    <p><i>**Only applicable to New York members</i></p>
    

</div>

<h3 class="h3 center">Most Frequently Asked Questions</h3>
<div class="w100 faq bg_faq">
    <div class="item main_width mb0">
        <ul>
            <li>
                <input class="hide" type="checkbox" id="faq_1">
                <label class="h5" for="faq_1">Can I pay my Annual Membership Payment monthly?</label>
                <div class="text">All Annual Membership payments must be made in advance of move-in.</div>
            </li>
             <li>
                <input class="hide" type="checkbox" id="faq_2">
                <label class="h5" for="faq_2">Why is the Gold Membership so expensive?</label>
                <div class="text">The Gold Membership provides benefits to members that no other coliving space currently provides. Additionally, if you are staying with Outpost Club for at least 4 months, it is always more economically adventageous to choose our Gold Membership (due to the exclusive membership rates).</div>
            </li>
             <li>
                <input class="hide" type="checkbox" id="faq_3">
                <label class="h5" for="faq_3">What if I want to change my room but I'm a Bronze/Silver member?</label>
                <div class="text">You will need to upgrade to a Gold Membership to achieve this benefit.</div>
            </li>
            
             <li>
                <input class="hide" type="checkbox" id="faq_5">
                <label class="h5" for="faq_5">What if I want to cancel my membership but I'm a Bronze/Silver member?</label>
                <div class="text">You will need to upgrade to a Gold Membership to achieve this benefit.<div>
            </li>
             <li>
                <input class="hide" type="checkbox" id="faq_4">
                <label class="h5" for="faq_4">Are the prices the same for couples as they are for induviduals?</label>
                <div class="text">There is a $200/month extras charge for couples, or any situation in which two people are sharing a private room</div>
            </li>
        </ul>
    </div>
    <div></div>
</div>

 

   



  

  






{*
        <div class="fx c ch3 w">
            <div class="item bronze">
                <div class="title_b">
                    <p>Bronze Membership</p>
                    <p class="price">$0 per year</p>
                </div>
                <div class="info">
                    <div>
                        <p>All-inclusive membership: We take care of utilities, WiFi and household essentials</p>
                        <p>Access to multiple events every month</p>
                        <p>Fully furnished, recently remodeled houses</p>
                        <p>24/7 security in all common areas</p>
                        <p class="green">Cleaning and maintenance: We take care of your home so you don't have to</p>
                        <p class="title">Move in just on the 1st of month</p>
                    </div>
                </div>
            </div>
            
            <div class="item silver">
                <div class="title_b">
                    <p>Silver Membership</p>
                    <p class="price">$79 per year</p>
                </div>
                <div class="info">
                    <div>
                        <p>All-inclusive membership: We take care of utilities, WiFi and household essentials</p>
                        <p>Access to multiple events every month</p>
                        <p>Fully furnished, recently remodeled houses</p>
                        <p>24/7 security in all common areas</p>
                        <p class="green">Cleaning and maintenance: We take care of your home so you don't have to</p>
                        <p class="title">Move in any day of the month, not just on the 1st</p>
                    </div>
                </div>
            </div>
            <div class="item gold">
                <div class="title_b">
                    <p>Gold Membership</p>
                    <p class="price">$690 per year</p>
                </div>
                <div class="info">
                    <div>
                        <p class="title green">All Silver features, plus:</p>
                        <p class="title">Exclusive membership rates</p>
                        <p class="title">Free stays: Your guests stay for free up to 4 nights per month</p>
                        <p class="title">Access to all Outpost Club houses</p>
                        <p class="title">Priority access to new Outpost Club houses</p>
                        <p class="title">One free week's stay during 6 mos. after the end of your membership agreement</p>
                        <p class="title">Flexibility: Cancel your stay with 30-day notice for a $250 fee</p>
                        <p class="title">Pause your stay for 30-90 days</p>
                        <p class="title">Airplane insurance: We'll work with you if your travel plans change for up to two additional nights of stay</p>
                        <p class="title">Same-day move-in option</p>
                        <p class="title">No late-night check-in fee</p>
                        <p class="title">Flexible deposit options</p>
                        <p class="title">Free premium events</p>
                    </div>
                </div>
            </div>

        </div>
</div> *}


{*
<div class="memberships house_tab fx ch3">
    <div class="item bronze">
        <div class="title_b">
            <p>Bronze*</p>
            <p class="price">No Fee</p>
        </div>
        <div class="info">
            <div>
                <p class="title">1-3 months</p>
                <p class="price">$2390*</p>
            </div>
            <div>
                <p class="title">4+ months</p>
                <p class="price">$2290*</p>
            </div>
        </div>
    </div>
    <div class="item silver">
        <div class="title_b">
            <p>Silver**</p>
            <p class="price">$79 per Year</p>
        </div>
        <div class="info">
            <div>
                <p class="title">1-3 months</p>
                <p class="price">$2390**</p>
            </div>
            <div>
                <p class="title">4+ months</p>
                <p class="price">$2290**</p>
            </div>
           
        </div>
    </div>
    <div class="item gold">
        <div class="title_b">
            <p>Gold</p>
            <p class="price">$690 per Year</p>
        </div>
        <div class="info fx v c">
            <div>
                <p class="title">1-12 months</p>
                <p class="price">$1990</p>
                <p class="add_p">+ additional <a class="green" href="/memberships">benefits</a></p>
            </div>
            
        </div>
    </div>
</div>
<div><i>* With bronze membership move in just on the 1st of Month</i></div>
<div><i>** With silver membership move in any day of the month, not just on the 1st</i></div>
<div class="center">
    <a href="apply" class="button2">{$apply_button_text}</a>
</div>
*}

