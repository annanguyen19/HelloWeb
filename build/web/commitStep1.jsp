<%-- 
    Document   : commitStep1
    Created on : Mar 25, 2019, 11:38:25 AM
    Author     : DELL
--%>
<%@page import="model.Account"%>
<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            DateFormat dateformat = new SimpleDateFormat("EEE, d MMM yyyy ");
            DateFormat dateformatSQL = new SimpleDateFormat("yyyy-MM-dd");
            Date now1 = Calendar.getInstance().getTime();
            Date now = Calendar.getInstance().getTime();
            ArrayList<Date> week = new ArrayList<Date>();
            for (int i = 0; i < 7; i++) {

                Calendar cal = Calendar.getInstance();
                week.add(now);
                cal.setTime(now);
                cal.add(Calendar.DATE, 1);
                Date next = (Date) cal.getTime();
                now = next;
            }
            ArrayList<Category> categories = (ArrayList<Category>) request.getAttribute("categories");
            Account account = (Account) session.getAttribute("account");
        %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Step 1</title>
        <script src="https://www.gstatic.com/firebasejs/3.6.1/firebase.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
                        <div id="topProfileUsernameContainer" class="flexColumn" title="<%=account.getEmail()%>">
                            <div id="topProfileMenuUsername"><%=account.getEmail()%></div>


                        </div>
                        <div id="topProfileAvatarOuterContainer">
                            <div id="topProfileAvatarInnerContainer">
                                
                                    <img id="userProfileWidgetImage" width="50" height="50" border="0" src="//static.stickk.com/avatars/tiny_default.png">
                                
                            </div>
                        </div>
                    </div>

                    <div id="accountSettingsContainer" class="topMenuItem">
                        <span class="settingsIcon"></span>
                        <div class="topSubMenu">
                            <ul>
                               
                                <li class="last">
                                    <a href="logout">Logout</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <script type="text/javascript">
                    $('#accountSettingsContainer').click(function ()
                    {
                        $('#accountSettingsContainer > div.topSubMenu').toggle();
                    });

                    $(document).mouseup(function (e)
                    {
                        var accountSettingMenu = $('#accountSettingsContainer');

                        if (!accountSettingMenu.is(e.target) && accountSettingMenu.has(e.target).length === 0)
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
                    <div class="container commitment_creation_container commitment_creation_container_step_1 commitment_creation_container_type_custom">
                        <div class="top"></div>
                        <div class="middle">
                            <div id='cForm_rightPane' class="type_image"></div>
                            <div id="cForm_leftPane">
                                <div class="commitmentCreationHeader">
                                    <span class="commitmentType">Custom Goal</span>
                                </div>
                                <form id ="GoalFormStep1" name="GoalFormStep1" method="POST" action="commit_step_1">
                                    <table width="500" cellspacing=0 cellpadding=0>
                                        <tr>
                                            <td width='275'  valign='top'>Create your own goal:</td>
                                            <td width='300'  valign=''><input width='227px' type="text" placholder="your goal name" name="goalName" required></td>
                                        </tr>
                                        <tr>
                                            <td width='275'  valign='top'>Commitment Type :</td>
                                            <td><input type ="radio" name ="CommitType" value="On-going"> On-going
                                                <input type ="radio" name ="CommitType" value="One-shot"> One-shot</td>
                                        </tr>
                                        <tr>
                                            <td>I commit to :<br>
                                                <span style='font-size:11px;font-weight:normal;'>(500 characters max)</span> </td>
                                            <td><textarea id="i_cCustomGoal"  style="width:233px;height:60px;"  onkeypress='return imposeMaxLength(this, 500);'  onblur='return imposeMaxLength(this, 500);'  name="GoalDescription"  ></textarea></td>
                                        </tr>
                                        <tr>
                                            <td>Commitment start</td>
                                            <td><select type="date" name="StartDate" id="StartDate">
                                                    <% for (Date d : week) {%>
                                                    <option value="<%=dateformatSQL.format(d)%>"><%=dateformat.format(d)%></option>
                                                    <%}%>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >My report day will be</td>
                                            <td><span id="StartReport" style="color: red; font-weight: bold"></span></td>

                                        <script type =text/javascript>

                                            $('#StartDate').on('change', function () {
                                                var weekday = new Array(7);
                                                weekday[0] = "Sunday";
                                                weekday[1] = "Monday";
                                                weekday[2] = "Tuesday";
                                                weekday[3] = "Wednesday";
                                                weekday[4] = "Thursday";
                                                weekday[5] = "Friday";
                                                weekday[6] = "Saturday";

                                                var x = new Date($('#StartDate').val());

                                                $('#StartReport').html('' + weekday[x.getDay()]);
                                            });

                                        </script>
                                        </tr>
                                        <tr>
                                            <td>Length of my commitment</td>
                                            <td><input type="text" name="numberOfWeeks">weeks</td>
                                        </tr>
                                        <tr>
                                            <td>Goal category</td>
                                            <td> <% for (Category c : categories) {%>
                                                <input type="radio" name="GoalCategory" value="<%=c.getId()%>"><%=c.getName()%> <br>   
                                                <% }%>
                                            </td>  

                                        </tr>
                                        
                                                       <tr>
                                                           <td><input type ="submit" value="Next Step"></td>
                                            </tr>
            
                                                   
                                    </table>
                                    
                                    <script>
                                        function doSubmit() {
                                            var x =document.forms["GoalFormStep1"]["numberOfWeeks"].value;
                                            if(isNaN(x)) alert("Length of your commitment must be an unsigned integer");
                                            else document.getElementById("GoalFormStep1").submit();
                                        }
                                    </script>

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
