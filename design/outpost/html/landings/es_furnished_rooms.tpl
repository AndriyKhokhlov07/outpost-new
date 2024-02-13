<div class="land furnished_r" lang="es">
	<div class="w1200 txt">
        <div class="main_width left">
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
            <div class="first_block">
                <div class="img">
                    <img src="/design/{$settings->theme|escape}/images/landing/furnished/furnished-rooms-for-rent.jpg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-1), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-1)" >
                </div>
                <div class="right_bl fx v vc">
                    <p>Hay mucho que hacer una vez que decides mudarte a Nueva York, y lo más estresante puede ser encontrar un lugar donde vivir que se ajuste a tu presupuesto y consista en algo más que un colchón en el suelo.</p>
                    <p><strong>Outpost Club ha resuelto ese problema ofreciendo habitaciones amuebladas en alquiler en Brooklyn, Manhattan y Queens.</strong></p>
                    <p>Nos ocupamos de todo lo necesario para que tu nuevo hogar sea la ciudad, así que lo único que tienes que hacer es mudarte, tanto si te quedas con nosotros un mes como si lo haces durante años.</p>
                    <p><strong>Mudarse es tan fácil como pedir un café.</strong></p>
                    {*<img src="/design/{$settings->theme|escape}/images/landing/right-arrow.svg" alt="furnished rooms for rent in Brooklyn">*}
                </div>
            </div>
        </div>
        <div class="w100">
            <div class="main_width txt center">
                <h4 class="h1 center">Disponemos de apartamentos totalmente amueblados en toda la ciudad de Nueva York</h4>
                <p>Tenemos casas en Hell's Kitchen, Upper Manhattan, Harlem y Spanish Harlem en Manhattan; Williamsburg, Bushwick, Greenpoint, Fort Greene, Bed-Stuy, Flatbush, Crown Heights, Kensington y Boerum Hill en Brooklyn; y Ridgewood en Queens. No importa dónde trabajes o juegues, podrás encontrar un apartamento que se adapte a tus necesidades.</p>
                <p>Puede que esté pensando: "Trabajo en Midtown. ¿Tienen un apartamento cerca de mí?". Gracias a la práctica ubicación de nuestras casas, cerca de varias líneas de metro, nunca tendrás que preocuparte por un desplazamiento escandaloso.</p>
                <p>Nos preocupamos de elegir barrios vibrantes con personalidades distintas, con acceso al metro, parques, cafés, restaurantes y todo lo que necesites para hacer de Nueva York tu hogar.</p>
                <a href="new-york" target="_blank" rel="nofollow noopener noreferer" class="button2 red">Explore our houses</a>
            </div>
            <div class="fx gall w">
                <a class="img" href="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-4.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-4.jpg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-2), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-2)" ></a>
                <a class="img" href="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-2.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-2.jpg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-3), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-3)" ></a>
                <a class="img" href="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-3.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-3.jpg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-4), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-4)" ></a>
                <a class="img" href="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-5.jpg" data-fancybox="gall"><img src="/design/{$settings->theme|escape}/images/landing/rent-in-brook/rent-a-room-in-brooklyn-5.jpg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-5), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-5)" ></a>
            </div>
        </div>
        <div class="main_width">
            <div class="advantages txt center">
                <h4 class="h1">No hay por qué sacrificar la calidad por un apartamento barato</h4>
                <p>Cuando decimos recientemente renovado, lo decimos en serio: Hemos contratado a interioristas para que diseñen espacios habitables que se sientan como en casa sea cual sea su estilo de vida, y nos aseguramos de que nuestras casas reciban el mantenimiento adecuado en todo momento. Cuidamos de su casa para que usted no tenga que hacerlo.</p>
                <p>Además del mobiliario tradicional de los apartamentos, incluimos elementos esenciales de cocina y baño, como ollas, sartenes, utensilios, jabón y papel higiénico, para que nunca tenga que preocuparse por no encontrar cosas importantes cuando las necesite. También nos encargamos de la instalación de servicios públicos, lo que significa que no hay más tratando de realizar un seguimiento de pilas de facturas cada mes.</p>
                <p class="h5">Ofrecemos habitaciones compartidas y privadas, desde 790 $ por una habitación compartida y 1180 $ por una habitación privada. Cuanto más tiempo te quedes, ¡más barato te saldrá el alquiler!</p>
            </div>
            <hr class="hr m0">
        </div>
        <div class="main_width">
            <div class="fx ch3 w c">
                 <div class="room center">
                    <a class="img " href="the-harlem-house" target="_blank" rel="nofollow noopener noreferer">
                        <img src="/design/{$settings->theme|escape}/images/landing/upper-manhattan.jpg" title="Alquiler de habitaciones asequibles en Brooklyn (Image-12), outpost-club.com" alt="Alquiler de habitaciones asequibles en Brooklyn (Image-12)" >
                    </a>
                    <a class="h3" href="the-harlem-house" target="_blank" rel="nofollow noopener noreferer">The Upper Manhattan House</a>
                </div>
                <div class="room center">
                    <a class="img " href="the-woodbine-house" target="_blank" rel="nofollow noopener noreferer">
                        <img src="/design/{$settings->theme|escape}/images/landing/woodbine-house.jpg" title="Alquiler de habitaciones asequibles en Brooklyn (Image-13), outpost-club.com" alt="Alquiler de habitaciones asequibles en Brooklyn (Image-13)" >
                    </a>
                    <a class="h3" href="the-woodbine-house" target="_blank" rel="nofollow noopener noreferer">The Woodbine House</a>
                </div>
            </div>
        </div>
        <div class="main_width">
            <div class="fx ch3 w c">
                 <div class="room center">
                    <a class="img " href="the-atlantic-house" target="_blank" rel="nofollow noopener noreferer">
                        <img src="/design/{$settings->theme|escape}/images/landing/atlantic-house.jpg" title="Alquiler de habitaciones asequibles en Brooklyn (Image-12), outpost-club.com" alt="Alquiler de habitaciones asequibles en Brooklyn (Image-12)" >
                    </a>
                    <a class="h3" href="the-atlantic-house" target="_blank" rel="nofollow noopener noreferer">The Atlantic House</a>
                </div>
                <div class="room center">
                    <a class="img " href="the-maple-house" target="_blank" rel="nofollow noopener noreferer">
                        <img src="/design/{$settings->theme|escape}/images/landing/maple-house.jpg" title="Alquiler de habitaciones asequibles en Brooklyn (Image-13), outpost-club.com" alt="Alquiler de habitaciones asequibles en Brooklyn (Image-13)" >
                    </a>
                    <a class="h3" href="the-maple-house" target="_blank" rel="nofollow noopener noreferer">The Maple House</a>
                </div>
            </div>
        </div>
        <div class="main_width steps txt">
            <h4 class="h1 center">Cómo reservar su plaza</h4>
            <div class="fx ch3">
                <div>
                    <img src="design/{$settings->theme|escape}/images/icons/checklist.svg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-6), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-6)" >
                    <p class="title">Paso 1 <br>Rellene un breve formulario</p>
                    <p class="text">Rellene este formulario y un miembro de nuestro equipo se pondrá en contacto con usted para informarle sobre precios y disponibilidad.</p>
                </div>
                <div>
                    <img src="design/{$settings->theme|escape}/images/icons/smartphone.svg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-7), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-7)" >
                    <p class="title">Paso 2 <br>Obtenga una oferta en un día</p>
                    <p class="text">Nuestro equipo le ofrecerá diferentes opciones en función de su presupuesto y de nuestra disponibilidad.</p>
                </div>
                <div>
                    <img src="design/{$settings->theme|escape}/images/icons/contract.svg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-8), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-8)" >
                    <p class="title">Paso 3 <br>Acepte nuestra oferta y múdese</p>
                    <p class="text">Ya está todo listo.</p>
                </div>
            </div>
            <p class="center">Nuestras habitaciones amuebladas en alquiler le ofrecen todo lo que necesita para sentirse como en casa desde el primer momento. A qué espera?</p>
            <div class="center">
                <a href="online-questionnaire/?utm_source=landing-page&utm_medium=furnished-rooms" target="_blank" rel="nofollow noopener noreferer" class="button2 red">Apply now</a>
            </div>
        </div>
        <div class="main_width partners_sb">
            <div class="second_block fx w">
                <div class="ico"><img src="/design/{$settings->theme|escape}/images/landing/TG-Mark-Color.png" title="TheGuarantors Logo" alt="TheGuarantors Logo"></div>
                <div class="text">
                    <h4 class="h1">TheGuarantors</h4>
                    <p>¿No cumple todos los requisitos? Cumpla con la Garantía de Arrendamiento. Nos hemos asociado con <strong>TheGuarantors</strong> para que le resulte más fácil reunir los requisitos para la casa de sus sueños. Para empezar, sólo tiene que rellenar una <a href="https://bit.ly/3Av1ivf" class="green" target="_blank" rel="nofollow noopener noreferer">solicitud de arrendatario</a>. Una vez aprobada, TheGuarantors nos avisará y usted estará listo para firmar su contrato de arrendamiento. Así de sencillo. Haga <a href="https://bit.ly/3A8mCpe" class="green" target="_blank" rel="nofollow noopener noreferer">clic</a> aquí para más detalles.</p>
                </div>
            </div>
            <div class="w100 img brook">
                <a href="/about" target="_blank" rel="nofollow noopener noreferer">
                <h4 class="title">Más información Outpost Club</h4>
                <img src="/design/{$settings->theme|escape}/images/landing/brook.jpg" title="Furnished Rooms for Rent: Find Apartments in NYC (Image-9), outpost-club.com" alt="Furnished Rooms for Rent: Find Apartments in NYC  (Image-9)" >
                </a>
            </div>
        </div>
    </div>
</div>
