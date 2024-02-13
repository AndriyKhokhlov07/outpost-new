{* Thank You Page *}

{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

{$this_page='page' scope=parent}







<div class="main_width {if $page->image == ''}page_wrap_{/if} faq">
    <div class="thank_block">
        <p>Thank you! We will review the answers and send you an offer with all the available options and pricing, according to all your wishes on your email <strong class="lead_email">{$smarty.cookies.email}</strong></p>
        <p>Looking forward to meeting you soon,</p>
        <p>The Outpost Club Team</p>
    </div>
</div>


{if $smarty.cookies.email}
{literal}
<script>
function () {
    return {
        "email": "{/literal}{$smarty.cookies.email}{literal}"
    }
}
</script>
{/literal}
{/if}