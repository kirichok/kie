{% extends 'layout.swig' %}

{% block content %}
{% include 'layout_main_menu.swig' %}

<div id="wrap-content" class="wrap-content">
    <div class="preloader">
        <!--<div class="preloader-anim la-animate"></div>-->
        <div class="loading-anim">Loading</div>
    </div>
    <div class="aside">
        <a href="index.html" class="btn-logo"></a>
        <span class="menu-btn-open" id="menu-btn-open">Menu</span>
        <span class="toggle-fixed fa fa-thumb-tack" data-toggle="tooltip" data-placement="top" title="Fixed top"></span>
    </div>
    <div class="header">
        <div class="unit title">
            <h5 class="primary font-weight-700">Dashboard</h5>
            <h6 class="secondary">Dashboard</h6>
        </div>
        <div class="unit morphsearch" id="morphsearch">
            <form class="morphsearch-form">
                <input class="morphsearch-input" type="search" placeholder="Search..."/>
                <button class="morphsearch-submit" type="submit">Search</button>
            </form>
            <div class="morphsearch-content">
                <div class="dummy-column">
                    <h2>People</h2>
                    <a class="dummy-media-object" href="#">
                        <img class="round" src="img/images/search/50.png" alt="Sara Soueidan"/>

                        <h3>Sara Soueidan</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img class="round" src="img/images/search/50.png" alt="Sara Soueidan"/>

                        <h3>Rachel Smith</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img class="round" src="img/images/search/50.png" alt="Peter Finlan"/>

                        <h3>Peter Finlan</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img class="round" src="img/images/search/50.png" alt="Patrick Cox"/>

                        <h3>Patrick Cox</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img class="round" src="img/images/search/50.png" alt="Tim Holman"/>

                        <h3>Tim Holman</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img class="round" src="img/images/search/50.png" alt="Shaun Dona"/>

                        <h3>Shaun Dona</h3>
                    </a>
                </div>
                <div class="dummy-column">
                    <h2>Popular</h2>
                    <a class="dummy-media-object" href="#">
                        <img src="img/images/search/50-2.png" alt="PagePreloadingEffect"/>

                        <h3>Page Preloading Effect</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img src="img/images/search/50-2.png" alt="ArrowNavigationStyles"/>

                        <h3>Arrow Navigation Styles</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img src="img/images/search/50-2.png" alt="HoverEffectsIdeasNew"/>

                        <h3>Ideas for Subtle Hover Effects</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img src="img/images/search/50-2.png" alt="FreebieHalcyonDays"/>

                        <h3>Halcyon Days Template</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img src="img/images/search/50-2.png" alt="ArticleIntroEffects"/>

                        <h3>Inspiration for Article Intro Effects</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img src="img/images/search/50-2.png" alt="DraggableDualViewSlideshow"/>

                        <h3>Draggable Dual-View Slideshow</h3>
                    </a>
                </div>
                <div class="dummy-column">
                    <h2>Recent</h2>
                    <a class="dummy-media-object" href="#">
                        <img src="img/images/search/50-3.png" alt="TooltipStylesInspiration"/>

                        <h3>Tooltip Styles Inspiration</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img src="img/images/search/50-3.png" alt="AnimatedHeaderBackgrounds"/>

                        <h3>Animated Background Headers</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img src="img/images/search/50-3.png" alt="OffCanvas"/>

                        <h3>Off-Canvas Menu Effects</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img src="img/images/search/50-3.png" alt="TabStyles"/>

                        <h3>Tab Styles Inspiration</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img src="img/images/search/50-3.png" alt="ResponsiveSVGs"/>

                        <h3>Make SVGs Responsive with CSS</h3>
                    </a>
                    <a class="dummy-media-object" href="#">
                        <img src="img/images/search/50-3.png" alt="NotificationStyles"/>

                        <h3>Notification Styles Inspiration</h3>
                    </a>
                </div>
            </div>
            <span class="morphsearch-close"><svg>
                <use xlink:href="#icon-close"></use>
            </svg></span>
        </div>
        <div class="unit email">
            <span class="btn-email" id="email-btn"><span class="notification-count">6</span></span>

            <div class="mail-content" id="email-content">
                <a href="javascript:void(0);" class="unit">
                    <img src="img/images/mail-widget/60.png" alt="mail"/>

                    <p>It is a long esta blished fact that a reader distracted by the readable content of</p>
                </a>
                <a href="javascript:void(0);" class="unit">
                    <img src="img/images/mail-widget/60-2.png" alt="mail"/>

                    <p>It is a long esta blished fact that a reader distracted by the readable content of</p>
                </a>
                <a href="javascript:void(0);" class="unit">
                    <img src="img/images/mail-widget/60-3.png" alt="mail"/>

                    <p>It is a long esta blished fact that a reader distracted by the readable content of</p>
                </a>
                <a href="javascript:void(0);" class="unit">
                    <img src="img/images/mail-widget/60-4.png" alt="mail"/>

                    <p>It is a long esta blished fact that a reader distracted by the readable content of</p>
                </a>
                <a href="email-list.html" class="show-all btn btn-danger">Show all mails</a>
            </div>
        </div>
        <div class="unit message">
            <span class="btn-message" id="message-btn"><span class="notification-count">4</span></span>

            <div class="message-content" id="message-content">
                <div class="percent">
                    <div class="percent-title">Database Repair</div>
                    <div class="percent-mark">70%</div>
                    <div class="percent-value color-1" style="width: 70%;"></div>
                </div>
                <div class="percent">
                    <div class="percent-title">Database Repair</div>
                    <div class="percent-mark">10%</div>
                    <div class="percent-value color-2" style="width: 10%;"></div>
                </div>
                <a href="javascript:void(0);" class="unit">
                    <span class="icon-android"></span>

                    <p>It is a long esta blished fact that a reader distracted by the readable content of</p>
                </a>
                <a href="javascript:void(0);" class="unit">
                    <span class="icon-album"></span>

                    <p>It is a long esta blished fact that a reader distracted by the readable content of</p>
                </a>
                <a href="javascript:void(0);" class="unit">
                    <span class="icon-science"></span>

                    <p>It is a long esta blished fact that a reader distracted by the readable content of</p>
                </a>
                <a href="javascript:void(0);" class="unit">
                    <span class="icon-box"></span>

                    <p>It is a long esta blished fact that a reader distracted by the readable content of</p>
                </a>
                <a href="javascript:void(0);" class="clear-all btn btn-danger">Clear all</a>

                <div class="check-ok">
                    <i class="fa fa-check-circle"></i>
                    <br>
                    <span class="text-uppercase">Empty</span>
                </div>
            </div>
        </div>
        <div class="unit backet user">
            <span class="user-btn" id="user-btn"><i class="fa fa-user"></i></span>

            <div class="user-content" id="user-content">
                <img src="img/images/profile/64.png" alt="image" class="b-profile-avatar"/>

                <div class="b-profile-name">
                    Alexander Van Gok
                </div>
                <div class="b-profile-profession">
                    Web Designer
                </div>
                <ul class="b-profile-folders">
                    <li><a href="#">Messages <span class="badge badge-success pull-right">25</span></a></li>
                    <li><a href="#">Photos <span class="badge badge-success pull-right">2</span></a></li>
                    <li><a href="#">Posts <span class="badge badge-primary badge-round pull-right">6</span></a></li>
                </ul>
                <a href="profile.html" class="view-profile btn btn-danger">View profile</a>
            </div>
        </div>
    </div>
    <div class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <ol class="breadcrumb">
                    <li><a href="index.html"><i class="fa fa-home"></i></a></li>
                    <li class="active">Dashboard</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-4 col-lg-2">
                <div class="decor-default">

                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-2">
                <div class="decor-default">

                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-2">
                <div class="decor-default">

                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-2">
                <div class="decor-default">

                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-2">
                <div class="decor-default">

                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-2">
                <div class="decor-default">

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-3">
                <div class="decor-default">

                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="decor-default">

                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="decor-default">

                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="decor-default">

                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-sm-12 col-md-4">
                <div class="decor-default">

                </div>
            </div>
            <div class="col-sm-12 col-md-4">
                <div class="decor-default">

                </div>
            </div>
            <div class="col-sm-12 col-md-4">
                <div class="decor-default">

                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="decor-default">

                </div>
            </div>
            <div class="col-sm-6">
                <div class="decor-default">

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="decor-default">

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="decor-default">

                </div>
            </div>
        </div>

    </div>
    <div class="footer">
        © 2015 Copyright.
    </div>
</div>

<div id="overlay" class="overlay"></div>

<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 28 28" style="display: none;" xml:space="preserve">
    <g id="icon-close">
	    <line x1="2" y1="2" x2="26" y2="26" />
		<line x1="2" y1="26" x2="26" y2="2" />
	</g>
</svg>
{% endblock %}