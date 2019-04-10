<%-- 
    Document   : homeloggedIn
    Created on : Mar 25, 2019, 11:31:51 AM
    Author     : DELL
--%>


<%@page import="model.Goal"%>
<%@page import="model.Account"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html xmlns:og="http://opengraphprotocol.org/schema/" xmlns:fb="http://www.facebook.com/2008/fbml" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <% Account account = (Account) session.getAttribute("account");
            ArrayList<Goal> goals = (ArrayList<Goal>) request.getAttribute("goals");
            DateFormat dateformat = new SimpleDateFormat("EEE, d MMM yyyy ");
            DateFormat dateformatSQL = new SimpleDateFormat("yyyy-MM-dd");
            String nowString = dateformatSQL.format(Calendar.getInstance().getTime());
            Date now = dateformatSQL.parse(nowString);
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

        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" type="text/css" href="//static.stickk.com/yii-assets/d5545c30/listview/styles.css" />
        <link rel="stylesheet" type="text/css" href="//static.stickk.com/yii-assets/c127aeca/css/intlTelInput.css" />
        <link rel="stylesheet" type="text/css" href="//static.stickk.com/yii-assets/923d4c88/css/all.min.css" />
        <link rel="stylesheet" type="text/css" href="//static.stickk.com/yii-assets/dfdfa539/jquery-ui.min.css" />
        <link rel="stylesheet" type="text/css" href="//static.stickk.com/yii-assets/70200827/c_0e4961d27c4790232151841d59dbba22.css" />
        <style type="text/css">
            /*<![CDATA[*/
            #fixedBottomLinks{ display: none; }
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
        <script type="text/javascript" src="//static.stickk.com/yii-assets/c127aeca/js/intlTelInput.min.js"></script>

        <title>List of Commitment</title>
        <link rel="icon" href="/themes/stickk/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="/themes/stickk/favicon.ico" type="image/x-icon" />
        <link href="//fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet" type="text/css">
        <link href="/manifest.json" rel="manifest">
        <meta name="apple-itunes-app" content="app-id=776128765" />


    </head>


    <body class="en">

        <div id="loggedInPage">

            <a id="mobileNavButton" href="#mobileMenu">
                <img src="images/top_menu_mobile_btn.png" alt="menu" />
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
                                        <a href="list">
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
                        <a id="logo" href="list" title="stickK"></a>
                    </div>
                    <div id="loggedInTopMenuContainer">
                        <ul id="shortcutTopMenu" class="flexRow">
                            <li class="topMenuItem" title="Home">
                                <a id="commitmentsShortcut" class="topMenuIcon commitments selected" href="#"></a>
                            </li>
                            <li class="topMenuItem" title="Messages">
                                <a id="messagesShortcut" class="topMenuIcon messages" href="#">
                                </a>
                            </li>
                            <li class="topMenuItem" title="Friends">
                                <a id="friendsShortcut" class="topMenuIcon friends" href="#">


                                </a>
                            </li>
                            <li class="topMenuItem" title="Make a Commitment">
                                <a id="makeCommitmentShortcut" class="topMenuIcon makeCommitment" href="commit_step_1"></a>
                            </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <div id="topProfileContainer" class="flexRow">
                        <div id="topProfileUsernameContainer" class="flexColumn" title="ntngocanh19">
                            <div id="topProfileMenuUsername"><%=account.getEmail()%></div>


                        </div>
                        <div id="topProfileAvatarOuterContainer">
                            <div id="topProfileAvatarInnerContainer">
                                <a href="list">
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
            $('#accountSettingsContainer').click(function ()
            {
                $('#accountSettingsContainer > div.topSubMenu').toggle();
            });


                </script>
            </div>

            <div id="tabSection">
                <div id="tabContentContainer">
                    <a id="tabMakeCommitmentButton" class="stickkButton01 secondaryButton" href="commit_step_1">
                        Make a Commitment						<!--<img alt="Make new commitment" src="/images/common/button_make_new_commitment.png"/>-->
                    </a>


                </div>
            </div>
            <div id="loggedInMainSection" class="section">



                <div class="mainContentContainer commitmentsMainContainer">


                    <div class="membersMainContainer">

                        <div id="commitmentListContainerOut" class="verticalTabs">
                            <ul>
                                <li id="commitmentmyCommitmentsMenuTab" class="menuItem"><a href="#myCommitmentsMenuTab">My Commitments</a></li>
                            </ul>
                            <div id="myCommitmentsMenuTab" class="middleColumn fill">

                            </div><div id="commitmentListContainer" class="sliderTabs">


                                <div class="membersCommitmentsList list-view" id="yw0">
                                    <div class="items">
                                        <%for (Goal g : goals) {%>
                                        <%

                                            Date startdate = dateformatSQL.parse(g.getStartDate().toString());
                                            long days = Math.round((now.getTime() - startdate.getTime()) / (86400000 * 7));
                                            long week = (days >= 0) ? days + 1 : 0;
                                        %>
                                        <div class="commitmentRow">



                                            <div class="commitmentRowContent flexRow">


                                                <div class="commitmentItemLeftContainer">
                                                    <div class="container commitmentInfo commitmentTitle" colspan="2" style="padding-bottom: 0;">
                                                        <a href="javascript:void(showGoalDetail()">
                                                            <%=g.getTitle()%>				</a>
                                                    </div>

                                                    <div class="container commitmentInfo">


                                                        <div class="progressBarContainer">
                                                            <div class="nextReportDueText">
                                                                Week <%=week%> of <%=g.getLengthOfGoal()%>					</div>
                                                            <div class="progressbar">
                                                                <div class="progress" style="width: <%=week * 100 / g.getLengthOfGoal()%>%"></div>
                                                            </div>
                                                        </div>


                                                    </div>

                                                    <div class="container commitmentNextReport" style="padding-top: 0;">
                                                        <div class="Dueto" style="color:#4C4C4C;font-weight:700;margin-right:1.6rem">Finish on</div>
                                                        <div class="nextReportDueDateTime">
                                                            <div class="nextReportDueDate"><%=dateformat.format(g.getEndTime())%></div>
                                                            <div class="nextReportDueTime">12:00 AM ICT</div>
                                                        </div>			</div>
                                                </div>

                                                <div class="commitmentActions">
                                                    <a class="viewCommitmentButton" id ="GoalDetail"></a>
                                                </div>
                                                <script type="text/javascript">
                                                    $('#GoalDetail').on('click', function () {
                                                        var title =<%=g.getTitle()%>
                                                        var gType =<%=g.getGoalType()%>
                                                        var gdesc =<%=g.getDescription()%>
                                                        var gCate =<%=g.getCategory().getName()%>
                                                        var gStake =<%=g.getStake().getName()%>

                                                        var gDate =<%=g.getStartDate()%>
                                                        var gPaid =<%=g.getMoneyToPaid()%>
                                                        var greferee =<%=g.getReferee().getEmail()%>
                                                        $(#window).alert("Name:" + title + "\n" + "Type: " + gType
                                                                + "\n" + "Description: " + gdesc + "\n" + "Category: " + gCate
                                                                + "\n" + "Stake: " + gStake + +"\n" + "Amout at Stake: " + gPaid
                                                                + "\n" + "Start on: " + gDate + "\n" + "Refereee: " + greferee);
                                                    });
                                                </script>

                                            </div>
                                            <%}%>
                                        </div>
                                    </div></div>
                            </div>
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
                            <a class="footerMenuItem" onclick="window.open('http://www.stickk.com/faq/tou', '_blank', 'width=500,height=600,location,scrollbars');return false;" href="#">Terms Of Use</a>


                            <a class="footerMenuItem" onclick="window.open('http://www.stickk.com/faq/privacy', '_blank', 'width=500,height=600,location,scrollbars');return false;" href="#">Privacy Policy</a>


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
        
  


    <script>
        $(function () {
            $('#mobileMenu').mmenu({
                position: 'right'
            },
                    {
                        pageSelector: '#loggedInPage'
                    });
        });
    </script>
    <script type="text/javascript" src="/js/plupload/plupload.full.min.js"></script>
    <script type="text/javascript" src="/js/jquery.ui.plupload/jquery.ui.plupload.min.js"></script>
    <script type="text/javascript" src="/js/jQuery.mmenu-master/js/jquery.mmenu.min.all.js"></script>
    <script type="text/javascript" src="/js/jquery.cookie.js"></script>
    <script type="text/javascript" src="/js/jquery.tooltipster.min.js"></script>
    <script type="text/javascript" src="/js/stickk-basics.js"></script>
    <script type="text/javascript" src="/js/stickk-misc.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js"></script>
    <script type="text/javascript" src="/js/timezone_update_reload.js"></script>
    <script type="text/javascript" src="//static.stickk.com/yii-assets/d5545c30/listview/jquery.yiilistview.js"></script>
    


</body>
</html>