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
        <p class="big_p center ccc">Moving to Philadelphia was never easier and affordable as it is now, with Outpost Club!</p>
    <br>
   
	<div class="press_form">
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
    let house = getCookie('house');
    let o = {
                index: 0,
                koef: -1,
                value: ''
            };

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

};
 
let houses;

let f = hbspt.forms.create({
    portalId: "4068949",
    formId: "4aac03a9-fc5d-4190-8552-82d4a9e3d991",
    onBeforeFormInit: function(form) {
    },
    onFormReady: function(form) {
         houses =  document.getElementsByName('cassa_hotel');

        setTimeout(setHlSelect, 1000);
    },
    onFormSubmit: function($form) {
        $('#hsForm_4aac03a9-fc5d-4190-8552-82d4a9e3d991').ajaxSubmit({
            dataType: 'json',
            url: 'ajax/add_user.php',
            type: 'POST',
            success: function(data){
            }
        });
    } 
});


});

</script>
{/literal}
    </div>
 <div class="main_width steps txt">
        <h4 class="h5 center">How it works:</h4>
        
        <!-- philadelphia house -->
        {$how_it_works_type = 2} 
        {include file='bx/how_it_works.tpl'} 
        
</div>  
	{$page->body}
</div>

