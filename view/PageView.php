<?PHP

require_once('View.php');

class PageView extends View
{
	function fetch()
	{
		$url = $this->request->get('page_url', 'string');


        /**
         * Todo Кастиль,треба пофіксити
         */
        if($url === 'manhattan-rooms-for-rent'){
            $this->settings->theme = $this->config->themes[2]->name;
            $this->design->setTheme();

            echo $this->design->fetch('pages/manhattan-rooms-for-rent.tpl');
            exit;
        }
        if($url === 'intern-housing'){
            $this->settings->theme = $this->config->themes[2]->name;
            $this->design->setTheme();

            echo $this->design->fetch('pages/intern-housing.tpl');
            exit;
        }

		$page = $this->pages->get_page($url);

        if ($page->theme && $page->theme != $this->config->theme_active->id && !$this->request->get('tm')) {
            $this->settings->theme = $this->config->themes[$page->theme]->name;
            $this->design->setTheme();
        }

        // The Maison on Suydam
        if ($page->id == 529) {
            $page->visible = 1;
        }

        // Menu ID: Guests
        // Redirects
        if ($page->menu_id == 7 && !$page->visible) {
            header('Location: '.$this->config->root_url.'/blog');
            exit;
        }
		
		// Отображать скрытые страницы только админу
		if(empty($page) || (!$page->visible && empty($_SESSION['admin'])))
			return false;
			
		$page->children = $this->pages->get_pages(array('parent_id'=>$page->id, 'visible'=>1));
		if($page->parent_id != 0)
			$page->parent = $this->pages->get_page((int)$page->parent_id);

		
		// House Leader
		if($page->menu_id == 12)
		{
			if(empty($this->user))
			{
				header('Location: '.$this->config->root_url.'/user/login');
				exit();
			}
			if($this->user->type!=2)
			{
				header('Location: '.$this->config->root_url.'/current-members');
				exit();
			}

			if(!empty($this->user->house_id))
			{
				$user_house = $this->pages->get_page((int)$this->user->house_id);
				if(!empty($user_house))
					$this->design->assign('user_house', $user_house);
			}

			if(!empty($_COOKIE['mmr']))
			{
				$mmr = array();
				foreach(explode('__', $_COOKIE['mmr']) as $vv_)
				{
					$vv = explode('--', $vv_);
					$mmr[$vv[0]] = $vv[1];
				}
				$this->design->assign('mmr', $mmr);
			}
		}
		
		if($page->menu_id == 3 || $page->menu_id == 4)
		{
			
			// Фотогалереи
		$images_gallery_ids = array();
		foreach($this->galleries->get_related(array('type'=>'services', 'related_id'=>$page->id)) as $g)
			$images_gallery_ids[$g->image_id] = $g->image_id;
		
		if(!empty($images_gallery_ids))
		{
			$gallery = array();
			foreach($this->galleries->get_images(array('id'=>$images_gallery_ids)) as $i)
			{
				$gallery[$i->id] = $i;
			}
		}
		if(!empty($gallery))
		{
			$gallery_related = $this->galleries->get_related(array('image_id'=>array_keys($gallery)));
			$gallery_related_products = array();
			$gallery_related_services = array();
			foreach($gallery_related as $r)
			{
				if($r->type == 1)
					$gallery_related_products[$r->related_id] = $r->related_id;
				elseif($r->type == 2)
					$gallery_related_services[$r->related_id] = $r->related_id;
			}
			if(!empty($gallery_related_products))
			{
				$temp_gallery_products = $this->products->get_products(array('id'=>$gallery_related_products));
				foreach($temp_gallery_products as $temp_product)
					$gallery_related_products[$temp_product->id] = $temp_product;
				$gallery_related_products_images = $this->products->get_images(array('product_id'=>array_keys($gallery_related_products)));
				foreach($gallery_related_products_images as $i)
					$gallery_related_products[$i->product_id]->images[] = $i;
				foreach($gallery_related_products as $rp)
					$gallery_related_products[$rp->id]->image = $rp->images[0];
			}
			// Связанные услуги
			if(!empty($gallery_related_services))
			{
				foreach($this->pages->get_pages(array('id'=>$gallery_related_services, 'visible'=>1)) as $rs)
					$gallery_related_services[$rs->id] = $rs;
			}
			// Распределяем связанные по картинкам
			foreach($gallery_related as $r)
			{
				if($r->type == 1 && !empty($gallery_related_products[$r->related_id]))
					$gallery[$r->image_id]->related_products[] = $gallery_related_products[$r->related_id];
				elseif($r->type == 2  && !empty($gallery_related_services[$r->related_id]))
					$gallery[$r->image_id]->related_services[] = $gallery_related_services[$r->related_id];
			}
			$this->design->assign('gallery', $gallery);
		}	
		}

		if($page->url == "hot-deals")
		{
			$hot_deals = $this->pages->get_pages(array('menu_id'=>11, 'visible'=>1));
			foreach ($hot_deals as $hd) 
			{
				$hd->blocks = unserialize($hd->blocks);
			}
			if(!empty($hot_deals))
				$this->design->assign('hot_deals', $hot_deals);
		}
		if($page->url == "full-apartments")
		{
			$full_apartments = $this->pages->get_pages(array('menu_id'=>14, 'visible'=>1));
			foreach ($full_apartments as $fa) 
			{
				$fa->blocks = unserialize($fa->blocks);
			}
			if(!empty($full_apartments))
				$this->design->assign('full_apartments', $full_apartments);
		}
		
		if(!empty($page->blocks)) {

			$page->blocks = unserialize($page->blocks);
		}
			

		if(!empty($page->related))
		{
			$comments = array();
		 	$page->related = unserialize($page->related);
		 	foreach ($page->related as $p) 
		 	{
		 		$rel_page = $this->blog->get_post((int)$p);
				$comments[] = $rel_page;
		 	}
		}

		if(!empty($page->related_houses))
		{
			$rel_houses = array();
		 	$page->related_houses = unserialize($page->related_houses);
		 	foreach ($page->related_houses as $p) 
		 	{
		 		$rel_house = $this->pages->get_page((int)$p);
				$rel_houses[] = $rel_house;
		 	}
		}

        // FAQ
        if (!empty($page->blocks2)) {
            $page->blocks2 = unserialize($page->blocks2);
        }

		
		$this->design->assign('page', $page);
		$this->design->assign('meta_title', $page->meta_title);
		$this->design->assign('meta_keywords', $page->meta_keywords);
		$this->design->assign('meta_description', $page->meta_description);

		if(!empty($comments))
			$this->design->assign('comments', $comments);

		// Houses
		if ($page->menu_id == 5) {
			$apply_button_html = '';
			if (!empty($page->applicaation_page_id)) {
				$applicaation_page = $this->pages->get_page((int)$page->applicaation_page_id);
				if (!empty($applicaation_page)) {
					// The Gramercy Park Studios
					if ($page->id == 479) {
						$applicaation_page->url = $page->url.'#t_apply';
					}
                    if ($applicaation_page->url == 'join-us') {
                        $applicaation_page->url = 'online-questionnaire';
                    }
					$this->design->assign('apply_link', $applicaation_page->url);
					$apply_button_html_title = 'Check Avalability';
					$target_blank = 'target="_blank"';
					// The Gramercy Park Studios
					if ($page->id == 479) {
						$target_blank = '';
					}
					$apply_button_html = '<div class="center"><a class="button2 red" href="'.$applicaation_page->url.'" '.$target_blank.' rel="nofollow">'.$apply_button_html_title.'</a></div>';
					

					if (!empty($page->apply_name)) {
						$this->design->assign('apply_name', $page->apply_name);
					}
					if (!empty($page->blocks) && is_array($page->blocks)) {
						foreach ($page->blocks as $pb) {
							$pb->body = preg_replace('/\bclass="button2 red" href="[^"]+"/', 'class="button2 red" href="'.$applicaation_page->url.'"', $pb->body);
							// $pb->body = $b;
						}
					}
				}
			}
			if (!empty($page->blocks) && is_array($page->blocks)) {
                if ($applicaation_page->url == 'join-us') {
                    $applicaation_page->url = 'online-questionnaire';
                }
				foreach ($page->blocks as $pb) {
					if(preg_match_all('/\{apply_button(\stitle="(.+?)")?\}/', $pb->body, $matches))
					{
						if(!empty($matches[0]))
						{
							foreach($matches[0] as $k=>$el)
							{
								$applybutton_html = $apply_button_html;
								if(!empty($matches[2][$k]) && !empty($apply_button_html)) {
									$target_blank = 'target="_blank"';
									// The Gramercy Park Studios
									if ($page->id == 479) {
										$target_blank = '';
									}
									$target_blank = '';
									$applybutton_html = '<div class="center"><a class="button2 red" href="'.$applicaation_page->url.'" '.$target_blank.' rel="nofollow">'.$matches[2][$k].'</a></div>';
								}
								$pb->body = str_replace($el, $applybutton_html, $pb->body);
							}
						}	
					}
				}
			}
		}

		// Application Page
		if ($page->menu_id == 15) {
			$house_page = $this->pages->get_pages([
				'applicaation_page_id' => $page->id
			]);
			if(!empty($house_page)) {
				$page->house_page = current($house_page);
			}
		}


        // Universities
        if ($page->menu_id == 17) {
            $universitiesHouses = $this->pages->getRelatedPages([
                'type' => 1,// Houses - Universities
                'id2'  => $page->id
            ]);
            if (!empty($universitiesHouses)) {
                $universitiesHouses = $this->request->array_to_key($universitiesHouses, 'id1');
                $universitiesHousesData = $this->pages->get_pages([
                    'id' => array_keys($universitiesHouses),
                    'limit' => count($universitiesHouses)
                ]);
                if (!empty($universitiesHousesData)) {
                    foreach ($universitiesHousesData as $pageHouse) {
                        if (isset($universitiesHouses[$pageHouse->id])) {
                            $universitiesHouses[$pageHouse->id] = $pageHouse;
                        }
                    }
                }
                $this->design->assign('universities_houses', $universitiesHouses);
            }
        }



		
		if(!empty($rel_houses))
			$this->design->assign('rel_houses', $rel_houses);

		$this->design->assign('loans', $this->loans->get_loans(array('visible'=>1)));



		$tpl = 'page.tpl';
        if ($page->url == '404')
            $tpl = 'pages/404.tpl';
        elseif ($page->url == 'management' && $this->settings->theme == 'outpost_new')
            $tpl = 'pages/management.tpl';
        elseif ($page->url == 'brokerage' && $this->settings->theme == 'outpost_new')
            $tpl = 'pages/brokerage.tpl';
        elseif ($page->url == 'terms-of-use' && $this->settings->theme == 'outpost_new')
            $tpl = 'pages/terms_of_use.tpl';
        elseif ($page->url == 'privacy-policy' && $this->settings->theme == 'outpost_new')
            $tpl = 'pages/privacy_policy.tpl';
        elseif ($page->url == 'coliving' && $this->settings->theme == 'outpost_new')
            $tpl = 'pages/coliving.tpl';

        elseif ($page->url == 'manhattan-rooms-for-rent')
//        elseif ($page->url == 'manhattan-rooms-for-rent' && $this->settings->theme == 'outpost_new')
            $tpl = 'pages/manhattan-rooms-for-rent.tpl';

        elseif ($page->url == 'intern-housing')
            $tpl = 'pages/intern-housing.tpl';




		elseif($page->id == 98)
			$tpl = 'houses.tpl';
		elseif($page->id == 253 || $page->id == 254 || $page->id == 288 || $page->id == 429 || $page->id == 427) // Houses NY and SF
		{
			$this->design->assign('city_id', $page->id);
			$tpl = 'houses.tpl';
		}

		elseif (in_array($page->menu_id, [
            5,  // House
            16, // Neighborhoods
            17  // Universities
        ])) {
            $tpl = 'house.tpl';
        }
		elseif($page->menu_id == 12)
			$tpl = 'houseleader_page.tpl';
		elseif($page->menu_id == 15 || in_array($page->id, [100]))
			$tpl = 'application_page.tpl';
		elseif($page->id == 100)
			$tpl = 'questionnaire.tpl';
		elseif($page->id == 105) // coliving 
			$tpl = 'membership.tpl';
		elseif($page->id == 106)
			$tpl = 'corporate.tpl';
		elseif($page->id == 107)
			$tpl = 'partner.tpl';
		elseif($page->id == 108)
			$tpl = 'press.tpl';
		elseif($page->id == 110)
			$tpl = 'about.tpl';
		elseif($page->id == 113)
			$tpl = 'faq.tpl';
		elseif($page->id == 165)
			$tpl = 'new_event_request.tpl';
		elseif($page->id == 166)
			$tpl = 'event_report.tpl';
		elseif($page->id == 168)
			$tpl = 'joinus_thankyou.tpl';
		elseif($page->id == 169)
			$tpl = 'questionnaire.tpl';
		elseif($page->id == 184)
			$tpl = 'rent_brooklyn.tpl';
		elseif($page->id == 186)
			$tpl = 'shared_apartments.tpl';
		elseif($page->id == 191)
			$tpl = 'communal-living.tpl';

		// hot deals
		elseif($page->id == 199)
			$tpl = 'promo.tpl';
		elseif($page->id == 109)
			$tpl = 'reviews.tpl';
		elseif($page->id == 202)
			$tpl = 'student_housing.tpl';
		elseif($page->id == 220)
			$tpl = 'furnished_rooms.tpl';
		elseif($page->id == 221)
			$tpl = 'membership_table.tpl';
		elseif($page->id == 259)
			$tpl = 'rent_sanfranscisco.tpl';
		elseif($page->id == 331)
			$tpl = 'nyc_rooms.tpl';
		elseif($page->id == 334)
			$tpl = 'travel-nurse.tpl';
		elseif($page->id == 335)
			$tpl = 'manhattan_rooms.tpl';
		elseif($page->id == 337)
			$tpl = 'nurse_form.tpl';
		elseif($page->id == 338)
			$tpl = 'intern_housing_nyc.tpl';
        elseif($page->id == 339)
			$tpl = 'intern_housing.tpl';
		elseif($page->id == 340)
			$tpl = 'intern_sf.tpl';
		elseif($page->id == 353)
			$tpl = 'intern_housing_js.tpl';
		elseif($page->id == 267)
			$tpl = 'nob_hill.tpl';
		elseif($page->id == 268)
			$tpl = 'lakeview.tpl';
		elseif($page->id == 269)
			$tpl = 'soma.tpl';
		elseif($page->id == 203)
			$tpl = 'hot-deals-manhattan.tpl';
		elseif($page->id == 204)
			$tpl = 'hot-deals-bed-stuy.tpl';
		elseif($page->id == 205)
			$tpl = 'hot-deals-flatbush-house.tpl';
		elseif($page->id == 206)
			$tpl = 'hot-deals-ridgewood.tpl';
		elseif($page->id == 207)
			$tpl = 'hot-deals-bushwick.tpl';
		elseif($page->id == 215)
			$tpl = 'hot-deals-east-bushwick.tpl';
		elseif($page->id == 217)
			$tpl = 'hot-deals-east-williamsburg.tpl';
		elseif($page->id == 219)
			$tpl = 'hot-deals-downtown-brooklyn.tpl';
		elseif($page->id == 236)
			$tpl = 'hot-deals-south-williamsburg.tpl';
		elseif($page->id == 271)
			$tpl = 'hot-deals-knickerbocker.tpl';
		elseif($page->id == 425)
			$tpl = 'cassa-application.tpl';
		elseif($page->id == 426)
			$tpl = 'philadelphia-application.tpl';
		elseif($page->id == 472)
			$tpl = 'offcampus_philadelphia.tpl';
		elseif($page->id == 473)
			$tpl = 'landings/philly-coliving.tpl';
		elseif($page->id == 513)
			$tpl = 'landings/nyc-office-of-education.tpl';
		elseif($page->id == 530)
			$tpl = 'landings/corporate-group.tpl';
		elseif($page->id == 541)
			$tpl = 'landings/corporate-housing-philly.tpl';
        elseif($page->id == 571)
            $tpl = 'landings/es_furnished_rooms.tpl';
        elseif($page->id == 301)
			$tpl = 'hot-deals-all-houses.tpl';
        elseif($page->id == 356)
			$tpl = 'full_apartments_form.tpl';
        elseif($page->id == 314)
			$tpl = 'bedly.tpl';
        elseif($page->id == 354)
			$tpl = 'full_apartments.tpl';
        elseif($page->id == 371)
			$tpl = 'educational_pods.tpl';
		elseif(in_array($page->id, [193, 386]))
			$tpl = 'thankyou_page.tpl';
        elseif($page->id == 531)
			$tpl = 'pages/feedback.tpl';
        elseif ($page->id == 104 && $this->settings->theme == 'outpost_new') // Skip Your Security Deposit
            $tpl = 'pages/skip_security_deposit.tpl';



		return $this->design->fetch($tpl);
	}
}