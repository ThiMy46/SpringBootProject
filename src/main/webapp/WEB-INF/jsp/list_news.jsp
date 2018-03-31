

<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache"> 
    <meta http-equiv="Cache-Control" content="no-cache"> 
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
    <title>WELCOME TO ICSSE 2017</title>
    <link href="static/css/show_img.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="static/js/jquery-1.7.2.min.js"></script>
    <script src="static/js/Common.js" type="text/javascript"></script>
    <script src="static/js/PagingContent.js" type="text/javascript"></script>
    <link rel="shortcut icon" type="image/png" href="static/Images/logo.png" /><link href="static/css/lightbox.css" rel="stylesheet" type="text/css" />
    <script src="static/js/lightbox.min.js" type="text/javascript"></script>
    <link href="static/css/search_Article.css" rel="stylesheet" />
    <script language="javascript" type="text/javascript">
        function SearchProcess(event) {
            if (event.keyCode == 13) {
                OnSearch(document.getElementById('txtSearchArticle').value);
                return false;
            }
            return true;
        }
        function OnSearch(query) {
            PSCPortal.Services.CMS.SearchAndPaging(query, currentPage, OnSearchSuccess, OnSearchFailed);
        }

        function OnSearchSuccess(results, context, methodName) {
            var position = results.indexOf('_');
            totalRecords = results.substring(0, position);
            results = results.substring(position + 1);
            LoadContentAndPaging(results);
        }
        function OnSearchFailed(results, context, methodName) {
        }
        function retitleUrl(str) {
            str = str.replace(/^\s+|\s+$/g, ''); // trim
            str = str.toLowerCase();
            // remove accents, swap ñ for n, etc
            var from = "àáảãạăằắẳẵặâầấẩẫậđèéẻẽẹêềếểễệìíỉĩịòóỏõọôồốổỗộơờớởỡợùúủũụưừứửữựỳýỷỹỵ·/_,:;";
            var to = "aaaaaaaaaaaaaaaaadeeeeeeeeeeeiiiiiooooooooooooooooouuuuuuuuuuuyyyyy------";
            for (var i = 0, l = from.length ; i < l ; i++) {
                str = str.replace(new RegExp(from.charAt(i), 'g'), to.charAt(i));
            }
            str = str.replace(/[^a-z0-9 -]/g, '') // remove invalid chars
              .replace(/\s+/g, '-') // collapse whitespace and replace by -
              .replace(/-+/g, '-'); // collapse dashes
            return str;
        };

        function popunder() {
            $('a').not('[href^="http"],[href^="https"],[href^="mailto:"],[href^="#"]').each(function () {
                $(this).attr('href', function (index, value) {
                    if (value != undefined) {
                        var index = value.indexOf("Default.aspx");
                        if (index >= 0)
                            return value = "/" + value.substring(index, value.length);
                    }
                });
            });
            var articleId = '' != '' ? '' : '';
            var topicId = '' != '' ? '' : '';
            var moduleId = '' != '' ? '' : '';
            if (articleId != '') {
                if (window.history.state == null) {
                    if (articleId.indexOf("/") > -1)
                        articleId = articleId.substr(0, articleId.indexOf("/"));
                    window.history.replaceState({ ArticleId: articleId }, "ArticleId", "/ArticleId/" + articleId + "/" + retitleUrl(''));
                }
            }
            if (topicId != '') {
                if (window.history.state == null) {
                    if (topicId.indexOf("/") > -1)
                        topicId = topicId.substr(0, topicId.indexOf("/"));
                    window.history.replaceState({ TopicId: topicId }, "TopicId", "/TopicId/" + topicId + "/" + retitleUrl(''));
                }
            }
            
        }
    </script>
    <link href="static/css/main.css" rel="stylesheet" />
    <link href="static/css/mainPortlets.css" rel="stylesheet" />
</head>
<body class="body" onload='popunder();'>

<form name="form1" method="post" action="./" id="form1">
    <div class="gray">
    <div class="wrapper">
    <table cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse;">
