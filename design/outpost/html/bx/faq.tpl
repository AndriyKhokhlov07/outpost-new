{* FAQ Block *}

{if $faqs}
<div class="w100 faq bg_faq" itemscope itemtype="https://schema.org/FAQPage">
    <div class="item main_width">
        <ul>
            {foreach $faqs as $k=>$f}
                <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                    <input class="hide" type="checkbox" id="faq__{$k}">
                    <label class="h5" for="faq__{$k}" itemprop="name">{$f['question']}</label>
                    <div class="text" itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                        <div itemprop="text">
                            {$f['answer']}
                        </div>
                    </div>
                </li>
            {/foreach}
        </ul>
    </div>
    <div></div>
</div>
{/if}



