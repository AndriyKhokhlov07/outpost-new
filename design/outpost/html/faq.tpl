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

    {* Google Schema for Houses *}
{literal}
    <script type="application/ld+json">
    {
    "@context":"https://schema.org",
    "@type":"FAQPage", "mainEntity": [
        
        {
    "@type":"question",
    "name":"What is coliving?",
    "accepted answer": {
    "@type":"Answer",
    "text":"Coliving is a shared housing model. Tenants, whom we call members, share kitchens, living rooms and other common spaces with all members, and have a private or shared bedrooms. Everything is included in our flat fee: utilities, WiFi, weekly cleaning, furniture, appliances, kitchen supplies, and the basics of what you would need upon moving into a new place, along with most events."
    }
    }, 
    
    {
    "@type":"question",
    "name":"What’s your availability?",
    "accepted answer": {
    "@type":"Answer",
    "text":"Availability is alway changing, so we’ll send you our current availability (based on the type of room you're looking for) in an offer when you apply (which is free). The availability in the offer sheet is subject to change, as people sign offers on a first-come-first-serve basis."
    }
    }, 
    
    {
        "@type":"question",
        "name":"What do your cleaners clean?",
        "accepted answer": {
        "@type":"Answer",
        "text":"Our trusted team cleaning team prepares your room before your stay, then cleans all common/shared areas and restocks all supplies during your stay."
        }
        }, 
    
        {
            "@type":"question",
            "name":"What is the price?",
            "accepted answer": {
            "@type":"Answer",
            "text":"Our prices vary depending on which house you choose and whether you choose to stay in a private or a shared room. Exact pricing can be found on the specific webpage for each of our houses in New York and Philadelphia ."
            }
            }, 
    
            {
                "@type":"question",
                "name":"Why are there no addresses for your houses on the website?",
                "accepted answer": {
                "@type":"Answer",
                "text":"For the security of our current members living in our spaces, we do not reveal the exact address of the spaces until you receive an offer. All of our houses are within a 10-minute walk of a subway line. You can check out the approximate locations of our houses here."
                }
                }, 
    
                {
                    "@type":"question",
                    "name":"So you guys are an apartment?",
                    "accepted answer": {
                    "@type":"Answer",
                    "text":"No! Our locations are within apartment buildings, but operate unlike any apartment you've ever been it. Coliving is a shared housing model, so space is shared across apartments. However, if you and your friends would like to rent a full private apartment, please enquire and we'll see what we can do!"
                    }
                    }, 
    
                    {
                        "@type":"question",
                        "name":"Do you provide a month-to-month option?",
                        "accepted answer": {
                        "@type":"Answer",
                        "text":"We do not provide the standard month-to-month option, but we do provide the ability to make continuous one-month commitments. What this means is that you can rent for a month, then decide during the month that you would like to extend of another month. As soon as you know you would like to extend another month, let us know! The longer you wait, the higher the chance someone else might reserve your room."
                        }
                        }, 
    
    {
    "@type":"question",
    "name":"Who are the type of people who usually live in your spaces?",
    "accepted answer": {
    "@type":"Answer",
    "text":"The typical people who live in our spaces are between the ages of 21 and 35; around half are international members and half are American; about 30 percent are students (undergraduate, graduate, post-graduate, or short-term programs); and 70 percent are already in their professional fields, from all different professional backgrounds! The gender breakdown changes all the time, but on average it’s 50-50."
    }
    },
    
    {
        "@type":"question",
        "name":"What are the rooms like?",
        "accepted answer": {
        "@type":"Answer",
        "text":"We have everything from single rooms with private bathrooms to shared rooms with shared bathrooms, depending on your budget. Let us know what you are looking for and we’ll be happy to accomodate. You can check out our rooms here."
        }
        },
    
        {
            "@type":"question",
            "name":"What happens after I apply?",
            "accepted answer": {
            "@type":"Answer",
            "text":"If everything checks out, we’ll send you a follow-up email within one business day with an offer."
            }
            },
    
            {
                "@type":"question",
                "name":"When will I receive an offer?",
                "accepted answer": {
                "@type":"Answer",
                "text":"Within one business day of filling out our application. Usually the same day as your application submission, even on weekends!"
                }
                },
    
                {
                    "@type":"question",
                    "name":"How do I reserve a spot?",
                    "accepted answer": {
                    "@type":"Answer",
                    "text":"Your spot is reserved after you complete these steps
    
                    Complete a free background check
                    Pay your security deposit: Outpost Club has partnered with Qira to quickly and securely process security deposits. You have two ways of paying your security deposit through Qira:
                    Skip your security deposit: Qira will pay your security deposit to Outpost Club for a setup fee of $49 and a monthly fee of around 1% of your total security deposit, depending on your risk level. Read more about it here.
                    Pay your security deposit in full.
                    Sign your contract
                    Pay your first month's rent
                    Sign up for renters insurance: Outpost Club requires its new members to have renters insurance. Outpost partners with Sure, a renters insurance provider to make the process quick and easy. Once you sign up, this inexpensive service will follow you to all your future apartments. You can sign up here: https://outpostclub.sureapp.com"
                    }
                    },
    
                    {
                        "@type":"question",
                        "name":"How short/long can I make my lease?",
                        "accepted answer": {
                        "@type":"Answer",
                        "text":"You can stay for as short as a month or for as long as you’d like."
                        }
                        },
    
                        {
                            "@type":"question",
                            "name":"How many people are in each house?",
                            "accepted answer": {
                            "@type":"Answer",
                            "text":"It depends on the house, but our houses range from 6 members to 65 members. Keep in mind these members are spread across multiple apartments, in both share and private rooms."
                            }
                            },
    
                            {
                                "@type":"question",
                                "name":"How big are the rooms?",
                                "accepted answer": {
                                "@type":"Answer",
                                "text":"Our smallest private rooms are around 70 square feet and our largest private rooms are around 140 square feet, and we have everything in-between. 
    
                                Our smallest two-person room is around 75 square feet, and our largest is around 170 square feet.
                                
                                To see the exact size of our rooms, please schedule a viewing of our house. Viewings can only be scheduled after applying and receiving an offer from Outpost Club."
                                }
                                },
    
                                {
                                    "@type":"question",
                                    "name":"Do I need renters insurance?",
                                    "accepted answer": {
                                    "@type":"Answer",
                                    "text":"Outpost Club requires renters insurance for all tenants. If you already have renters insurance, great! Please send us proof of your policy when you’re in the process of security your spot. If you don’t have it, Outpost Club partners with Sure Insurance to give you the best deal possible on renters insurance, which covers your items even after you move out of our property. If you leave Outpost, just make sure to let Sure Insurance know you have moved and your items will be covered at your new home."
                                    }
                                    },
    
                                    {
                                        "@type":"question",
                                        "name":"The renters insurance company you partner with (Sure Insurance) is requiring me to sign up for a full year, but I’m only staying with you for less than a year. Do I need to sign up for the year?",
                                        "accepted answer": {
                                        "@type":"Answer",
                                        "text":"The great thing about SURE Insurance is that they will cover you even if you move, just tell them your new home address, and they will transfer your coverage there!
    
                                        If you still want to cancel however, you cancel the renters insurance policy at any point. You would receive a pro-rated refund for time not used. What that means: if you got set up with the annual billing option and cancelled after 3 months, you would be refunded the 9 months of unearned premium. Additionally, if you went with the monthly payment option and canceled 15 days into the month, you would be refunded the 15 days that the policy was inactive. There are also no cancellation fees!"
                                        }
                                        },
    
                                        {
                                            "@type":"question",
                                            "name":"What if my flight arrives late? How can I move in?",
                                            "accepted answer": {
                                            "@type":"Answer",
                                            "text":"PLEASE NOTE THAT THERE IS NO RECEPTION, THEREFORE YOUR CHECK-IN TIME HAS TO BE AGREED UPON BEFORE ARRIVAL AS FOLLOWS:
    
                                            Please provide your expected arrival time at the house and travel details (flight number, port of arrival, bus/train/route information) to: customer.service@outpost-club.com
                                            
                                            If your expected arrival to the property changes by more than 1 hour, please inform us in advance via e-mail, text or phone call. Regular check-in time is from 3 p.m. to 9 p.m.
                                            
                                            Night check-in (after 9 p.m.) may also be organized for an extra fee of $30 USD. We can't guarantee check-in between 12 a.m. and 9 a.m.; however, if we are able to do it, there will be a $70 late check-in fee.
                                            
                                            Early check-in (9 a.m. to 3 p.m.) may be also organized if scheduling permits."
                                            }
                                            },
    
                                            {
                                                "@type":"question",
                                                "name":"What’s included in my rent?",
                                                "accepted answer": {
                                                "@type":"Answer",
                                                "text":"Your room, bed (prepared for a fee), utilities and wifi (included, but listed as a separate line-item on your rent bill), move-in ready furniture, cleaning services, working space, security systems, constant access to your house leader, and new friends :)
    
                                                If you have chosen to rent a full apartment, utilities, cleaning, furnishings, etc. may or may not be included, but this will be disclosed duriing the sales process."
                                                }
                                                },
    
                                                {
                                                    "@type":"question",
                                                    "name":"How do I pay for rent?",
                                                    "accepted answer": {
                                                    "@type":"Answer",
                                                    "text":"All payments are sent as electronic invoices sent to your email. You may pay in any electronic format. For your first moth's rent, you will receive an invoice to pay after being approved as a client. For all future month's payments, when you pay depends on when you move in.
    
                                                    If you aren’t moving in on the first day of the month, your first months invoice will be for one month starting from your move-in date. For the second invoice, you will be billed a pro-rated amount until the last day of the month. After that, all future months will be billed from the first day of the month to the last day of the month.
                                                    
                                                    If you are moving in on the first of the month, your rent is always due on the first of the month, with no pro-rated invoices."
                                                    }
                                                    },
    
                                                    {
                                                        "@type":"question",
                                                        "name":"What's the security like at your locations?",
                                                        "accepted answer": {
                                                        "@type":"Answer",
                                                        "text":"Most of our locations are equipped with keypad access and an August Lock security system, although a few use traditional keyed locks. We have Nest security systems in all of our common areas to keep everyone’s valuables safe. These are not monitored, and are only accessed when our members request that we look at them for justifiable purposes (missing items left in common rooms, suspicious activity, etc.). Most of our locations also have lockers for members’ valuables. In addition to the above, coliving provides a unique, unintended security benefit: Because many people are living in the same spaces, there is virtually always someone at home."
                                                        }
                                                        },
    
                                                        {
                                                            "@type":"question",
                                                            "name":"Why are there no locks on the doors?",
                                                            "accepted answer": {
                                                            "@type":"Answer",
                                                            "text":"The New York Housing Department policy disallows residential properties from placing locks on bedroom doors for fire safety purposes; however, even if Outpost Club were allowed to put locks on the doors, Outpost Club is committed to providing safe and secure coliving spaces through trust and mutual respect. Bedroom doors are unlocked because it is a display of this trust and respect; on top of our security systems mentioned above, our members are selected for their appreciation of a safe environment."
                                                            }
                                                            },
    
                                                            {
                                                                "@type":"question",
                                                                "name":"How do you create a sense of community?",
                                                                "accepted answer": {
                                                                "@type":"Answer",
                                                                "text":"From our house leaders (who will meet you upon arrival), to the events we hold multiple times per month, our team is dedicated to giving you the sense of community you are looking for, whether in a professional or personal capacity. You may choose to be as involved or uninvolved as you’d like; you are welcome to stay with us either way! Check out our blog to get an understanding of our community."
                                                                }
                                                                },
                                                                
                                                                {
                                                                    "@type":"question",
                                                                    "name":"What is your cancellation policy (During-stay cancellation)?",
                                                                    "accepted answer": {
                                                                    "@type":"Answer",
                                                                    "text":"There is no option to cancel during your stay, as with any common residential lease. Please consult your lease for specifics."
                                                                    }
                                                                    },
    
                                                                    
                                                                       {
                                                                "@type":"question",
                                                                "name":"Can I extend my lease?",
                                                                "accepted answer": {
                                                                "@type":"Answer",
                                                                "text":"Yes! We’re happy to have our members stay longer; however, we can't extend you lease if we don't know about your extension. As soon as you decide to extend your lease, let us know by emailing bookings@outpost-club.com. If you have not committed to an extension, your bed can be reserved by anyone admitted to Outpost Club."
                                                                }
                                                                },
    
    
                                                                {
                                                                    "@type":"question",
                                                                    "name":"How does the mail work here?",
                                                                    "accepted answer": {
                                                                    "@type":"Answer",
                                                                    "text":"
                                                                    Just address your mail to your house’s address and our staff will make sure it gets inside. Follow the directions in your move-in guide to ensure a successful delivery."
                                                                    }
                                                                    },
    
                                                                    
                                                                    {
                                                                        "@type":"question",
                                                                        "name":"Is there laundry?",
                                                                        "accepted answer": {
                                                                        "@type":"Answer",
                                                                        "text":"It depends on the house, so some houses have no machine (but laundromats right around the corner), some houses have coin-operated machines and some have free laundry. You can find out the specifics on the house pages."
                                                                        }
                                                                        },
    
                                                                        
                                                                        {
                                                                            "@type":"question",
                                                                            "name":"Who is the house leader and what do they do?",
                                                                            "accepted answer": {
                                                                            "@type":"Answer",
                                                                            "text":"Our house leaders are members who stay at our houses to help you out! They help with move-ins, move-outs, events and general help. They live in the house and are always accessible.]"
                                                                            }
                                                                            },
    
                                                                            {
                                                                                "@type":"question",
                                                                                "name":"Guest policy?",
                                                                                "accepted answer": {
                                                                                "@type":"Answer",
                                                                                "text":"No overnight Guest stays are allowed"
                                                                                }
                                                                                },
                
                                                                                
                                                                                {
                                                                                    "@type":"question",
                                                                                    "name":"Animals/Pets?",
                                                                                    "accepted answer": {
                                                                                    "@type":"Answer",
                                                                                    "text":"
                                                                                    While we abide by all current housing laws, please understand that this is a coliving space and that current and future members that you share the space with may be allergic to your animal."
                                                                                    }
                                                                                    },
                
                                                                                    
                                                                                    {
                                                                                        "@type":"question",
                                                                                        "name":"Are couples allowed?",
                                                                                        "accepted answer": {
                                                                                        "@type":"Answer",
                                                                                        "text":"Yes! There is just a $200/month surcharge for couples, or any situation in which two people are sharing a private room. There are some instances where we can not allow couples in a specific apartment in order to maintain proper number of tenants in a given apartment."
                                                                                        }
                                                                                        },
                
                                                                                        
                                                                                        {
                                                                                            "@type":"question",
                                                                                            "name":"Are the bedrooms co-ed? What about the rest of the house",
                                                                                            "accepted answer": {
                                                                                            "@type":"Answer",
                                                                                            "text":"
                                                                                            All rooms are gender separated unless otherwise requested by a group. The other spaces are shared by all!"
                                                                                            }
                                                                                            },
    
                                                                                            {
                                                                                                "@type":"question",
                                                                                                "name":"What happens to my mail once I leave?",
                                                                                                "accepted answer": {
                                                                                                "@type":"Answer",
                                                                                                "text":"We know there are a lot of moving parts when packing & preparing to move out, so here’s a helpful reminder with important info for changing your mailing address with USPS 7-10 days before move-out:
    
                                                                                                Change Your Address and Other U.S. Post Office Services: https://www.usa.gov/post-office
                                                                                                
                                                                                                *NOTE* The above site is an official website of the US Government!  There are lots of scam sites for US Postal Service, Department of Motor Vehicles, etc., that try to make you think they’re official US Government sites, and then try to get you to pay for their services.  2 things to look for to tell if a site is an official US Government site:
                                                                                                
                                                                                                A site ending in “.gov” is an official US Government site (as opposed to “.com” or “.co” etc).  All branches of US Federal government use “.gov” as domain name
                                                                                                Look at the web address in the browser bar.  An official US Government site will start start with “https://” NOT “http://”  (the S means it is a secure, encrypted site)
                                                                                                https://www.usa.gov/post-office has all the info on changing your mailing address, but long story short, the two ways to change your mailing address are: 
                                                                                                
                                                                                                Change address online at: https://moversguide.usps.com/
                                                                                                *NOTE* You will get an immediate email confirmation, but know that if you want to change your address online, there is a $1 charge to a credit or debit card in your name as identity verification  & it says right on the site: You don’t need to pay a separate company to change your address. Scammers may charge $40 or more to do what you can do for just $1 using the moving section of the official USPS.com website.
                                                                                                Also, if your new address will be outside the US, it is recommended that you use the second method below and go into your local post office 
                                                                                                Go to local post office and request “Mover’s Guide Packet”
                                                                                                Inside the packet is PS Form 3575. Fill out this change of address form and give it to a postal worker behind the counter (RECOMMENDED IF NEW ADDRESS IS OUTSIDE THE US) or drop it into the letter mail slot inside the post office.
                                                                                                You should receive a confirmation letter at your new address in five business days.
                                                                                                If mail is still arriving for you 30 days post move-out, Outpost will return mail to post office as “return to sender”, so IF YOU ARE RECEIVING MAIL AT YOUR OUTPOST HOUSE, be sure to CHANGE/UPDATE YOUR MAILING INFORMATION 5-10 DAYS BEFORE MOVE-OUT"
                                                                                                }
                                                                                                },
    
                                                                                                {
                                                                                                    "@type":"question",
                                                                                                    "name":"When/how will you refund my security deposit?",
                                                                                                    "accepted answer": {
                                                                                                    "@type":"Answer",
                                                                                                    "text":"Security deposits are refunded within 15 days of departure from the Outpost Club premises.
    
                                                                                                    If you are a US citizen, we can only refund you by mailing you a check, please provide us with your new mailing address and we will send to you.
                                                                                                    
                                                                                                    If you are international, we will refund you through the method of payment you used to make the security deposit payment. If you have since closed the account that you used to pay the security deposit, contact that bank, explain the situation, and they usually can temporarily re-open the account so you can receive and withdraw the funds.
                                                                                                    
                                                                                                    If you paid us your security deposit using Qira, the security deposit will be refunded to Qira.
                                                                                                    
                                                                                                    To check on the status of your security deposit return, email customer.service@outpost-club.com"
                                                                                                    }
                                                                                                    },
    
                                                                                                    {
                                                                                                        "@type":"question",
                                                                                                        "name":"How do I cancel my renters insurance after I move out?",
                                                                                                        "accepted answer": {
                                                                                                        "@type":"Answer",
                                                                                                        "text":"The quickest way to cancel iyour Sure Insurance is to call their underwriter Assurant at (800)-432-8612 with your policy number (REN0541999) and select option 7, then 6 (to speak with a representative). A representative will be able to help you cancel. Please let us know if you need any help along the way."
                                                                                                        }
                                                                                                        },
                                                                                                        {
                                                                                                            "@type":"question",
                                                                                                            "name":"What is Outpost Club?",
                                                                                                            "accepted answer": {
                                                                                                            "@type":"Answer",
                                                                                                            "text":"Outpost Club is a network of coliving locations where you can rent a room throughout New York. Our goal is to make it super easy to move to New York, and to provide interesting and convenient places for affordable prices. At Outpost Club, you get more than just a place to live and work. The Outpost Club platform creates a coliving community that offers both general and professional networking, which personally benefits all members."
                                                                                                            }
                                                                                                            },
                                                                                                            {
                                                                                                                "@type":"question",
                                                                                                                "name":"What does Outpost Club Do?",
                                                                                                                "accepted answer": {
                                                                                                                "@type":"Answer",
                                                                                                                "text":"Outpost Club provides end-to-end coliving services to creatives, tech startups, entrepreneurs, digital nomads, freelancers, remote workers, professionals, students, and anyone looking to move to a new city and meet new people. Coliving is a shared housing model, meaning members share kitchens, living rooms and other common spaces with all members, and have a private or shared bedrooms of their choice. Everything is included in our flat fee: utilities, WiFi, furniture, appliances, kitchen supplies and anything else you would need upon moving into a new place. All you need to bring is your suitcase.
    
                                                                                                                Fill in the application, have a brief interview, grab your suitcase and move in! You’ll meet new people who will become your friends for life."
                                                                                                                }
                                                                                                                },
                                                                                                                {
                                                                                                                    "@type":"question",
                                                                                                                    "name":"Why does Outpost Club do it?",
                                                                                                                    "accepted answer": {
                                                                                                                    "@type":"Answer",
                                                                                                                    "text":"Even though New York houses millions of people, many of us feel lonely from time to time. Despite this, at Outpost Club’s co-living locations, you’ll never come home to an empty house, and you will never feel alone."
                                                                                                                    }
                                                                                                                    },
                                                                                                                      {
                                                                                                    "@type":"question",
                                                                                                    "name":"What’s the history behind your company?",
                                                                                                    "accepted answer": {
                                                                                                    "@type":"Answer",
                                                                                                    "text":"Outpost Club was created in 2016 by three guys who had to go through the process of trying to find housing in New York City as international renters. The credit checks, scams, real-estate agent commissions, buying furniture, setting up utilities, roommate cost-sharing, paying first month’s rent/last month's rent/security deposits … The whole thing sucks. So they created their own process by eliminating all the bad parts and adding some good stuff too, like community! Since then, we’ve continued to add new locations in different cities and are excited to keep growing our community."
                                                                                                    }
                                                                                                    },
                                
                
    ]
    }
    </script>
    {/literal}
    {* Google Schema End *}


    <h2 class="h1 center">What Is Coliving?</h2>
    <p class="big_p"><strong>Coliving (co living) is a shared-housing model</strong> in which communities are built around shared spaces in the home, allowing residents to live more affordably and socially.</p>
    <hr class="hr">
    </div>
</div>

<div class="main_width faq">
    <div class="search">
        <input type=text name=search_related id='faq_search' class="input_autocomplete" placeholder='Quick answer search'>
    </div>
    {foreach $pages as $p}
        {if $p->menu_id == 6}
        <div class="item">
            {if $p->subcategories}
                <h5 class="bold_h1">{$p->name}</h5>
                <ul>
                    {foreach $p->subcategories as $pc}
                        <li itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                            <input class="hide" type="checkbox" id="{$pc->id}">
                            <label class="h5 pc_{$pc->id}" for="{$pc->id}" itemprop="name">{$pc->name}</label>
                            <div class="text"  itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer"><div itemprop="text">{$pc->body}</div></div>
                        </li>
                    {/foreach}
                </ul>
            {/if}
        </div>
        {/if}
    {/foreach}
</div>
