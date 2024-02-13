{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}
{$breadcrumb_n=0}	
    <div class="main_width left ">
		<div class="path" itemscope itemtype="https://schema.org/BreadcrumbList">
			{$breadcrumb_n=$breadcrumb_n+1}
			<div itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
			   <a href="{$config->root_url}/" itemprop="item"><span itemprop="name">Home</span></a>
			   <meta itemprop="position" content="{$breadcrumb_n}">
			</div>

			{if $page->parent}
				{$breadcrumb_n=$breadcrumb_n+1}
				<div itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
				   <a href="{$page->parent->url}" itemprop="item"><span itemprop="name">{$page->parent->name}</span></a>
				   <meta itemprop="position" content="{$breadcrumb_n}">
				</div>
			{/if}

            {$breadcrumb_n=$breadcrumb_n+1}
            <div itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                <a href="{$config->root_url}/{$page->url}" itemprop="item">
                    <span itemprop="name">{$page->name}</span>
                </a>
                <meta itemprop="position" content="{$breadcrumb_n}">
            </div> 
		</div>

		<div class="main_width txt about">
			<h6 class="h1 center">Outpost Club was launched by entrepreneurs who understand the challenges of moving to new places, working remotely and building a start-up from scratch in a new country.</h6>
			<p>Outpost Club was founded in 2016 by a team that knows what it’s like to move. We’ve spent our careers traveling around the world, working remotely and building start-ups while meeting interesting people everywhere we went.</p>
			<p>Our mission is to build a tight-knit community with shared passions and visions, thereby making the world we live in a better place. We believe that working together to build strong communities helps us all to thrive, and our community starts right at home, in our network of <a style= "text-decoration: underline; text-decoration-color: red;" href="https://outpost-club.com/coliving">coliving</a> houses throughout New York City.</p>
			<p>We build connections between people by offering members access to a network of creatives, entrepreneurs, executives and experts to help them develop professionally while forming relationships that will last for long after they move out of Outpost Club. Membership with Outpost Club gives you the opportunity to meet people of all different backgrounds, from dozens of countries and throughout the United States, while group activities widen the scope of our community.</p>
		</div>
		{*
		<div class="full_width img_block">
			<img class="bg" src="/design/{$settings->theme|escape}/images/team.jpg" alt="Our Team">
			<div class="main_width">
				<p class="white_h1">Our Team</p>
				<p class="h4">The best and brightest</p>
			</div>
		</div>
		*}
		<div class="main_width partners center">
			<p class="h1">Our Team</p>
			<p class="h3">The best and brightest</p>
			<div class="fx ch4 c w">
				<div>
					<div class="img">
						<img src="/design/{$settings->theme|escape}/images/team/starostin1.jpg" alt="Our Team (Image-1)" title="Our Team (Image-1), outpost-club.com">
					</div>
					<p class="name"><strong>Sergii Starostin</strong></p>
					<p class="info">CEO</p>
				</div>
				<div>
					<div class="img">
						<img src="/design/{$settings->theme|escape}/images/team/prykhodko1.jpg" alt="Our Team (Image-2)" title="Our Team (Image-2), outpost-club.com">
					</div>
					<p class="name"><strong>Alex Prykhodko</strong></p>
					<p class="info">COO</p>
				</div>
				<div>
					<div class="img">
						<img src="/design/{$settings->theme|escape}/images/team/kostromin1.jpg" alt="Our Team (Image-3)" title="Our Team (Image-3), outpost-club.com">
					</div>
					<p class="name"><strong>Alexander Kostromin</strong></p>
					<p class="info">CSO</p>
				</div>
				<div>
					<div class="img">
						<img src="/design/{$settings->theme|escape}/images/team/gomenyuk1.jpg" alt="Our Team (Image-4)" title="Our Team (Image-4), outpost-club.com">
					</div>
					<p class="name"><strong>Kateryna Gomenyuk</strong></p>
					<p class="info">CFO</p>
				</div>
				<div>
					<div class="img">
						<img src="/design/{$settings->theme|escape}/images/team/shapiro1.jpg" alt="Our Team (Image-5)" title="Our Team (Image-5), outpost-club.com">
					</div>
					<p class="name"><strong>Jacob Shapiro</strong></p>
					<p class="info">VP of Customer Support</p>
				</div>
				<div>
					<div class="img">
						<img src="/design/{$settings->theme|escape}/images/team/nolff1.jpg" alt="Our Team (Image-6)" title="Our Team (Image-6), outpost-club.com">
					</div>
					<p class="name"><strong>Christian Nolff</strong></p>
					<p class="info">New York Community Manager</p>
				</div>
				<div>
					<div class="img">
						<img src="/design/{$settings->theme|escape}/images/team/molchanov1.jpg" alt="Our Team (Image-7)" title="Our Team (Image-7), outpost-club.com">
					</div>
					<p class="name"><strong>Jack Molchanov</strong></p>
					<p class="info">CTO</p>
				</div>
				<div>
					<div class="img">
						<img src="/design/{$settings->theme|escape}/images/team/post1.jpg" alt="Our Team (Image-8)" title="Our Team (Image-8), outpost-club.com">
					</div>
					<p class="name"><strong>Taylor Post</strong></p>
					<p class="info">Assistant Sales Manager</p>
				</div>
				<div>
					<div class="img">
						<img src="/design/{$settings->theme|escape}/images/team/mcdonald1.jpg" alt="Our Team (Image-9)" title="Our Team (Image-9), outpost-club.com">
					</div>
					<p class="name"><strong>Evans McDonald</strong></p>
					<p class="info">Philadelphia Junior Sales Manager</p>
				</div>
				<div>
					<div class="img">
						<img src="/design/{$settings->theme|escape}/images/team/ilnytska1.jpg" alt="Our Team (Image-10)" title="Our Team (Image-10), outpost-club.com">
					</div>
					<p class="name"><strong>Yana Ilnytska</strong></p>
					<p class="info">Assistant Property Manager</p>
				</div>
				{*
				<div>
					<div class="img">
						<img src="/design/{$settings->theme|escape}/images/team/cherven.jpg" alt="Karen Cherven">
					</div>
					<p class="name"><strong>Karen Cherven</strong></p>
					<p class="info">Outpost Academy Leader</p>
				</div>

				<div>
					<div class="img">
						<img src="/design/{$settings->theme|escape}/images/team/morgunskyi2.jpg" alt="Valentyn Morgunskyi">
					</div>
					<p class="name"><strong>Valentyn Morgunskyi</strong></p>
					<p class="info">Chief Marketing Officer</p>
				</div>
				<div>
					<div class="img">
						<img src="/design/{$settings->theme|escape}/images/team/smith.jpg" alt="Kijuan Smith">
					</div>
					<p class="name"><strong>Kijuan Smith</strong></p>
					<p class="info">Community Manager, New York</p>
				</div>
				*}

			</div>
			<div class="hr"></div>
		</div>
		{*
		<div class="full_width img_block">
			<img class="bg" src="/design/{$settings->theme|escape}/images/career.jpg" alt="Careers">
			<div class="main_width">
				<p class="white_h1">Careers</p>
			</div>
		</div>

		<div class="main_width">
			<p class="h1 center">Careers</p>
			<p class="h5 center">Open Positions</p>
			<hr class="hr">
			<p class="h3">Sorry, there are currently no open positions</p>
			<hr class="hr">
		</div>

		{get_posts type=2 var=s_reviews limit=16}
		{$reviews_title='Members Reviews'}
		{include file='bx/reviews_slider.tpl'}


		*}
		<div class="main_width">
			<h6 class="h5">If you want to know more about us check out our blog:</h6>
			<a href="blog" class="button1 black">Blog</a>
			<hr class="hr m0">
		</div>
		<div class="main_width center find_us">
			<h6 class="h1">Find us on</h6>
			<div class="partners_slider">
				<div class="item">
					<a href="https://www.forbes.com/sites/ranagood/2020/01/28/outpost-making-long-term-city-travel-reality/#a34a44991a0e" target="_blank" rel="nofollow noopener noreferer">
						<img src="design/{$settings->theme|escape}/images/forbes.svg" alt="Our Team (Image-6)" title="Our Team (Image-6), outpost-club.com">
					</a>
				</div>
				<div class="item">
					<!-- <a href="https://www.nytimes.com/2019/12/23/realestate/sharing-a-room-in-bedford-stuyvesant-and-making-new-friends.html" target="_blank" rel="nofollow noopener noreferer"> -->
					<a href="https://drive.google.com/file/d/18FPOeyiBtY5n-NKy8DhSn5ZBuhA_9Bwr/view?usp=share_link">
						<img src="design/{$settings->theme|escape}/images/new-york-city-logo.png" title="Press (Image-4), outpost-club.com" alt="Press (Image-4)" >
					</a>
				</div>
				<div class="item">
					<!-- <a href="https://www.nytimes.com/2019/12/23/realestate/sharing-a-room-in-bedford-stuyvesant-and-making-new-friends.html" target="_blank" rel="nofollow noopener noreferer"> -->
					<a href="https://www.nytimes.com/2020/11/27/realestate/coliving-pandemic.html" target="_blank" rel="nofollow noopener noreferer">
						<img src="design/{$settings->theme|escape}/images/new-york-city-logo.png" alt="Our Team (Image-7)" title="Our Team (Image-7), outpost-club.com">
					</a>
				</div>
				<div class="item">
					<a href="https://www.foxbusiness.com/real-estate/co-living-real-estate-trend-has-renters-saving-thousands?fbclid=IwAR3G8nt2xCNOJr01TjFhmHq0LT5ZjrxLZtyYyT-wBGvNsfyDt6tsDfFngsg" target="_blank" rel="nofollow noopener noreferer">
						<img src="design/{$settings->theme|escape}/images/fox.png" alt="Our Team (Image-8)" title="Our Team (Image-8), outpost-club.com">
					</a>
				</div>
				<div class="item">
					<a href="https://medium.com/qwerkycoliving/the-worlds-first-coliving-conference-co-liv-review-85e8d1a7ac09" target="_blank" rel="nofollow noopener noreferer">
						<img src="design/{$settings->theme|escape}/images/icons/medium.svg" alt="Our Team (Image-9)" title="Our Team (Image-9), outpost-club.com">
					</a>
				</div>
				<div class="item">
					<a href="https://coliving.com/blog/breaking-the-preconceived-notions-of-coliving" target="_blank" rel="nofollow noopener noreferer">
						<img src="design/{$settings->theme|escape}/images/icons/coliving_logo.svg" alt="Our Team (Image-10)" title="Our Team (Image-10), outpost-club.com">
					</a>
				</div>
				<div class="item">
					<div>
						<img src="design/{$settings->theme|escape}/images/dislocation.jpg" alt="Our Team (Image-11)" title="Our Team (Image-11), outpost-club.com">
					</div>
				</div>
				<div class="item">
					<a href="http://au.blurb.com/" target="_blank" rel="nofollow noopener noreferer">
						<img src="design/{$settings->theme|escape}/images/blurb-logo.png" alt="Our Team (Image-12)" title="Our Team (Image-12), outpost-club.com">
					</a>
				</div>
			</div>
		</div>
	</div>