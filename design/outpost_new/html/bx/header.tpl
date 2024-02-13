{* Header *}

<div class="header">
    <div class="main_width fx sb c">
        <a class="logo" href="/">
            <img src="/design/{$settings->theme|escape}/images/logo.svg" alt="Outpost Club logo">
        </a>

        <ul class="main_menu">
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

            <li class="button_li">
                <a
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
            </li>
        </ul>
        <label class="open_sidebar" for="mob_sidebar"><i></i></label>
    </div>
</div><!--header-->