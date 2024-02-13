{* Шаблон текстовой страницы *}

{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

{$this_page='page' scope=parent}
{$jquery_in_head='1' scope=parent}





<div class="main_width {if $page->image == ''}{/if}">
	<br>
	<br>
	{*<h1 class="text_center">{$page->header|escape}</h1>
    No hidden fee! No brokers fee! No proof of income!<br>*}
        <p class="big_p center">Moving to New York was never easier and affordable as it is now, with Outpost Club!</p>
    <br>
    <div class="main_width steps txt">
        <h4 class="h5 center">How it works:</h4>
        {*<div class="fx ch3">
            <div>
                <img src="design/{$settings->theme|escape}/images/icons/form.svg" alt="Form">
                <p class="title">Step 1 <br> Fill out the form</p>
                <p class="text">To get pricing and availability, fill out the form on this page</p>

            </div>
            <div>
                <img src="design/{$settings->theme|escape}/images/icons/phone2.svg" alt="Interview">
                <p class="title">Step 2 <br> Have a Quick Interview</p>
                <p class="text">Schedule a time to talk or fill out our interview form</p>
            </div>
            <div>
                <img src="design/{$settings->theme|escape}/images/icons/house.svg" alt="Move in house">
                <p class="title">Step 3 <br> Move In!</p>
                <p class="text">You`re all set! We’re excited to welcome you to one of our coliving spaces here in NYC!</p>
            </div>
        </div>*}
        
        {include file='bx/how_it_works.tpl'} 
        
</div>  
	<div class="press_form">
    {*
	{literal}
	<!--[if lte IE 8]>
	<script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2-legacy.js"></script>
	<![endif]-->
    <script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2.js"></script>
	<script>
	  hbspt.forms.create({
		portalId: "4068949",
		formId: "d39125d9-94c1-4b4e-b9c7-6e407c579d77"
	});
	</script>
    {/literal}
    *}
{literal}
<script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2.js"></script>
<script>
$(function(){
function levenshtein(s1, s2, costs) {
    let i, j, l1, l2, flip, ch, chl, ii, ii2, cost, cutHalf;
    l1 = s1.length;
    l2 = s2.length;

    costs = costs || {};
    let cr = costs.replace || 1;
    let cri = costs.replaceCase || costs.replace || 1;
    let ci = costs.insert || 1;
    let cd = costs.remove || 1;

    cutHalf = flip = Math.max(l1, l2);

    let minCost = Math.min(cd, ci, cr);
    let minD = Math.max(minCost, (l1 - l2) * cd);
    let minI = Math.max(minCost, (l2 - l1) * ci);
    let buf = new Array((cutHalf * 2) - 1);

    for (i = 0; i <= l2; ++i) {
        buf[i] = i * minD;
    }

    for (i = 0; i < l1; ++i, flip = cutHalf - flip) {
        ch = s1[i];
        chl = ch.toLowerCase();

        buf[flip] = (i + 1) * minI;

        ii = flip;
        ii2 = cutHalf - flip;

        for (j = 0; j < l2; ++j, ++ii, ++ii2) {
            cost = (ch === s2[j] ? 0 : (chl === s2[j].toLowerCase()) ? cri : cr);
            buf[ii + 1] = Math.min(buf[ii2 + 1] + cd, buf[ii] + ci, buf[ii2] + cost);
        }
    }
    return buf[l2 + cutHalf - flip];
}



function getCookie(name) {
  let matches = document.cookie.match(new RegExp(
    "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
  ));
  return matches ? decodeURIComponent(matches[1]) : undefined;
}


const $$ = document.querySelectorAll.bind(document);

let hs_house_hbspt;

// Определяем какому хауслидеру отправить письмо
const setHlSelect = () => {
    let city_id = getCookie('city');
    let n_hood = getCookie('n_hood');
    let house = getCookie('house');
    let term = getCookie('term');
    let room_type = getCookie('room_type');
    let o = {
                index: 0,
                koef: -1,
                value: ''
            };
    let city;


    if(city_id == 253)
    {
        city = 'New York';
        if(n_hood == 1)
            houses = ny_h_m;
        else
            houses = ny_h_b;
    }
    if(city_id == 288) 
    {
        city = 'Jersey City';
        houses = jc_h;
    }
    if(city_id == 254) 
    {
        city = 'San Francisco';
        houses = sf_h;
    }
    if(city)
    {
       Array.prototype.forEach.call(cities, (item, index) => {
            let value = item.value.toLowerCase().replace(/,/gi, '').replace(/(\s{2,}|\-)/gi, ' ');
            let k = levenshtein(' '+city.toLowerCase(), value);



            if(o.koef < 0)
            {
                o.index = index;
                o.koef = k;
                o.value = item.value;
            }
            else if(k < o.koef){
                o.index = index;
                o.koef = k;
                o.value = item.value;
            }
        });
        f.setFieldValue(cities[o.index].name, o.value); 
    }
    

    if(house)
    {   
    Array.prototype.forEach.call(houses, (item, index) => {
            let value = item.value.toLowerCase().replace(/,/gi, '').replace(/(\s{2,}|\-)/gi, ' ');
            let k = levenshtein(house.toLowerCase(), value);

            if(o.koef < 0)
            {
                o.index = index;
                o.koef = k;
                o.value = item.value;
            }
            else if(k < o.koef){
                o.index = index;
                o.koef = k;
                o.value = item.value;
            }
    });
    f.setFieldValue(houses[o.index].name, o.value);
    }

    o = {
                index: 0,
                koef: -1,
                value: ''
            };

    if(term)
    {   
    Array.prototype.forEach.call(dates, (item, index) => {
            let value = item.value.toLowerCase().replace(/,/gi, '').replace(/(\s{2,}|\-)/gi, ' ');
            let k = levenshtein(term.toLowerCase(), value);

            if(o.koef < 0)
            {
                o.index = index;
                o.koef = k;
                o.value = item.value;
            }
            else if(k < o.koef){
                o.index = index;
                o.koef = k;
                o.value = item.value;
            }
    });
    f.setFieldValue(dates[o.index].name, o.value);
    }
    // dates[o.index].checked = 'true'; 

    if(room_type == 'Full Apartment')
        f.setFieldValue(budget.name, 'Full apartment from $3250');
    // else
        // f.setFieldValue(room_type_inp1.name, 'No');

};
 

let cities;
let ny_h_b;
let ny_h_m;
let jc_h;
let sf_h;

let dates;
let room_type_inp0;
let room_type_inp1;
let budget;



let f = hbspt.forms.create({
    portalId: "4068949",
    formId: "d39125d9-94c1-4b4e-b9c7-6e407c579d77",
    onBeforeFormInit: function(form) {
    },
    onFormReady: function(form) {
         cities =  document.getElementsByName('manhattan_3');
         dates =  document.getElementsByName('how_long_do_you_plan_to_stay');

         ny_h_b = document.getElementsByName('brooklyn');
         ny_h_m = document.getElementsByName('manhattan');
         jc_h = document.getElementsByName('our_houses_jersey_city');
         sf_h = document.getElementsByName('our_houses_san_francisco');

         budget = document.getElementById('what_is_your_budget_4-d39125d9-94c1-4b4e-b9c7-6e407c579d77');
         // room_type_inp1 = document.getElementById('shared_room1-d39125d9-94c1-4b4e-b9c7-6e407c579d77');
        setTimeout(setHlSelect, 1000);
    },
    onFormSubmit: function($form) {
        $('#hsForm_d39125d9-94c1-4b4e-b9c7-6e407c579d77').ajaxSubmit({
            dataType: 'json',
            url: 'ajax/add_user.php',
            type: 'POST',
            success: function(data){
            }
        });
    } 
});

// $('.hs_submit.hs-submit .hs-button').live('click', function(e){
//     e.preventDefault();
//     $('#hsForm_d39125d9-94c1-4b4e-b9c7-6e407c579d77').ajaxSubmit({
//         dataType: 'json',
//         url: 'ajax/add_user.php',
//         type: 'POST',
//         success: function(data){
//         }
//     });
// });

});

</script>
{/literal}
    </div>



	{$page->body}
</div>
{*
<div class="main_width txt center">
    <p>Outpost Club Inc. (Outpost Club) is a duly licensed real estate broker in the State of New York. Your trust is important to us. We respect your privacy and protect it with strict policies that govern how your information is handled. The Rental Application fee is non-refundable and you, the tenant applicant, are not entitled to a refund if your application is denied. Outpost Club and the landlord reserve the right to deny any rental application. By completing the rental application and the application fee, you authorize Outpost Club to use any third-party services to investigate your credit, employment and tenant history. You have been advised that you have the right under section 606(b) of the Fair Credit Reporting Act to make a written request for a complete and accurate disclosure of the nature and scope of any investigation. You have read, understand, and agree to the terms set forth in this notice.</p>
</div>
*}
{*<div class="main_width">
    {include file='bx/corona.tpl'} 
</div>*}
