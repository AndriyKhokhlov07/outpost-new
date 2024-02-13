{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

<div class="main_width center txt">
    <h3 class="h5">Membership = Rent</h3>
    <p class="big_p">Membership is like rent, but all-inclusive. Think of it like your lease, a legal document outlining everyone's responsibilities to each other. Your membership can be paid <strong>month-to-month</strong> and you can stop your membership at any time.</p>
</div>

<div class="main_width center txt">
    <h3 class="h5">What is Coliving?</h3>
    <p class="big_p"><strong>Coliving is a shared housing model.</strong> Tenants, whom we call members, share kitchens, living rooms and other common spaces with all members, and have private or shared bedrooms.</p>
    <hr class="hr">
</div>
<div class="main_width advantages txt">
    <h4 class="h5 center">What's Included in your Membership?</h4>
    {include file='bx/advantages.tpl'}
    <a href="/online-questionnaire" class="button1 black">Apply Now</a>
    <hr class="hr m0">
</div>
<div class="main_width">
    <h4 class="h1 center">The Outpost Club Experience - Unlike any apartment you’ve ever moved to</h4>
    <ul class="experience">
        <li>
            <p class="title">Flat Monthly Fee</p>
            <p class="text">While living with us, you won’t have to worry about a thing. You will pay a flat monthly fee and everything comes included. No utility bills, no unexpected maintenance costs.</p>
        </li>
        <li>
            <p class="title">Full-Month Security Deposit Option</p>
            <p class="text">Before you move-in, we charge one full-month security deposit, which you will get back in full after your stay with us ends. However, if you would like to waive the security deposit, you may do so by using our partners at Qira! They’ll pay your security deposit for a small monthly fee ranging from $10-$20.</p>
        </li>
        <li>
            <p class="title">House Leaders</p>
            <p class="text">All of our locations have a House Leader. If you have any questions during your stay with us, they’ll be there for you.</p>
        </li>
        <li>
            <p class="title">Flexible Contract</p>
            <p class="text">You can choose to pay month-to-month and extend your stay along the way, or choose to let us know up front how long you're staying and get better prices.</p>
        </li>
        <li>
            <p class="title">Pricing</p>
            <p class="text">We have single rooms and multi person rooms starting at $690</p>
        </li>
        <li>
            <p class="title">Safe Locations</p>
            <p class="text">We have locations in Flatbush, Bedford-Stuyvesant, Bushwick, Boerum Hill, East Williamsburg in Brooklyn and Ridgewood in Queens, all of which are safe and accessible neighborhoods.. They are the perfect places to start building your coliving network.</p>
        </li>
    </ul>
    <a href="/online-questionnaire" class="button1 black">Apply Now</a>
</div>


<div class="full_width img_block">
    <img class="bg" src="/design/{$settings->theme|escape}/images/membership.jpg" alt="Membership">
    <div class="main_width">
        <p class="white_h1">What do our members think about Outpost Club?</p>
    </div>
</div>

{$posts_slider_tag_id=27}
{include file='bx/blog_list.tpl'}