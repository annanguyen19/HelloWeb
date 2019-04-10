<%-- 
    Document   : commitmentStep3
    Created on : Mar 25, 2019, 10:11:16 PM
    Author     : DELL
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Account"%>
<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    	<head>
            <% ArrayList<Account> accounts =(ArrayList<Account>) request.getAttribute("accounts");
            Account account = (Account) session.getAttribute("account");
            %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="language" content="en" />
		<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
		<!--<meta name="apple-itunes-app" content="app-id=776128765">-->
		<script type="text/javascript">
			var PORTAL_NAME = 'stickK';
			var PORTAL_CODE = 'stickk';
		</script>


		<script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>
		<link rel="manifest" href="/js/PNS/manifest.json">
		<script src="https://www.gstatic.com/firebasejs/3.6.1/firebase.js"></script>

		<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" type="text/css" href="//static.stickk.com/yii-assets/923d4c88/css/all.min.css" />
<link rel="stylesheet" type="text/css" href="//static.stickk.com/yii-assets/dfdfa539/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css" href="//static.stickk.com/yii-assets/70200827/c_eda1b6521b09f9f1ca26292815634e08.css" />
<style type="text/css">
/*<![CDATA[*/
#fixedBottomLinks{ display: none; }
/*]]>*/
</style>
<style type="text/css">
/*<![CDATA[*/
	.contractSummaryContainer
	{
		text-align: left;
	}
/*]]>*/
</style>
<script type="text/javascript" src="//static.stickk.com/yii-assets/70200827/jquery.min.js"></script>
<script type="text/javascript" src="//static.stickk.com/yii-assets/70200827/jquery.ba-bbq.min.js"></script>
<script type="text/javascript" src="/js/prettyPhoto_compressed_3.1.5/js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="/js/jquery.slick/1.5.9/slick.min.js"></script>
<script type="text/javascript" src="//static.stickk.com/yii-assets/70200827/jquery.yiiactiveform.js"></script>
<script type="text/javascript" src="//static.stickk.com/language/content_EN.js"></script>
<script type="text/javascript" src="/js/countryState_lib.js"></script>
<script type="text/javascript" src="//static.stickk.com/yii-assets/dfdfa539/jquery-ui.min.js"></script>
<script type="text/javascript" src="//static.stickk.com/yii-assets/dfdfa539/jquery-ui-i18n.min.js"></script>
<script type="text/javascript" src="/js/stickk.js"></script>
<script type="text/javascript" src="/js/contract/contractTypeAutoCompleter.js"></script>
<script type="text/javascript" src="/js/stickk-basics.js"></script>
<script type="text/javascript" src="/js/EditCard.js"></script>
<script type="text/javascript" src="/js/contract/calendar/calendar.js"></script>
<script type="text/javascript" src="/js/contract/calendar/lang/calendar-en.js"></script>
<script type="text/javascript" src="/js/contract/calendar/calendar-setup.js"></script>
<script type="text/javascript" src="/js/stickk-misc.js"></script>
<script type="text/javascript" src="/js/contract/user-forms.js"></script>

<title>Step 3t</title>
		<link rel="icon" href="/themes/stickk/favicon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="/themes/stickk/favicon.ico" type="image/x-icon" />
        <link href="//fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet" type="text/css">
		<link href="/manifest.json" rel="manifest">
		<meta name="apple-itunes-app" content="app-id=776128765" />

		
	</head>


	<body class="en">

		<div id="loggedInPage">

			<a id="mobileNavButton" href="#mobileMenu">
				<img src="/images/site/index/top_menu_mobile_btn.png" alt="menu" />
			</a>

			<nav id="mobileMenu" class="mm-menu mm-horizontal mm-ismenu mm-offcanvas mm-right">

<ul id="topMenuMobile">
<li><span><style>
	.profileWidgetMobileContainer
	{
		table-layout: fixed;
		width: 100%;
	}

	.profileWidgetMobileAvatar
	{
		width: 50px;
	}

	.profileWidgetMobileUsername
	{
		line-height: 1rem;
		overflow: hidden;
		padding-left: 1rem;
		white-space: normal;
		width: 100%;
		word-wrap: break-word;
	}

	.profileWidgetMobileFacebook
	{
		font-size: 0.625rem;
		padding-left: 1rem;
	}
</style>
<table class="profileWidgetMobileContainer">
	<tr>
		<td class="profileWidgetMobileAvatar" rowspan="2">
			<a href="https://www.stickk.com/commitment">
				<img id="userProfileWidgetImage" width="50" height="50" border="0" src="//static.stickk.com/avatars/tiny_default.png">
			</a>
		</td>
		<td class="profileWidgetMobileUsername">
			<%=account.getEmail()%>		</td>
	</tr>


</table>
</span></li>

<li><a href="logout">Logout</a></li>
</ul>
			</nav>

			<div id="loggedInHeaderSection" class="">
                <div id="headerContent" class="flexRow">
					<div id="logoContainer">
						<a id="logo" href="https://www.stickk.com/commitment" title="stickK"></a>
					</div>
					<div id="loggedInTopMenuContainer">
						<ul id="shortcutTopMenu" class="flexRow">
							<li class="topMenuItem" title="Home">
								<a id="commitmentsShortcut" class="topMenuIcon commitments" href="#"></a>
							</li>
							<li class="topMenuItem" title="Messages">
								<a id="messagesShortcut" class="topMenuIcon messages" href="#">
								</a>
							</li>
							<li class="topMenuItem" title="Friends">
								<a id="friendsShortcut" class="topMenuIcon friends" href="#">


								</a>
							</li>
						</ul>
						<div class="clear"></div>
					</div>
