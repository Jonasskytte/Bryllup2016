﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html dir="ltr" lang="da">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="HTML/style.css" type="text/css" />
	<link rel="stylesheet" href="css/dark.css" type="text/css" />
	<link rel="stylesheet" href="css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="css/animate.css" type="text/css" />
	<link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="css/responsive.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lt IE 9]>
		<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->

	<!-- External JavaScripts
	============================================= -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/plugins.js"></script>

	<!-- Document Title
	============================================= -->
	<title>Marie og Jonas | Bryllup</title>

</head>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<div id="most-toppest"></div>

		<section id="slider" class="slider-parallax full-screen page-section dark clearfix">

			<div class="fslider" data-speed="2000" data-pause="6000" data-animation="fade" data-arrows="false" data-pagi="false" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; background-color: #333;">
				<div class="flexslider" style="height: 100% !important;">
					<div class="slider-wrap" style="height: inherit;">
						<div class="slide" style="background: url('/images/13.jpg') center center; background-size: cover; height: 100% !important;"></div>
						<div class="slide" style="background: url('/images/12.jpg') center center; background-size: cover; height: 100% !important;"></div>
<%--						<div class="slide" style="background: url('images/wedding/12.jpg') center center; background-size: cover; height: 100% !important;"></div>--%>
					</div>
				</div>
			</div>

			<div class="container vertical-middle dark center clearfix" style="z-index: 2;">

				<div class="wedding-head clearfix">
					<div class="first-name">Jonas<span>Skytte</span></div>
					<div class="and">&amp;</div>
					<div class="last-name">Marie<span>Thordal</span></div>
				</div>

				<div class="divider divider-short divider-center"><i class="icon-heart3"></i></div>

				<p class="lead">Bliver <strong>Gift</strong> den:</p>

				<div id="countdown-ex1" class="countdown countdown-large coming-soon divcenter" style="max-width:700px;"></div>

			</div>

			<a href="#" data-scrollto="#section-couple" class="one-page-arrow"><i class="icon-angle-down infinite animated fadeInDown"></i></a>

			<script>
				jQuery(document).ready( function($){
					var newDate = new Date(2016,7, 16);
					$('#countdown-ex1').countdown({until: newDate});
				});
				jQuery(window).load(function(){
					var t=setTimeout(function(){
						$( '.flexslider .slide' ).resize();
					},500);
				});
			</script>

		</section>

		<!-- Header
		============================================= -->
		<header id="header">

			<div id="header-wrap">

				<div class="container clearfix">

					<div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

					<div id="logo"></div>

					<!-- Primary Navigation
					============================================= -->
					<nav id="primary-menu" class="style-2 center">

						<ul class="one-page-menu">
							<li><a href="#" data-href="#most-toppest"><div>Start</div></a></li>
							<li><a href="#" data-href="#section-couple"><div>Parret</div></a></li>
							<li><a href="#" data-href="#section-gallery"><div>Billeder</div></a></li>
							<li><a href="#" data-href="#section-events"><div>Plan</div></a></li>
							<li><a href="#" data-href="#section-locations"><div>Stedet</div></a></li>
							<li><a href="#" data-href="#section-rsvp"><div>Svar udbedes</div></a></li>
						</ul>

					</nav><!-- #primary-menu end -->

				</div>

			</div>

		</header><!-- #header end -->

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<div id="section-couple" class="heading-block title-center page-section">
						<h2>Parret</h2>
						<span>Mød Bruden &amp; Gommen</span>
					</div>

					<div class="col-md-6 bottommargin">
						<div class="team team-list clearfix">
							<div class="team-image" style="width: 150px;">
								<img class="img-circle" src="images/wedding/JonasProfil.jpg" alt="Jonas Skytte Thordal">
							</div>
							<div class="team-desc">
								<div class="team-title"><h4>Jonas Skytte Thordal</h4><span>Gom</span></div>
								<div class="team-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi, pariatur, magni! Omnis reiciendis architecto, cupiditate fuga dolores nam accusamus iste molestias quos mollitia totam eius porro culpa incidunt, sunt rerum molestiae aliquid non hic.</div>
								<div class="line topmargin-sm nobottommargin"></div>
								<a href="#" class="social-icon si-borderless si-small si-facebook" title="Facebook">
									<i class="icon-facebook"></i>
									<i class="icon-facebook"></i>
								</a>
								<a href="#" class="social-icon si-borderless si-small si-twitter" title="Twitter">
									<i class="icon-twitter"></i>
									<i class="icon-twitter"></i>
								</a>
								<a href="#" class="social-icon si-borderless si-small si-pinterest" title="Pinterest">
									<i class="icon-pinterest"></i>
									<i class="icon-pinterest"></i>
								</a>
								<a href="#" class="social-icon si-borderless si-small si-instagram" title="Instagram">
									<i class="icon-instagram"></i>
									<i class="icon-instagram"></i>
								</a>
							</div>
						</div>
					</div>

					<div class="col-md-6 bottommargin">
						<div class="team team-list clearfix">
							<div class="team-image" style="width: 150px;">
								<img class="img-circle" src="images/wedding/MarieProfil.jpg" alt="Marie Skytte Thordal">
							</div>
							<div class="team-desc">
								<div class="team-title"><h4>Marie Skytte Thordal</h4><span>Brud</span></div>
								<div class="team-content">Blanditiis adipisci laudantium reiciendis distinctio, molestiae, illum. Aut eveniet assumenda expedita labore nulla commodi numquam perspiciatis, amet doloribus cum sint, quisquam possimus eos aspernatur distinctio similique perferendis.</div>
								<div class="line topmargin-sm nobottommargin"></div>
								<a href="#" class="social-icon si-borderless si-small si-facebook" title="Facebook">
									<i class="icon-facebook"></i>
									<i class="icon-facebook"></i>
								</a>
								<a href="#" class="social-icon si-borderless si-small si-twitter" title="Twitter">
									<i class="icon-twitter"></i>
									<i class="icon-twitter"></i>
								</a>
								<a href="#" class="social-icon si-borderless si-small si-instagram" title="Instagram">
									<i class="icon-instagram"></i>
									<i class="icon-instagram"></i>
								</a>
							</div>
						</div>
					</div>

					<div class="clear"></div>

					<div id="section-gallery" class="heading-block center topmargin page-section">
						<h2>Billeder</h2>
						<span>See alle de skønne billeder her:</span>
					</div>

					<div class="fslider flex-thumb-grid grid-12 bottommargin-lg" data-pagi="false" data-arrows="false" data-thumbs="true">
						<div class="flexslider">
							<div class="slider-wrap">
								<div class="slide" data-thumb="images/wedding/thumb/11.jpg"><img src="images/wedding/11.jpg" alt="Image"></div>
								<div class="slide" data-thumb="images/wedding/thumb/15.jpg"><img src="images/wedding/15.jpg" alt="Image"></div>
								<div class="slide" data-thumb="images/wedding/thumb/19.jpg"><img src="images/wedding/19.jpg" alt="Image"></div>
								<div class="slide" data-thumb="images/wedding/thumb/20.jpg"><img src="images/wedding/20.jpg" alt="Image"></div>
								<div class="slide" data-thumb="images/wedding/thumb/21.jpg"><img src="images/wedding/21.jpg" alt="Image"></div>
								<div class="slide" data-thumb="images/wedding/thumb/22.jpg"><img src="images/wedding/22.jpg" alt="Image"></div>
								<div class="slide" data-thumb="images/wedding/thumb/23.jpg"><img src="images/wedding/23.jpg" alt="Image"></div>
								<div class="slide" data-thumb="images/wedding/thumb/24.jpg"><img src="images/wedding/24.jpg" alt="Image"></div>
								<div class="slide" data-thumb="images/wedding/thumb/25.jpg"><img src="images/wedding/25.jpg" alt="Image"></div>
								<div class="slide" data-thumb="images/wedding/thumb/26.jpg"><img src="images/wedding/26.jpg" alt="Image"></div>
								<div class="slide" data-thumb="images/wedding/thumb/27.jpg"><img src="images/wedding/27.jpg" alt="Image"></div>
								<div class="slide" data-thumb="images/wedding/thumb/28.jpg"><img src="images/wedding/28.jpg" alt="Image"></div>
							</div>
						</div>
					</div>

					<div class="clear"></div>

					<div id="section-events" class="heading-block title-center topmargin-lg page-section">
						<h2>Plan for dagen</h2>
						<span>Liste med alle relevante aktiviteter i løbet af dagen:</span>
					</div>

					<div class="col_one_third">
						<div class="feature-box center media-box fbox-bg">
							<div class="fbox-media">
								<img src="images/wedding/events/cocktail.jpg" alt="Image">
							</div>
							<div class="fbox-desc">
								<h3>Gården<span class="subtitle">Se mere</span></h3>
							</div>
						</div>
					</div>

					<div class="col_one_third">
						<div class="feature-box center media-box fbox-bg">
							<div class="fbox-media">
								<img src="images/wedding/events/wedding.jpg" alt="Image">
							</div>
							<div class="fbox-desc">
								<h3>Ceremonien<span class="subtitle">Se mere</span></h3>
							</div>
						</div>
					</div>

					<div class="col_one_third col_last">
						<div class="feature-box center media-box fbox-bg">
							<div class="fbox-media">
								<img src="images/wedding/events/afterwedding.jpg" alt="Image">
							</div>
							<div class="fbox-desc">
								<h3>Morgenmad<span class="subtitle">Se mere</span></h3>
							</div>
						</div>
					</div>

					<div class="clear"></div>

					<div id="section-locations" class="heading-block title-center topmargin-lg page-section">
						<h2>Lokationer</h2>
						<span>Se kortet for oplysninger om adresser på gården og nærliggende hoteller</span>
					</div>

				</div>

				<div id="google-map1" style="height: 500px;" class="gmap"></div>

				<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
				<script type="text/javascript" src="js/jquery.gmap.js"></script>

				<script type="text/javascript">

					$('#google-map1').gMap({

					    address: 'Stoholm,  Denmark',
						maptype: 'ROADMAP',
						zoom: 13,
						markers: [
							{
							    address: 'Rørgårdsvej 2, Stoholm, Denmark',
								html: 'Maries gård'
							},
                            {
						    address: 'Søndergade 56, Stoholm, Denmark',
                            html: 'Stoholm vandrehjem'
                            },

                            {
                                address: 'Strandvejen 28, Skive, Denmark',
                                html: 'Hotel Strandtangen i Skive'
                            },

                            {
                                address: 'Søndre Boulevard, Skive, Denmark',
                                html: 'Best Western Hotel Gl. Skivehus'
                            }

                          
                        
							//{
							//	address: 'Crown Casino and Entertainment Complex, Melbourne, Australia',
							//	html: 'Wedding Ceremony'
							//},
							//{
							//	address: 'Federation Square, Melbourne, Australia',
							//	html: 'After Wedding Party'
							//}
						],
						doubleclickzoom: false,
						controls: {
							panControl: false,
							zoomControl: true,
							mapTypeControl: false,
							scaleControl: false,
							streetViewControl: false,
							overviewMapControl: false
						}

					});

				</script>

				<div class="section notopmargin footer-stick">
					<div class="container clearfix">

						<div id="section-rsvp" class="heading-block title-center topmargin page-section">
							<h2>Svar udbedes</h2>
							<span>Send venligst en SMS&amp; Kærligst.</span>
						</div>

						<%--<div id="wedding-rsvp-form-result" data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>

						<form id="wedding-rsvp-form" action="include/rsvp.php" method="post" class="bottommargin-lg divcenter" style="max-width: 500px;" role="form">

							<div class="form-process"></div>

							<div class="col_full">
								<input type="text" name="wedding-rsvp-name" id="wedding-rsvp-name" required="true" class="form-control required input-lg" placeholder="Your Full Name">
							</div>

							<div class="col_full">
								<input type="text" name="wedding-rsvp-email" id="wedding-rsvp-email" required="true" class="form-control required email input-lg" placeholder="Your E-mail Address">
							</div>

							<div class="col_full">
								<input type="number" min="1" max="10" name="wedding-rsvp-guests" id="wedding-rsvp-guests" class="form-control required input-lg" placeholder="No. of Guests">
							</div>

							<div class="col_full">
								<select name="wedding-rsvp-events" id="wedding-rsvp-events" required="true" class="form-control required input-lg">
									<option value="Wedding Ceremony">Wedding Ceremony</option>
									<option value="Reception">Reception</option>
									<option value="All Events">All Events</option>
									<option value="Not Attending">Not Attending</option>
								</select>
							</div>

							<div class="col_full hidden">
								<input type="text" id="wedding-rsvp-botcheck" name="wedding-rsvp-botcheck" value="" class="form-control" />
							</div>

							<div class="col_full nobottommargin">
								<button type="submit" name="wedding-rsvp-submit" id="wedding-rsvp-submit" class="button button-3d btn-block nomargin button-dark button-xlarge" value="submit">Submit</button>
							</div>

						</form>

						<script type="text/javascript">

							jQuery("#wedding-rsvp-form").validate({
								submitHandler: function(form) {
									jQuery('.form-process').fadeIn();
									jQuery(form).ajaxSubmit({
										target: '#wedding-rsvp-form-result',
										success: function() {
											jQuery('.form-process').fadeOut();
											jQuery(form).find('.form-control').val('');
											jQuery('#wedding-rsvp-form-result').attr('data-notify-msg', jQuery('#wedding-rsvp-form-result').html()).html('');
											SEMICOLON.widget.notifications(jQuery('#wedding-rsvp-form-result'));
										}
									});
								}
							});

						</script>--%>

					</div>
				</div>

			</div>

		</section><!-- #content end -->

		<!-- Footer
		============================================= -->
		<footer id="footer" class="dark">

			<!-- Copyrights
			============================================= -->
			<div id="copyrights">

				<div class="container center clearfix">

					Copyrights &copy; 2016 All Rights Reserved by Ambicon<br>
					<div class="copyright-links"><a href="http://ambicon.dk/">Ambicon.dk</a><%-- / <a href="http://twitter.com/smclweb">Twitter</a>--%></div>

				</div>

			</div><!-- #copyrights end -->

		</footer><!-- #footer end -->

	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- Footer Scripts
	============================================= -->
	<script type="text/javascript" src="js/functions.js"></script>

</body>
</html>