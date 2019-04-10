<%-- 
    Document   : commitStep2
    Created on : Mar 25, 2019, 2:54:56 PM
    Author     : DELL
--%>

<%@page import="model.Account"%>
<%@page import="model.Goal"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Stake"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>
		<link rel="manifest" href="/js/PNS/manifest.json">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	

		<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" type="text/css" href="//static.stickk.com/yii-assets/923d4c88/css/all.min.css" />
<link rel="stylesheet" type="text/css" href="//static.stickk.com/yii-assets/dfdfa539/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css" href="//static.stickk.com/yii-assets/70200827/c_eda1b6521b09f9f1ca26292815634e08.css" />
<% ArrayList<Stake> stakes = (ArrayList<Stake>) request.getAttribute("stakes");
    Goal goal =(Goal) session.getAttribute("goal");
    Account account = (Account) session.getAttribute("account");
%>
<style type="text/css">
/*<![CDATA[*/
#fixedBottomLinks{ display: none; }
/*]]>*/
</style>
<style type="text/css">
/*<![CDATA[*/
.commitment_creation_container .existingCreditCardNumber
{
	display: block;
	width: 21rem;
}

#newCCNo
{
   width: 19rem;
}

#newCvv
{
	width: 12rem;
}

#contractStakesNewCreditCardExpiryDateContainer
{
	white-space: nowrap;
}

#Zipcode
{
	width: 17rem;
}
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

<script type="text/javascript" src="//static.stickk.com/yii-assets/70200827/jquery.yiiactiveform.js"></script>
<script type="text/javascript" src="//static.stickk.com/language/content_EN.js"></script>

<script type="text/javascript" src="//static.stickk.com/yii-assets/dfdfa539/jquery-ui.min.js"></script>
<script type="text/javascript" src="//static.stickk.com/yii-assets/dfdfa539/jquery-ui-i18n.min.js"></script>


<title>Step 2</title>
		<link rel="icon" href="/themes/stickk/favicon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="/themes/stickk/favicon.ico" type="image/x-icon" />
        <link href="//fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet" type="text/css">
		<link href="/manifest.json" rel="manifest">
		<meta name="apple-itunes-app" content="app-id=776128765" />

<!--		<script>
			// Initialize Firebase
			var config = {
				apiKey: "AIzaSyCyWQZiqca32iwQtubRzDn79LyLcJQ8UVk",
				messagingSenderId: "874025843654"
			};
			firebase.initializeApp(config);
			const messaging = firebase.messaging();
		</script>-->
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
<li><a href="https://www.stickk.com/aboutus">About Us</a></li>
<li><a href="https://www.stickk.com/tour">How it Works</a></li>
<li><a href="https://stickk.zendesk.com/hc">Help Center</a></li>
<li><a href="https://stickk.zendesk.com/hc/requests/new">Contact Us</a></li>
<li><a href="https://www.stickk.com/profile">Account Settings</a></li>
<li><a href="https://www.stickk.com/logout">Logout</a></li>
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
								<a id="commitmentsShortcut" class="topMenuIcon commitments" href="https://www.stickk.com/commitment"></a>
							</li>
							<li class="topMenuItem" title="Messages">
								<a id="messagesShortcut" class="topMenuIcon messages" href="https://www.stickk.com/messages">
								</a>
							</li>
							<li class="topMenuItem" title="Friends">
								<a id="friendsShortcut" class="topMenuIcon friends" href="https://www.stickk.com/friends/inbox">


								</a>
							</li>
						</ul>
						<div class="clear"></div>
					</div>
<div id="topProfileContainer" class="flexRow">
	<div id="topProfileUsernameContainer" class="flexColumn" title="<%=account.getEmail()%>">
		<div id="topProfileMenuUsername"><%=account.getEmail()%></div>


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
								<li class="first">
									<a href="https://www.stickk.com/aboutus">About Us</a>
								</li>
								<li>
									<a href="https://www.stickk.com/tour">How it Works</a>
								</li>
								<li>
									<a href="https://stickk.zendesk.com/hc">Help Center</a>
								</li>
								<li>
									<a href="https://stickk.zendesk.com/hc/requests/new">Contact Us</a>
								</li>


								<li class="divider">
									<a href="/myCampaigns/index">My Campaigns</a>
								</li>


								<li class="divider">
									<a href="https://www.stickk.com/profile">Account Settings</a>
								</li>

								<li class="last">
									<a href="https://www.stickk.com/logout">Logout</a>
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
	<div class="container commitment_creation_container commitment_creation_container_step_2 commitment_creation_container_type_custom">
			<div class="top"></div>
			<div class="middle">
				<div id="cForm_leftPane">
  <div class="commitmentCreationHeader">
    <span class="commitmentType">Step 2: Creating your goal </span>
  </div>
                                    <form action="commit_step_2" method="POST" name="CommitStep2Form">
                                        <table>
                                            <tr>
                                                <td>Recipient of Stakes:</td>
                                                <td>
                                                    <% for (Stake s :stakes) { %>
                                                    <input type="radio" name="StakeType" id="StakeType" value="<%=s.getId()%>"><%=s.getName()%>&nbsp;
                                                
                                                    <%}%>
                                                </td>
                                                            
                                            </tr>
                                             </table>
                                            <div id ="ContentStakeType" style="color:red"></div>
                                            <script type="text/javascript">
                                               $('input[type=radio][name=StakeType]').on('change', function() {
     
                                                    if($(this).val()=='1') $('#ContentStakeType').html('stickK will randomly select a charity from our pre-defined list to receive your stakes');
                                                    else if($(this).val()=='2') $('#ContentStakeType').html('At the end of your contract, we’ll send any money you lose to the person of your choice');
                                                    else if($(this).val()=='3') $('#ContentStakeType').html('At the end of your contract, any money you lose will go to stickK. Thanks for helping us keep the lights on!');
                                                        });
                                                
                                            </script>
                                       
                                                <table>
                                                    <tr>
                                                        <td> Ammount at stake</td>
                                                        <td><input type="text" name="AmountPerWeek" id="amountperweek" onchange ="UpdateTotalAmount()"placeholder="Enter an amount"> x <%=goal.getLengthOfGoal()%> week(s)</td>
                                                    </tr>
                                                </table>
                                                   <p><strong>You will be billed </strong> <strong>$<span id="totalAtStake" class="dorange">0.00</span></strong> for any reporting period if:     <br /><br /> 
                                                       1) You report that you were unsuccessful; or<br /> 
                                                       2) Your Referee reports that you were unsuccessful; or<br /> 
                                                       3) You fail to make a required report by the end of the second day (11:59 P.M.) following a required reporting day.</p>
                                                   <br /><br />All Forfeited Stakes will be sent to your designated recipient (e.g. Charity, Friend ).
                                                   <table>
                                                       <tr>
                                                           <td><input type ="submit" value="Next Step"></td>
                                            </tr>
            
                                                   </table>
                                                
                                    </form>
                                
                                </div>

                        </div>
        </div>
</div>
                        </div>
                </div>
                                                    <script type="text/javascript">
                                                        
                                                            $('#amountperweek').on('change', function() {
                                                                var x = $('#amountperweek').val();
                                                                $('#totalAtStake').html(''+x);
                                                            });
                                                            
                                                    </script>
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
    </body>
</html>