<div id="topProfileContainer" class="flexRow">
	<div id="topProfileUsernameContainer" class="flexColumn" title="ntngocanh19">
		<div id="topProfileMenuUsername"><%=account.getEmail()%>	</div>


	</div>
	<div id="topProfileAvatarOuterContainer">
		<div id="topProfileAvatarInnerContainer">
			<a href="https://www.stickk.com/commitment">
				<img id="userProfileWidgetImage" width="50" height="50" border="0" src="//static.stickk.com/avatars/tiny_default.png">
			</a>
		</div>
	</div>
</div>

					<div id="accountSettingsContainer" class="topMenuItem">
						<span class="settingsIcon"></span>
						<div class="topSubMenu">
							<ul>
								<li class="topSubmenuArrow"></li>
								

								<li class="last">
									<a href="logout">Logout</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<script type="text/javascript">
					$('#accountSettingsContainer').click(function()
					{
						$('#accountSettingsContainer > div.topSubMenu').toggle();
					});

					$(document).mouseup(function(e)
					{
						var accountSettingMenu = $('#accountSettingsContainer');

						if(!accountSettingMenu.is(e.target) && accountSettingMenu.has(e.target).length === 0)
						{
							$('#accountSettingsContainer > div.topSubMenu').hide();
						}
					});
				</script>
			</div>
<div id="tabSection">
	<div id="tabContentContainer">
			</div>
</div>
			<div id="loggedInMainSection" class="section">

<div class="mainContentContainer">
	<div class="container commitment_creation_container commitment_creation_container_step_3 commitment_creation_container_type_custom">
			<div class="top"></div>
			<div class="middle">
				<div id='cForm_rightPane' class="type_image"></div>
				<div id="cForm_leftPane">
	<div class="commitmentCreationHeader">
		<span class="commitmentType">Step 3</span>
	</div>

	<div class="txt12" style="position:relative;">


<div class='addRefereeMessage'>Choose a Referee - people who do are twice as successful!</div>
  </div>    
                                    <form action ="commit_step_3" method="POST" name="CommitStep3">
                                        <table>
                                            <tr>
                                                <td>Choose a referee</td>
                                                        <td><select name="refereeAccount">
                                                                <% for (Account a : accounts) {%>
                                                                <option  value="<%=a.getId()%>"><%=a.getEmail()%></option>
                                                            <%}%>
                                                    </select></td>
                                            </tr>
                                        </table>
                                                  
                                                           <input type ="submit" value="Finish your goal">
                                            
                                                   
                                    </form>
                                </div>
                        </div>
        </div>
</div>
                        </div>
                                                    <div id="footerSection" class="section flexColumn" >

				<div class="footerMiddleContent flexRow">
					<div class="footerLogosContainer">

						<a href="https://www.stickk.com" title="stickK">
							<img class="footerLogo" src="http://www.stickk.com/images/layouts/main/ftr_stickk_logo.png" />
						</a>

						<div class="footerCopyright">
							&copy; 2019 Modify by Anhntnhe130601 - All rights reserved -						</div>

						<div class="footerSnsContainer">


							<a class="footerSnsLink" href="http://www.facebook.com" target="_blank">
								<img class="footerSnsIcon" src="images/icon_facebook.svg" />
							</a>


							<a class="footerSnsLink" href="http://www.twitter.com" target="_blank">
								<img class="footerSnsIcon" src="images/icon_twitter.svg" />
							</a>


							<a class="footerSnsLink" href="" target="_blank">
								<img class="footerSnsIcon" src="images/icon_youtube.svg" />
							</a>


							<a class="footerSnsLink" href="https://www.instagram.com/stickk/" target="_blank">
								<img class="footerSnsIcon" src="images/icon_instagram.svg" />
							</a>


						</div>

						
					</div>

					<section class="footerMenuSection">
						<h1 class="footerMenuHeading">
							General						</h1>

						<div class="footerMenuContainer flexRow">
							<div class="footerMenuLeftColumn flexColumn">


								<a class="footerMenuItem" href="http://www.stickk.com/aboutus">About Us</a>


								<a class="footerMenuItem" href="https://stickk.zendesk.com/hc">Help Center</a>


								<a class="footerMenuItem" href="https://stickk.zendesk.com/hc/requests/new">Contact Us</a>


								<a class="footerMenuItem" href="http://www.stickk.com/tour">How it Works</a>


							</div>

							<div class="footerMenuRightColumn flexColumn">
								<a class="footerMenuItem" onclick="window.open('http://www.stickk.com/faq/tou','_blank','width=500,height=600,location,scrollbars');return false;" href="#">Terms Of Use</a>


								<a class="footerMenuItem" onclick="window.open('http://www.stickk.com/faq/privacy','_blank','width=500,height=600,location,scrollbars');return false;" href="#">Privacy Policy</a>


								<a id="languageLink" class="footerMenuItem" href="http://www.stickk.com/es">Español</a>


							</div>
						</div>
					</section>


					<section class="footerAppSection flexColumn">
						<a href="https://play.google.com/store/apps/details?id=com.summit.stickk" target="_blank">
							<img class="footerAppIcon" src="images/button_google_play_646.png" alt="Android App"  />
						</a>

						<a href="https://itunes.apple.com/us/app/stickk/id776128765" target="_blank">
							<img class="footerAppIcon" src="images/button_app_store_646.png" alt="iOS App" />
						</a>
					</section>


				</div>
			</div>
                </div>
            
    </body>
</html>
