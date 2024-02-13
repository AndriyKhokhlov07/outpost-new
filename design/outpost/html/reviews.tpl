{* Канонический адрес страницы *}
{$canonical="/{$page->url}" scope=parent}

{get_posts type=2 var=s_reviews limit=16}
{include file='bx/reviews_slider.tpl'}