<!--TOP PAGE-->
	<tr>
		<td colspan="2">
            <div id="pnTop">
    			<div id="pnTopDisplay" style="width:1000px;float:left">
    				<div id='ctl06_portlet_83a3e05a-eb99-4512-bd1a-5af90706fcf3' style="width:574px;float:left">
                        <div>
        					<div class="P_top">
                                <div class="P_logo">
                                    <div class="anh_logo"><img alt="" src="static/Images/BannerHoinghiquoctenew.jpg" style="width: 800px; height: 188px;" /><br />
                                    </div>
                                    <div class="name_ute">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Logo main-->
                    <div id='ctl06_portlet_6299a742-1878-4325-8536-4faefa3c1b4c' style="width:199px;float:right">
                        <div>
            			<div class="search_phong"><input class="bgsearch_phong" id="txtSearchArticle" onkeydown="return SearchProcess(event);" type="text" /><input class="btsearch_phong" onclick="OnSearch(document.getElementById('txtSearchArticle').value);" type="button" /> </div>
                        <div class="link_trang"><a href="http://gtsd2018.hcmute.edu.vn">http://gtsd2018.hcmute.edu.vn</a></div>

            		    </div>
                    </div>



                    <!--slider-->
                    <div id='ctl06_portlet_e28a24d5-befe-4213-a3d5-2e1ebcb2a71e' style="width:1000px;float:left">
                        <div>
            					
                            <link href="static/css/nivo-slider.css" rel="stylesheet" />
                            <link href="static/css/default.css" rel="stylesheet" />

                            <script src="static/js/jquery.nivo.slider.js"></script>




                                <div class="container" style="height:350px;">
                                    <div class="slider-wrapper theme-default">
                                        <div id="slider" class="nivoSlider">
                                          
                                        <a href="" target="_blank">
                                                <img src= "static/Images/HNQT3.jpg" title="" /></a>
                                    
                                        <a href="" target="_blank">
                                                <img src= "static/Images/HNQT2.jpg" title="" /></a>
                                    
                                        <a href="" target="_blank">
                                                <img src= "static/Images/HNQT1.jpg" title="" /></a>
                                    
                                        </div>
                                    </div>
                                </div>
                                <script>
                                $(document).ready(function(){
                                    $(".nivoSlider").nivoSlider({
                                        effect: 'random',
                                        slices: 25,
                                        boxCols: 8,
                                        boxRows: 4,
                                        animSpeed: 500,
                                        pauseTime: 3000,
                                        startSlide: 0,
                                        directionNav: true,
                                        controlNav: true,
                                        controlNavThumbs: false,
                                        pauseOnHover: true,
                                        manualAdvance: false,
                                        prevText: 'Prev',
                                        nextText: 'Next',
                                        randomStart: false,
                                        beforeChange: function () { },
                                        afterChange: function () { },
                                        slideshowEnd: function () { },
                                        lastSlide: function () { },
                                        afterLoad: function () { }
                                    });
                                    $('.nivoSlider').css('height', '350px');
                                    $('.nivoSlider img').css('height', '350px');
                                })
                               
                            </script>
                        </div>
                    </div>


                    <!--Menu-->
                    <div id='ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92' style="padding:10px 0px 0px 0px;width:1000px;float:left">
                        <div>
            					
                            <link href="static/css/Menu.Green.css" rel="stylesheet" type="text/css" />
                            <link href="static/css/Menu1.css" rel="stylesheet" type="text/css" />
                            <link href="static/css/Menu2.css" rel="stylesheet" type="text/css" />
                            <div id="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu" class="RadMenu RadMenu_Green rmSized" style="height:40px;z-index: 1; width: 100%;">
            						<ul class="rmRootGroup rmHorizontal">
            							<li class="rmItem rmFirst"><a href="/" class="rmLink rmRootLink"><span class="rmText">Home</span></a>
                                        </li>
                                        <li class="rmItem "><a href="speakers" class="rmLink rmRootLink"><span class="rmText">Keynote Speakers</span></a>
                                        </li>
                                        <li class="rmItem "><a href="program" class="rmLink rmRootLink"><span class="rmText">Program</span></a>
                                        </li>
                                        <li class="rmItem "><a href="venue_hotel" class="rmLink rmRootLink"><span class="rmText">VENUE &amp; HOTEL</span></a>
                                        </li>

                                        <li class="rmItem "><a href="gallery" class="rmLink rmRootLink"><span class="rmText">Gallery</span></a>
                                        </li>
                                        <li class="rmItem rmLast"><a href="contact" class="rmLink rmRootLink"><span class="rmText">Contact</span></a>
                                        </li>
                                        <li class="rmItem" style="float: right;"><a href="#" class="rmLink rmRootLink"><span class="rmText"></span></a>
                                        </li>
                                        <li class="rmItem rmLast" style="float: right;"><a href="login" class="rmLink rmRootLink"><span class="rmText">Login</span></a>
                                        </li>
            						</ul><input id="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu_ClientState" name="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu_ClientState" type="hidden" />
            					</div>

            			</div>
                    </div>


                    <!---->
                    <div id='ctl06_portlet_049ee2f3-c636-43d3-8804-68952b459d4a' style="float:left;">
                        <div>
            					

            			</div>
                    </div>
    
    			</div>
		   </div>
        </td>
	</tr>

