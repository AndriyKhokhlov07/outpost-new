{* Footer *}


<div class="footer">
    <div class="wrapper main_width fx w">
        <div class="content_width">
            <div class="footer_block n1 fx w sb">
                <div class="column n1">
                    <ul class="menu">
                        <li>
                            <a href="/faq">Faq</a>
                        </li>
                        {foreach $pages as $p}
                            {if $p->menu_id==2}
                                <li>
                                    <a href="{$p->url}">{$p->name|escape}</a>
                                </li>
                            {/if}
                        {/foreach}
                    </ul>
                </div><!-- column n1 -->
                <div class="column n2">
                    <ul class="menu">
                        {foreach $pages as $p}
                            {if $p->menu_id==13}
                                <li>
                                    <a href="{$p->url}">{$p->name|escape}</a>
                                </li>
                            {/if}
                        {/foreach}
                    </ul>
                </div><!-- column n2 -->
                <div class="column n3">
                    <div class="cont">
                        <a class="info_txt" href="https://dhr.ny.gov/sites/default/files/466.15-notice-tenants-reasonable-accommodation.pdf" target="_blank" rel="nofollow noopener noreferer">New York State Human Rights Law</a>
                        <p>*Household supplies can be changed or decreaased at Outpost Club’s discretion, or based on supply availability. Outpost is not responsible for temporary losses of utility service. Outpost Club is not responsible for any damages due to abcence of any supplies or utilities</p>
                    </div><!-- cont -->
                </div><!-- column n3 -->
            </div><!-- footer_block n1 -->

            <div class="footer_block n2 fx w sb">
                <div class="sign_up_bx column n1">
                    <div class="cont">
                        <p class="title">Sign up for news</p>
                        <ul class="socials fx">
                            <li>
                                <a href="http://www.facebook.com/outpostclubNY/" data-tooltip="Facebook" target="_blank" rel="nofollow noopener noreferer">
                                    <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/icons/facebook.svg" alt="Outpost facebook">
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/outpostcoliving/?utm_source=outpost" data-tooltip="Instagram" target="_blank" rel="nofollow noopener noreferer">
                                    <img class="lazy" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="/design/{$settings->theme|escape}/images/icons/instagram.svg" alt="Outpost Instagram">
                                </a>
                            </li>
                        </ul>
                    </div><!-- cont -->
                </div><!-- column n1 -->
                <div class="column n2">
                    <div class="cont fx v">
                        <p class="info_txt">
                            <span>If you have a sales related question please call</span>
                            <a class="phone" href="tel:680-688-7678">680-688-7678</a>
                        </p>
                        <p class="address_txt fx v">
                            <span>PO Box 780556<br> Maspeth NY 11378</span>
                            <a href="/" class="logo"><img src="/design/{$settings->theme|escape}/images/logo_w.svg" alt="Outpost logo"></a>
                        </p>
                        <div class="contacts_bx fx v">
                            <a class="phone" href="tel:+18337076611">+1 (833) 707-6611</a>
                            <a href="mailto:info@outpost-club.com" class="col_mail">info@outpost-club.com</a>
                        </div>
                    </div><!-- cont -->
                </div><!-- column n2 -->
            </div><!-- footer_block n2 -->
        </div>
    </div><!-- wrapper main_width -->
</div><!-- footer -->