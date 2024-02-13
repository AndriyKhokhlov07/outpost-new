<!DOCTYPE html>
<html lang="en">
<head>
{literal}
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-88296389-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-88296389-1');
</script>
{/literal}

{if $this_page=='join_us'}
{literal}
<script> gtag('event', 'conversion', {'send_to': 'AW-867431680/3qi1CPXCpXsQgOrPnQM'}); </script>
{/literal}
{/if}

{literal}
<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '1309793025728193');
fbq('track', 'PageView');
</script>
<!-- DO NOT MODIFY -->
<!-- End Facebook Pixel Code -->
<!-- Start of HubSpot Embed Code -->
<script id="hs-script-loader" async defer src="//js.hs-scripts.com/4068949.js"></script>
<!-- End of HubSpot Embed Code -->
<!-- Hotjar Tracking Code for www.outpost-club.com -->
<script>
(function(h,o,t,j,a,r){
h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
h._hjSettings={hjid:908896,hjsv:6};
a=o.getElementsByTagName('head')[0];
r=o.createElement('script');r.async=1;
r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
a.appendChild(r);
})(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');
</script>
<!-- End of Hotjar Tracking Code -->

{/literal}
    <base href="{$config->root_url}/"/>
    <title>{$meta_title|escape}</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex, nofollow">
    <link href="design/{$settings->theme|escape}/images/favicon.ico" rel="icon"          type="image/x-icon"/>
    <style type="text/css">

        /* font-family: "futura"; */
        @font-face {
            font-family: "futura_r";
            src: url("../fonts/futura-pt/pt6.woff2") format("woff2");
            font-style: normal;
            font-weight: normal;
        }
        *{
            font-family: "futura_r";
        }
        .page_wrap {
            padding-top: 75px;
        }
        .main_width {
            width: calc(100% - 40px);
            max-width: 1000px;
            margin: 70px auto;
        }
        h2 {
            clear: both;
            font-size: 20px;
            margin-bottom: 10px;
            font-weight: 400;
        }
        h3 {
            font-size: 20px;
            line-height: 24px;
            margin-top: 0;
            margin-bottom: 10px;
            font-weight: 400;
        }
       a.green {
            color: #000;
            border-bottom: 2px solid #c01e32;
            transition: .3s;
            text-decoration: none;
        }
    </style>
</head>
<body>
{literal}
<!--  Clickcease.com tracking--><script type='text/javascript'>var script = document.createElement('script');
script.async = true; script.type = 'text/javascript';
var target = 'https://www.clickcease.com/monitor/stat.js';
script.src = target;var elem = document.head;elem.appendChild(script);</script>
<noscript><a href='https://www.clickcease.com' rel='nofollow'><img src='https://monitor.clickcease.com/stats/stats.aspx' alt='ClickCease'/></a></noscript><!--  Clickcease.com tracking-->
{/literal}

<noscript><img class="hide" height="1" width="1" src="https://www.facebook.com/tr?id=1309793025728193&ev=PageView&noscript=1" alt="fbp" /></noscript>
       
   {$content}

    
</body>

</html>