<!--CENTER PAGE-->
    <tr valign="top">
        <!--LEFT CONTENT-->
		<td><div id="pnCenter">
            <div id="pnCenterDisplay" style="width:692px;float:left">
                
                <link href="static/css/TopicArticleDisplay.css" rel="stylesheet" type="text/css" />
                <link href="static/css/contact.css" rel="stylesheet" type="text/css" />
                <div class="topic_display">
                    <div class="title_topic">
                        <a style="text-transform: uppercase; font-weight: bold;" href="/?TopicId=31ca0f13-71be-4bd9-ad28-d3589a3cf6d2">
                            Latest news</a>
                    </div>
                    <div style="margin-top: 10px; width: 670px;">
                        <ul>
                                <c:forEach var="news1" items="${news}">
                                    <li>
                                        <div style="margin-left: 5px; margin: 15px 5px; float: left; width: 660px;">
                                            <p style="cursor: hand; width: 89px; height: 53px; float: left; margin-right: 5px;"></p>
                                            <h4>
                                                <a class="title_topicdisplay" href="#">
                                                    ${news1.title }  <span style="color:#666;font-size:13px;font-style:italic;">(<fmt:formatDate type = "date" value="${news1.date_create}"/>)</span></a>
                                            </h4>
                                            <h3 class="h3_content">
                                                
                                            </h3>
                                        </div>
                                    </li>
                                </c:forEach>
                                    
                        </ul>
                        <div style="clear: both; padding-top: 15px; float: right; padding-right: 5px;">
                            
                        </div>
                    </div>
                </div>
                <div id="ctl06_ctl01_rwUserLogin" style="display:none;">
                    <div id="ctl06_ctl01_rwUserLogin_C">

                    </div><input id="ctl06_ctl01_rwUserLogin_ClientState" name="ctl06_ctl01_rwUserLogin_ClientState" type="hidden" />
                </div>
                <script language="javascript" type="text/javascript">
                    var dialogMethod;
                    function CallWebMethodSuccess(results, context, methodName) {
                        switch (methodName) {
                            case "AllowWatchTopic":
                                {
                                    CheckUserWatchCallback(results, context, methodName);
                                }
                                break;
                        }
                    }

                    function CallWebMethodFailed(results, context, methodName) {
                        alert(results._message);
                    }
                    // check user login
                    function getQuerystringNameValue(name) {
                        // For example... passing a name parameter of "name1" will return a value of "100", etc.
                        // page.htm?name1=100&name2=101&name3=102

                        var winURL = window.location.href.toLowerCase();
                        var queryStringArray = winURL.split("?");
                        var queryStringParamArray = queryStringArray[1].split("&");
                        var nameValue = null;

                        for (var i = 0; i < queryStringParamArray.length; i++) {
                            queryStringNameValueArray = queryStringParamArray[i].split("=");

                            if (name.toLowerCase() == queryStringNameValueArray[0]) {
                                nameValue = queryStringNameValueArray[1];
                            }
                        }

                        return nameValue;
                    }
                    function CheckUserWatchTopic() {
                        PSCPortal.Services.CMS.AllowWatchTopic(getQuerystringNameValue("TopicId"), CallWebMethodSuccess);
                    }
                    var dialogMethod;
                    function CheckUserWatchCallback(results, context, methodName) {
                        if (!results) {
                            dialogMethod = "CheckUserWatchTopic";
                            var oWnd = $find("ctl06_ctl01_rwUserLogin");
                            oWnd.setSize(380, 180);
                            oWnd.setUrl("/Modules/CMS/UserLogin.aspx");
                            oWnd.set_title("Login");
                            oWnd.show();
                        }
                    }
                    function RadCheckUserWatchClose(sender, args) {
                        switch (dialogMethod) {
                            case "CheckUserWatchTopic":
                                {
                                    PSCPortal.Services.CMS.CheckUserWatchTopic(CallCheckUserWatchWebMethodSuccess);
                                }
                                break;
                        }
                    }
                    function CallCheckUserWatchWebMethodSuccess(results, context, methodName) {
                        if (!results)
                            window.history.back();
                    }
                    //end check user login

                    function pageLoad() {
                        CheckUserWatchTopic();
                    }
                </script>
                <style type="text/css">
                    .title_topic {
                        color: black;
                        font-weight: bold;
                        font-size: 14px;
                        text-transform: uppercase;
                        border-bottom: 1px dashed #0280bb;
                        padding: 5px 0px 5px 10px;
                        margin: 0px 10px;
                    }
                    .TelerikModalOverlay {
                        filter: alpha(opacity=95) !important; /*for IE 5.5+*/
                        opacity: .95 !important; /*for FF 2x, Opera 9x*/
                        -moz-opacity: .95 !important; /*for FF 1x*/
                        background-color: #666666 !important;
                    }
                </style>

            </div>
        </div>
    </td>

         <!--RIGHT CONTENT-->
         <td>
            <div id="pnRight">
                <div id="pnRightDisplay" style="padding:0px 0px 0px 6px;width:300px;float:left">
                    <!--LASTEST NEWS -->
				    <div id='ctl06_portlet_b633be64-8363-4e53-9952-6acf34d3e9e9' style="float:left;">
                        <div>
					
                            <style type="text/css">
                            </style>
                            <div class="thongbao_phong">
                                <div class="topictb_phong_blue">
                                    <h3>Latest news</h3>
                                    <a class="wobble-horizontal" href="list_news">
                                    <img src="static/Images/arrow_all_phong.png"></a>
                                </div>
                                <div class="listtb_phong">
                                    <ul>
                                        <c:forEach var="news1" items="${news}">
	                                        <li><a href="#">
	                                            <p>Create Date <fmt:formatDate type = "date" value="${news1.date_create}"/></p>
	                                            ${news1.title }</a></li>                                            
                                        </c:forEach>
                
                                    </ul>
                                </div><!--end listtb_phong-->
                            </div>

				        </div>
                    </div><!--END lastest news-->

                   
                    <!--KEY LINKS-->
                    <div id='ctl06_portlet_78439b67-a318-4ced-ac29-33d02da2a0fb' style="float:left;">
                        <div>
					       <table>
                                <tbody>
                                    <tr>
                                        <td style="text-align: left; width: 350px; vertical-align: middle; height: 40px; background-color: #002060;">&nbsp;<span style="font-size: 20px; color: #ffff00;"><strong>KEY LINKS</strong></span></td>
                                    </tr>
                                </tbody>
                            </table>
                            <br />
                            <span style="color: #002060;"><span style="font-size: 14px;"><a href="https://easychair.org/conferences/?conf=icsse2017" target="_blank"><strong>EASYCHAIR SUBMISSION SITE</strong></a></span><br />
                            <span style="font-size: 14px;"><a href="/Resources/Docs/SubDomain/icsse2017/ieeeconf_letter.doc"><br />
                            <strong>
                            PAPER FORMAT TEMPLATE DOWNLOAD</strong></a>&nbsp;<br />
                            </span></span><span style="font-size: 14px;"><br />
                            <strong><strong style="font-size: 14px;"></strong><strong style="font-size: 14px;"></strong><a href="/Resources/Docs/SubDomain/icsse2017/Instruction easychair_ICSSE2017.docx"><strong style="font-size: 14px;">EASYCHAIR&nbsp;</strong>SUBMISSION INSTRUCTION</a><br />
                            <br />
                            <a href="/Resources/Docs/SubDomain/icsse2017/Reviewer instruction.pdf">INSTRUCTION FOR REVIEWER</a><br />
                            <br />
                            <span style="font-size: 14px;"><a href="/Resources/Docs/SubDomain/icsse2017/ieeecopyrightform_ICSSE2017_paper.doc">THE IEEE COPYRIGHT FORM</a></span><br />
                            <br />
                            <br />
                            <br />
                            </strong></span>

				        </div>
                    </div><!--KEY LINKS-->
                </div>
            </div>
        </td>
	</tr>

<!--BOTTOM PAGE-->
    <tr>
		<td colspan="2">
            <div id="pnBottom">
    			<div id="pnBottomDisplay" style="background-attachment:scroll;width:1000px;height:110px">
    				<div id='ctl06_portlet_2209a561-f62a-47f4-a3aa-b238aab4ca84' style="background-color:blue;width:1000px;height:120px;float:left;clear:none">
                        <div>
    					   <div class="addute"><span style="font-size: 16px; color: #ffff00;">4th International Conference on Green Technology and Sustainable Development&nbsp;&nbsp;<br />
                            HCMC University of Technology and Education<br />
                            Add: No 1 Vo Van Ngan Street, Linh Chieu Ward, Thu Duc District, Ho Chi Minh City<br />
                            Tel: (+84.8) 37 221 223 - Ext: 8161 or 8443&nbsp;<br />
                            E-mail: gtsd2018@hcmute.edu.vn<br />
                            </span><br />
                            </div>

    			         </div>
                    </div>
    			</div>
            </div>
        </td>
	</tr>

    </table>
    </div>
    </div>
</form>
</body>
</html>
