<input class="hide" type="checkbox" name="mob_sidebar" id="mob_sidebar">
<label class="sidebar_bg" for="mob_sidebar"></label>

<div class="sidebar">
    <div class="wrapper">

        <a href="/" class="logo">
            <img src="/design/{$settings->theme|escape}/images/logo_rw.svg" alt="Outpost Club logo">
        </a>

        <ul class="menu">
            <li>
                <a href="/hot-deals">Hot Deals</a>
            </li>
            <li class="parent">
                <span>Our Services</span>
                <ul>
                    <li>
                        <a href="/coliving">Coliving</a>
                    </li>
                    <li>
                        <a href="/full-apartments">Full Apartments</a>
                    </li>
                    <li>
                        <a href="/student-housing-nyc">Student Housing</a>
                    </li>
                    <li>
                        <a href="/corporate-group">Corporate Group</a>
                    </li>
                </ul>
            </li>
            <li class="parent">
                <span>Our houses</span>
                <ul>
                    {foreach $pages as $p}
                        {if $p->menu_id==5}
                            <li>
                                <a href="{$p->url}">{$p->name|escape}</a>
                            </li>
                        {/if}
                    {/foreach}
                </ul>
            </li>
            <li>
                <a href="/coliving">Coliving</a>
            </li>
            <li class="parent">
                <span>Outpost Club</span>
                <ul>
                    <li>
                        <a href="/about">About</a>
                    </li>
                    <li>
                        <a href="/blog">Blog</a>
                    </li>
                    <li>
                        <a href="/partner-with-us">Partner with us</a>
                    </li>
                    <li>
                        <a href="/press">Press</a>
                    </li>
                </ul>
            </li>
            <li class="parent">
                <span>B2B</span>
                <ul>
                    <li>
                        <a href="/management">Property Management</a>
                    </li>
                    <li>
                        <a href="/brokerage">Brokerage</a>
                    </li>
                    <li>
                        <a href="/partner-with-us">Partner with us</a>
                    </li>
                </ul>
            </li>
        </ul>

        <div class="button_bx">
            <a class="button"
                    {if $apply_form}
                href="#apply"
                    {elseif $apply_link}
                href="{$apply_link}"
                    {elseif $page->id==424}
                href="/cassa-application"
                    {elseif $page->id == 428}
                href="/philadelphia-application"
                    {else}
                href="/online-questionnaire"
                    {/if}>
                {if $apply_name}
                    {$apply_name}
                {elseif $page->id == 424 || $page->id == 428}
                    {$avalability_button_text}
                {elseif $page->id == 413}
                    {$apply_button_text}
                {else}
                    Reach Out
                {/if}
            </a>
        </div>

        <div class="info">
            <a class="phone" href="tel:+18337076611">+1 (833) 707-6611</a>
            <a href="mailto:info@outpost-club.com">info@outpost-club.com</a>
        </div>

        <label class="close" for="mob_sidebar"></label>
    </div><!-- wrapper -->
</div><!-- sidebar -->