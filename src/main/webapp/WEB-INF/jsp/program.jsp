

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
		<td>
            <div id="pnCenter">
            <div id="pnCenterDisplay" style="width:692px;float:left">
                
                <link href="static/css/TopicArticleDisplay.css" rel="stylesheet" type="text/css" />
                <link href="static/css/Contact.css" rel="stylesheet" type="text/css" />

                <script type="text/javascript">
                    function OnSendArticle() {
                        var result = window.showModalDialog("/Modules/CMS/SendArticle.aspx", document.URL, "dialogHeight: 320px; dialogWidth: 450px;");
                    }
                    function OnBack() {
                        window.history.back();
                    }
                    function OnGoToHead() {
                        window.moveTo(0, 0);
                    }

                </script>
                <script type="text/javascript">

                    $(document).ready(function () {

                        $(".slidingDiv").hide();
                        $(".show_hide").show();

                        $('.show_hide').click(function () {
                            $(".slidingDiv").slideToggle();
                        });

                    });

                </script>
                

                <div class="bg_display">
                    <div class="display" style="float: left; width: 100%;">
                        <div class="title_display">
                             <a style='color:#666;' href=/?TopicId=c285e833-e0db-45ea-a376-7417abc02a98>program </a> 
                        </div>
                        <div style="margin-top: 10px;">
                            <div style="margin-left: 5px; margin-bottom: 10px;">
                                <div class="ct_tin_display">
                                    <div class="articleTitle">
                                        <a href="/?ArticleId=77551148-3bae-4c1f-96bd-ea085b8d9ecf">OFFICIAL PROGRAM OF ICSSE2017 </a>
                                    </div>
                                    <div style="float:left;width: 100%; margin: 5px 5px 5px 10px;display: none;" >
                                        <span style="font-weight: bold;font-style: italic">Tác giả </span>:
                                    </div>
                                   
                                    <div class="articleContent">
                                        <div style="text-align: center;">
                                            <strong style="color: #c00000; font-size: large; text-align: left;">
                                                <span style="font-size: 22px;"><br />
                                                    <span style="font-size: 28px;">OFFICIAL <strong style="color: #c00000; font-size: large; text-align: left;"><span style="font-size: 28px;">PROGRAM OF</span></strong>&nbsp;ICSSE 2017&nbsp;<br /><br />
                                                    </span>
                                                </span>
                                            </strong>
                                        </div>
                                        <span style="font-size: 18px;"></span><br /><br />
                                        <p style="margin: 0px;"><span style="margin: 0px; font-size: 22pt; color: #1a6eff;"><strong>PROGRAM OUTLINE</strong></span></p>
                                        <p style="margin: 0px;"><strong><span style="margin: 0px; font-size: 16px; color: #1a6eff;">&nbsp;</span></strong></p>
                                        <p style="margin: 0px;">
                                            <strong><span style="margin: 0px; font-size: 12pt; color: #1a6eff;">IMPORTANT INFORMATION FOR ALL PARTICIPANTS<br />
                                            <br /></span></strong>
                                            <span style="margin: 0px; line-height: 110%; font-size: 16px; color: black;">Please wear your ICSSE 2017 Conference name tag at all times to gain admission to presentation in break-out rooms.<br /><br />
                                            </span>
                                            <span style="margin: 0px; line-height: 110%; font-size: 16px; color: black;">Name tags and tickets are required for Conference Gala Banquet.<br /><br />
                                            </span>
                                            <span style="margin: 0px; line-height: 110%; font-size: 16px; color: black;">If you need any formation about the conference, please ask the student helpers or committee members for assistance. </span>
                                        </p>
                                        <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; line-height: 110%; font-size: 9pt; color: black;">&nbsp;</span></p>
                                        <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; line-height: 110%; font-size: 9pt; color: black;">&nbsp;</span></p>
                                        <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; line-height: 110%; font-size: 9pt; color: black;">&nbsp;</span></p>
                                        <p style="margin: 0px; line-height: 110%;">
                                            <strong>
                                            <span style="margin: 0px; line-height: 110%; font-size: 12pt;"><span style="color: #ff0000;">FRIDAY, JULY 21</span><sup><span style="color: #ff0000;">st</span></sup><span style="color: #ff0000;"> 2017</span>
                                            </span></strong>
                                        </p>
                                        <table width="646" style="margin: 0px; border: medium; width: 484.4pt; border-collapse: collapse;" border="1" cellspacing="0" cellpadding="0">
                                            <tbody>
                                                <tr>
                                                    <td valign="top" style="border-width: 1px 0px; border-style: solid none; border-color: #002060 #000000; margin: 0px; padding: 0.7pt 2.9pt 0in; width: 106.4pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #1a6eff;">08:00am - 05:00pm</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 1px 0px; border-style: solid none; border-color: #002060 #000000; margin: 0px; padding: 0.7pt 2.15pt 0in; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Registration</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; line-height: 110%; color: #002060;">Venue: Conference Foyer , 6<sup><span style="font-size: 13px;">th</span></sup> Floor, The Center Building</span></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 106.4pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #1a6eff;">09:00am - 09:20am</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Opening Ceremony</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; line-height: 110%; color: #002060;">Venue: Room No. A1-602, 6<sup><span style="font-size: 13px;">th</span></sup> Floor, The Center Building</span></p>
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Introduction</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Opening Welcome</span></strong></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 106.4pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #1a6eff;">09:20am - 10:20am</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Keynote Address 1</span></strong></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 106.4pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #1a6eff;">10:20am - 10:40am</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Morning Tea</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; line-height: 110%; color: #002060;">Venue: Conference Foyer, 6<sup><span style="font-size: 13px;">th</span></sup> Floor, The Center Building</span></p>
                                                    </td>
                                                </tr>
                                                <tr style="height: 44pt;">
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 106.4pt; height: 44pt; background-color: transparent;" rowspan="3">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #1a6eff;">10:40am - 12:00am</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="background: #ffffff; border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 191.5pt; height: 44pt;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Breakout session No.1 (BS-1)</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; line-height: 110%; color: #002060;">Topic: </span></em><strong><em><span style="margin: 0px; line-height: 110%; color: red;">Intelligent Healthcare System</span></em></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; line-height: 110%; color: #002060;">Venue: Room A1-1201</span></em></p>
                                                    </td>
                                                    <td valign="top" style="background: #e5dfec; border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 186.5pt; height: 44pt;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Breakout session No.2 (BS-2)</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; line-height: 110%; color: #002060;">Topic: </span></em><strong><em><span style="margin: 0px; line-height: 110%; color: red;">Fuzzy Systems and Applications</span></em></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; line-height: 110%; color: #002060;">Venue: Room A1-1202</span></em></p>
                                                    </td>
                                                </tr>
                                                <tr style="height: 44pt;">
                                                    <td valign="top" style="background: #e5dfec; border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 191.5pt; height: 44pt;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Breakout session No.3 (BS-3)</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; line-height: 110%; color: #002060;">Topic: </span></em><strong><em><span style="margin: 0px; line-height: 110%; color: red;">Power and Energy Systems</span></em></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; line-height: 110%; color: #002060;">Venue: Room A1-1203</span></em></p>
                                                    </td>
                                                    <td valign="top" style="background: #ffffff; border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 186.5pt; height: 44pt;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Breakout session No.4 (BS-4)</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; line-height: 110%; color: #002060;">Topic: </span></em><strong><em><span style="margin: 0px; line-height: 110%; color: red;">Computer Science and Image Processing</span></em></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; line-height: 110%; color: #002060;">Venue: Room A1-1204</span></em></p>
                                                    </td>
                                                </tr>
                                                <tr style="height: 1.35pt;">
                                                    <td valign="top" style="background: #ffffff; border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 191.5pt; height: 1.35pt;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Breakout session No.5 (BS-5)</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; line-height: 110%; color: #002060;">Topic: </span></em><strong><em><span style="margin: 0px; line-height: 110%; color: red;">Mechatronics Engineering</span></em></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; line-height: 110%; color: #002060;">Venue: Room A1-1206</span></em></p>
                                                    </td>
                                                    <td valign="top" style="background: #e5dfec; border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 186.5pt; height: 1.35pt;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Breakout session No.6 (BS-6)</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; line-height: 110%; color: #002060;">Topic: </span></em><strong><em><span style="margin: 0px; line-height: 110%; color: red;">Mechanical and Automotive Engineering </span></em></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; line-height: 110%; color: #002060;">Venue: Room A1-1207</span></em></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 106.4pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #1a6eff;">12:00am - 01:30am</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Lunch break</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; line-height: 110%; color: #002060;">Venue: Conference Foyer, 6<sup><span style="font-size: 13px;">th</span></sup> Floor, The Center Building</span></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 106.4pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #1a6eff;">01:30pm - 03:30pm</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Breakout sessions (BS-1 to BS-6) </span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; line-height: 110%; color: #002060;">Topics and Venues: Same as morning</span></em></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 106.4pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #1a6eff;">03:30pm - 03:45pm</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Afternoon Tea</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; line-height: 110%; color: #002060;">Venue: At session sites, respectively</span></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 106.4pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #1a6eff;">03:45pm - 05:25pm</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Breakout sessions (BS-1 to BS-6) </span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; line-height: 110%; color: #002060;">Topics and Venues: Same as morning</span></em></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 106.4pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #1a6eff;">06:00pm - 08:00pm</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; color: #002060;">Welcome dinner</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; line-height: 110%; color: #002060;">Venue: Kim Dung Restaurant, No. 02, Dang Van Bi Street, Thu Duc District, HCMC</span></p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <span style="margin: 0px; font-size: 22pt; color: #1a6eff;"> <br clear="all" style="break-before: page;" />
                                        </span>
                                        <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; font-size: 12pt;"><span style="color: #ff0000;"><br />
                                        SATURDAY, JULY 22</span><sup><span style="color: #ff0000;">nd</span></sup><span style="color: #ff0000;"> 2017</span></span></strong>
                                        </p>
                                        <table width="649" style="margin: 0px; border: medium; width: 487.1pt; border-collapse: collapse;" border="1" cellspacing="0" cellpadding="0">
                                            <tbody>
                                                <tr>
                                                    <td valign="top" style="border-width: 1px 0px; border-style: solid none; border-color: #002060 #000000; margin: 0px; padding: 0.7pt 2.9pt 0in; width: 109.1pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #1a6eff;">09:00am - 09:20am</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 1px 0px; border-style: solid none; border-color: #002060 #000000; margin: 0px; padding: 0.7pt 2.15pt 0in; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #002060;">Registration</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; color: #002060;">Venue: Conference Foyer, 6<sup><span style="font-size: 13px;">th</span></sup> Floor, The Center Building</span></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 109.1pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #1a6eff;">09:20am - 10:20am</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #002060;">Keynote Address 2</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; color: #002060;">Venue: Room No. A1-602, 6<sup><span style="font-size: 13px;">th</span></sup> Floor, The Center Building</span></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 109.1pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #1a6eff;">10:20am - 10:40am</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #002060;">Morning Tea</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; color: #002060;">Venue: Conference Foyer , 6<sup><span style="font-size: 13px;">th</span></sup> Floor, The Center Building</span></p>
                                                    </td>
                                                </tr>
                                                <tr style="height: 44pt;">
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 109.1pt; height: 44pt; background-color: transparent;" rowspan="3">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #1a6eff;">10:40am - 12:00am</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="background: #ffffff; border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 191.5pt; height: 44pt;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #002060;">Breakout session No.7 (BS-7)</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; color: #002060;">Topic: </span></em><strong><em><span style="margin: 0px; color: red;">Automation Engineering</span></em></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; color: #002060;">Venue: Room A1-1201</span></em></p>
                                                    </td>
                                                    <td valign="top" style="background: #e5dfec; border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 186.5pt; height: 44pt;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #002060;">Breakout session No.8 (BS-8)</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; color: #002060;">Topic:</span></em><strong><em><span style="margin: 0px; color: red;"> Communication and Electronics Engineering</span></em></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; color: #002060;">Venue: Room A1-1202</span></em></p>
                                                    </td>
                                                </tr>
                                                <tr style="height: 44pt;">
                                                    <td valign="top" style="background: #e5dfec; border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 191.5pt; height: 44pt;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #002060;">Breakout session No.9 (BS-9)</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; color: #002060;">Topic: </span></em><strong><em><span style="margin: 0px; color: red;">Industrial Engineering and Management </span></em></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; color: #002060;">Venue: Room A1-1204</span></em></p>
                                                    </td>
                                                    <td valign="top" style="background: #ffffff; border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 186.5pt; height: 44pt;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #002060;">Breakout session No.10 (BS-10)</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; color: #002060;">Topic: </span></em><strong><em><span style="margin: 0px; color: red;">Applied Physics and Thermal Engineering</span></em></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; color: #002060;">Venue: Room A1-1206</span></em></p>
                                                    </td>
                                                </tr>
                                                <tr style="height: 1.35pt;">
                                                    <td style="background: #ffffff; border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 191.5pt; height: 1.35pt;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #002060;">Breakout session No.11 (BS-11)</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; color: #002060;">Topic: </span></em><strong><em><span style="margin: 0px; color: red;">Electrical Engineering</span></em></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; color: #002060;">Venue: Room A1-1207</span></em></p>
                                                    </td>
                                                    <td style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 186.5pt; height: 1.35pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; color: #002060;">&nbsp;</span></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 109.1pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #1a6eff;">12:00am - 01:30pm</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #002060;">Lunch break</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; color: #002060;">Venue: Conference Foyer, 6<sup><span style="font-size: 13px;">th</span></sup> Floor, The Center Building</span></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 109.1pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #1a6eff;">01:30pm - 03:30pm</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #002060;">Breakout sessions (BS-7 to BS-11) </span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; color: #002060;">Topics and Venues: Same as morning</span></em></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 109.1pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #1a6eff;">03:30pm - 03:45pm</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #002060;">Afternoon Tea</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; color: #002060;">Venue: At session sites, respectively</span></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 109.1pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #1a6eff;">03:45pm - 05:25pm</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #002060;">Breakout sessions (BS-7 to BS-11) </span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; color: #002060;">Topics and Venues: Same as morning</span></em></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.9pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 109.1pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #1a6eff;">06:00pm - 08:00pm</span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 0px 0px 1px; border-style: none none solid; border-color: #000000 #000000 #002060; margin: 0px; padding: 0.7pt 2.15pt 0in; border-image-source: none; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; width: 5.25in; background-color: transparent;" colspan="2">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #002060;">Gala Banquet dinner</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; color: #002060;">Venue: Sesan Restaurant, No. 14, Einstein Street, Binh Tho Ward, Thu Duc District, &nbsp;HCMC</span></p>
                                                    <p style="margin: 0px; line-height: 110%;"><em><span style="margin: 0px; color: #002060;">The best paper awards to be delivered at the Gala Banquet</span></em></p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; line-height: 110%; font-size: 22pt; color: #1a6eff;">&nbsp;</span></p>
                                        <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; font-size: 12pt; color: #1a6eff;">&nbsp;</span></strong></p>
                                        <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; font-size: 12pt; color: #1a6eff;"></span></strong></p>
                                        <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; line-height: 110%; font-size: 12pt;"><span style="color: #ff0000;">SUNDAY, JULY 23</span><sup><span style="color: #ff0000;">rd</span></sup><span style="color: #ff0000;"> 2017</span></span></strong></p>
                                        <table width="649" style="margin: 0px; border: medium; width: 487.1pt; border-collapse: collapse;" border="1" cellspacing="0" cellpadding="0">
                                            <tbody>
                                                <tr>
                                                    <td valign="top" style="border-width: 1px 0px; border-style: solid none; border-color: #002060 #000000; margin: 0px; padding: 0.7pt 2.9pt 0in; width: 109.1pt; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #1a6eff;">08:00am </span></strong></p>
                                                    </td>
                                                    <td valign="top" style="border-width: 1px 0px; border-style: solid none; border-color: #002060 #000000; margin: 0px; padding: 0.7pt 2.15pt 0in; width: 5.25in; background-color: transparent;">
                                                    <p style="margin: 0px; line-height: 110%;"><strong><span style="margin: 0px; color: #002060;">Ho Chi Minh City tour</span></strong></p>
                                                    <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; color: #002060;">Venue: Ho Chi Minh City</span></p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <span style="margin: 0px; line-height: 110%; font-size: 22pt; color: #1a6eff;"> <br />
                                            <p style="margin: 0px; line-height: 110%;"><span style="margin: 0px; line-height: 110%; font-size: 22pt; color: #1a6eff;">&nbsp;</span></p>
                                            <p style="margin: 0px;"><span style="margin: 0px; font-size: 22pt; color: #1a6eff;"><strong>DETAILED CONFERENCE PROGRAM</strong></span></p>
                                            <p style="margin: 0px;"><strong><span style="margin: 0px; font-size: 12pt; color: red;">&nbsp;</span></strong></p>
                                            <p style="margin: 0px; line-height: 115%;"><strong><span style="margin: 0px; line-height: 115%; font-size: 12pt; color: red;">FRIDAY, JULY 21<sup>st</sup> 2017</span></strong></p>
                                            <p style="background: #c6d9f1; margin: 0px; line-height: 115%;"><strong><span style="margin: 0px; font-size: 16px; color: #1a6eff;">08:00am</span></strong><span style="margin: 0px; color: #1a6eff;"><span style="margin: 0px; font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp; </span><strong><span style="font-size: 16px;">Registration</span></strong></span></p>
                                            <p style="margin: 0px; line-height: 115%;"><span style="margin: 0px; font-size: 16px; color: #1a6eff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: #002060;">Venue: Conference Foyer, 6<sup>th</sup> Floor, The Center Building</span></p>
                                            <p style="background: #c6d9f1; margin: 0px; line-height: 115%;"><strong><span style="background: #c6d9f1; margin: 0px; font-size: 16px; color: #1a6eff;">09:00am</span></strong><span style="background: #c6d9f1; margin: 0px; color: #1a6eff;"><span style="margin: 0px; font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp; </span><strong><span style="font-size: 16px;">Opening Ceremony</span></strong></span></p>
                                            <p style="margin: 0px; line-height: 115%;"><strong><span style="margin: 0px; font-size: 16px; color: black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: #002060;">Venue: </span><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: #002060;">Room No. A1-602, 6<sup>th</sup> Floor, The Center Building</span></p>
                                            <p style="margin: 0px; line-height: 115%;"><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: green;">Introduction</span></strong></p>
                                            <p style="margin: 0px; line-height: 115%; text-align: justify;"><strong><em><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;"><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Dr. Nguyen Vu Lan</span></em></strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">, Deputy Head of International Affairs Office, HCMUTE</span></p>
                                            <p style="margin: 0px; line-height: 115%; text-align: justify;"><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: green;">Opening Welcome</span></strong></p>
                                            <p style="margin: 0px; line-height: 115%; text-align: justify;"><strong><em><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;"><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Prof. Dr. Do Van Dung</span></em></strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">, President, <span style="margin: 0px;">HCMUTE</span>, Vietnam</span></p>
                                            <p style="margin: 0px; line-height: 115%; text-align: justify;"><strong><em><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;"><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="margin: 0px;">Prof. Dr. Yo-Ping Huang</span></span></em></strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">,<strong><em> </em></strong></span><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">National Taipei University of Technology, Taiwan</span></p>
                                            <p style="margin: 0px; line-height: 115%; text-align: justify;"><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;"><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>President, Taiwan Association of Systems Science and Engineering<br />
                                            </span><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">Chair, IEEE SMC Taipei Chapter, Taiwan</span></p>
                                            <p style="margin: 0px; line-height: 115%; text-align: justify;"><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: green;">Guests of Honors</span></strong></p>
                                            <p style="margin: 0px; line-height: 115%; text-align: justify;"><strong><em><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;"><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Prof. Dr. Bui Van Ga</span></em></strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">, Deputy Minister, Ministry of Education and Training, Vietnam</span></p>
                                            <p style="margin: 0px; line-height: 115%; text-align: justify;"><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: green;">Vote of Thanks </span></strong></p>
                                            <p style="margin: 0px; line-height: 115%; text-align: justify;"><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;"><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><em>Dr. Ngo Van Thuyen</em></span></strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">, University Council Chairman, <span style="margin: 0px;">HCMUTE</span>, Vietnam</span></p>
                                            <p style="background: #c6d9f1; margin: 0px; line-height: 115%;"><strong><span style="margin: 0px; font-size: 16px; color: #1a6eff;">09:20am</span></strong><span style="margin: 0px; color: #1a6eff;"><span style="margin: 0px; font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp; </span><strong><span style="font-size: 16px;">Keynote Address</span></strong></span></p>
                                            <p style="margin: 0px; line-height: 115%;"><strong><em><span style="margin: 0px; font-size: 16px; color: black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></em></strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: #002060;">Venue: </span><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: #002060;">Room No. A1-602, 6<sup>th</sup> Floor, The Center Building<br />
                                            </span><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: green;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Keynote Address 1</span></strong><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: green;">:&nbsp;</span></strong><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: red;">Data Mining and Machine Learning for Analysis of Network Traffic</span></strong></p>
                                            <p style="margin: 0px; line-height: 115%; text-align: justify;"><strong><em><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;"><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Prof. Dr. </span></em></strong><strong><em><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: #231f20;">Ljiljana Trajkovic, </span></em></strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">School of Engineering Science, </span></p>
                                            <p style="margin: 0px; line-height: 115%; text-align: justify;"><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;"><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>S</span><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: #231f20;">imon Fraser University, Canada</span></p>
                                            <p style="margin: 0px; line-height: 115%; text-align: justify;"><strong><em><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;"><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Chair: Prof. Dr. Yo-Ping Huang, </span></em></strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">National Taipei University of Technology, Taiwan</span></p>
                                            <p style="background: #c6d9f1; margin: 0px; line-height: 115%;"><strong><span style="margin: 0px; color: #1a6eff;"><span style="font-size: 16px;">10:20am </span><span style="margin: 0px; font-size: 16px;">&nbsp;&nbsp;&nbsp; </span><span style="font-size: 16px;">Morning Tea</span></span></strong></p>
                                            <p style="margin: 0px; line-height: 115%;"><span style="margin: 0px; font-size: 16px; color: black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">Venue: Conference Foyer, 6<sup>th</sup> Floor, The Center Building</span></p>
                                            <p style="background: #c6d9f1; margin: 0px; line-height: 115%;"><strong><span style="background: #c6d9f1; margin: 0px; color: #1a6eff;"><span style="font-size: 16px;">10:40am - 05:25pm </span><span style="margin: 0px; font-size: 16px;">&nbsp; </span><span style="font-size: 16px;">Paper Presentations - Breakout Sessions</span></span></strong></p>
                                            <p style="background: #c6d9f1; margin: 0px; line-height: 115%;"><strong><span style="background: #c6d9f1; margin: 0px; color: #7030a0;"><span style="margin: 0px; font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><em><span style="font-size: 16px;">(</span></em></span></strong><strong><em><span style="margin: 0px; line-height: 115%; font-size: 10pt; color: #7030a0;">12:00am - 01:30pm<span style="margin: 0px;">&nbsp;&nbsp;&nbsp; </span>Lunch break</span></em></strong><strong><em><span style="background: #c6d9f1; margin: 0px; font-size: 16px; color: #7030a0;">)</span></em></strong></p>
                                            <p style="background: #c6d9f1; margin: 0px; line-height: 115%;"><strong><em><span style="background: #c6d9f1; margin: 0px; line-height: 115%; font-size: 10pt; color: #7030a0;"><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>(03:30pm - 03:45pm<span style="margin: 0px;">&nbsp;&nbsp;&nbsp; </span>Afternoon Tea break)</span></em></strong></p>
                                            <p style="margin: 0px; line-height: 115%;"><strong><span style="margin: 0px; line-height: 115%; font-size: 14pt; color: blue;">&nbsp;</span></strong></p>
                                            <p style="margin: 0px; line-height: 115%;"><strong><span style="margin: 0px; line-height: 115%; font-size: 12pt; color: red;">&nbsp;</span></strong></p>
                                            <p style="margin: 0px; line-height: 115%;"><strong><span style="margin: 0px; line-height: 115%; font-size: 12pt; color: red;">SATURDAY, JULY 22<sup>nd</sup> 2017</span></strong></p>
                                            <p style="background: #c6d9f1; margin: 0px; line-height: 115%;"><strong><span style="margin: 0px; font-size: 16px; color: #1a6eff;">09:00am</span></strong><span style="margin: 0px; color: #1a6eff;"><span style="margin: 0px; font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp; </span><strong><span style="font-size: 16px;">Registration</span></strong></span></p>
                                            <p style="margin: 0px; line-height: 115%;"><span style="margin: 0px; font-size: 16px; color: #1a6eff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: #002060;">Venue: Conference Foyer, </span><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">6<sup>th</sup> Floor, The Center Building</span></p>
                                            <p style="background: #c6d9f1; margin: 0px; line-height: 115%;"><strong><span style="margin: 0px; font-size: 16px; color: #1a6eff;">09:20am</span></strong><span style="margin: 0px; color: #1a6eff;"><span style="margin: 0px; font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp; </span><strong><span style="font-size: 16px;">Keynote Address</span></strong></span></p>
                                            <p style="margin: 0px; line-height: 115%;"><strong><em><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></em></strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: #002060;">Venue:</span><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: #002060;">Room No. A1-602, 6<sup>th</sup> Floor, The Center Building<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: green;">Keynote Address 2</span></strong><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: green;">: </span></strong><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: red;">Unknown input methods based observer and controller synthesis for uncertain nonlinear systems</span></strong></p>
                                            <p style="margin: 0px; line-height: 115%; text-align: justify;"><strong><em><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;"><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Prof. Dr. Wen-June Wang</span></em></strong></p>
                                            <p style="margin: 0px; line-height: 115%; text-align: justify;"><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;"><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Department of Electrical Engineering, National Central University, Taiwan, </span></p>
                                            <p style="margin: 0px; line-height: 115%;"><strong><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;"><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><em>Chair: Assoc. Prof. Dr. Le Hieu Giang</em></span></strong><em><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">, </span></em><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">Vice President, HCMUTE, Vietnam</span></p>
                                            <p style="background: #c6d9f1; margin: 0px; line-height: 115%;"><strong><span style="margin: 0px; color: #1a6eff;"><span style="font-size: 16px;">10:20am </span><span style="margin: 0px; font-size: 16px;">&nbsp;&nbsp;&nbsp; </span><span style="font-size: 16px;">Morning Tea</span></span></strong></p>
                                            <p style="margin: 0px; line-height: 115%;"><span style="margin: 0px; font-size: 16px; color: black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="margin: 0px; line-height: 115%; font-size: 10.5pt; color: black;">Venue: Conference Foyer, 6<sup>th</sup> Floor, The Center Building</span></p>
                                            <p style="background: #c6d9f1; margin: 0px; line-height: 115%;"><strong><span style="background: #c6d9f1; margin: 0px; color: #1a6eff;"><span style="font-size: 16px;">10:40am - 05:25pm </span><span style="margin: 0px; font-size: 16px;">&nbsp; </span><span style="font-size: 16px;">Paper Presentations - Breakout Sessions</span></span></strong></p>
                                            <p style="background: #c6d9f1; margin: 0px; line-height: 115%;"><strong><span style="background: #c6d9f1; margin: 0px; color: #7030a0;"><span style="margin: 0px; font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><em><span style="font-size: 16px;">(</span></em></span></strong><strong><em><span style="margin: 0px; line-height: 115%; font-size: 10pt; color: #7030a0;">12:00am - 01:30pm<span style="margin: 0px;">&nbsp;&nbsp;&nbsp; </span>Lunch break</span></em></strong><strong><em><span style="background: #c6d9f1; margin: 0px; font-size: 16px; color: #7030a0;">)</span></em></strong></p>
                                            <p style="background: #c6d9f1; margin: 0px; line-height: 115%;"><strong><em><span style="background: #c6d9f1; margin: 0px; line-height: 115%; font-size: 10pt; color: #7030a0;"><span style="margin: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>(03:30pm - 03:45pm<span style="margin: 0px;">&nbsp;&nbsp;&nbsp; </span>Afternoon Tea break)</span></em></strong></p>
                                            <br />
                                            <p style="margin: 0px; text-align: center;"><span style="font-size: 26px;"><strong><span style="font-size: 26px;">
                                            PLEASE CLICK&nbsp;BELOW BUTTON&nbsp;TO DOWNLOAD DETAILED</span><span style="font-size: 26px;"> </span><span style="font-size: 26px;">BREAKOUT SESSIONS PROGRAM</span></strong></span><br />
                                            <br />
                                            <a href="/Resources/Docs/SubDomain/icsse2017/ICSSE 2017 Official Program.pdf"><img alt="" src="static/Images/BUTTON.png" /></a></p>
                                            <p style="text-align: center;"><img alt="" src="static/Images/Unitag_QRCode_1498707978230.png" style="font-size: 22pt; text-align: left;" /></p>
                                            <div style="text-align: center;"><img alt="" src="static/Images/Scan_icon.png" /><br />
                                            <strong style="color: #1a6eff; font-size: 26px; text-align: left;">Scan to download ICSSE2017 Program <br />
                                            to your cell phone</strong><br />
                                            <br />
                                            </div>
                                            <br />
                                            <p style="background: #c6d9f1; margin: 0px; line-height: 115%;"><strong><em><br />
                                            </em></strong></p>
                                        </span>
                                        <table width="649" style="margin: 0px; border: medium; width: 487.1pt; border-collapse: collapse;" border="1" cellspacing="0" cellpadding="0">
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                                                                    
                            </div>
                                                    
                            <div style="float: left; width: 670px; margin-bottom: 10px; padding-top: 5px; clear: both; margin: 0px 5px 0px 5px;">
                                
                            </div>

                        </div>
                    </div>
                        <div id="ctl06_ctl01_ValidationSummary1" style="color:Red;display:none;">

                        </div>
                                            
                        <!--<div style="margin-top: 10px; margin-right: 25px; margin-left: 20px; text-align: justify; float: left; margin-bottom: 10px; display: none;">
                            <div style="float: left; width: 100%;">
                                <div style="background: url(/Resources/ImagesPortal/HomePage/guigopy.png) no-repeat; width: 76px; height: 24px; float: left;">
                                    <div style="font-weight: bold; font: 13px Verdana; color: #fff; padding-top: 3px; text-align: center;"
                                        class="show_hide">
                                        Comments
                                    </div>
                                </div>
                            </div>
                            <div style="font-family: Verdana; font-size: small; color: #FF0000; float: left; width: 100%;">
                                
                            </div>

                         <div class="slidingDiv" style="float: left;">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                                <tr>
                                    <td align="right" style="font-family: Verdana; font-size: 11px; color: #333; font-weight: bold; padding: 5px"
                                        width="80px">
                                        Full Name:
                                    </td>
                                    <td align="left" style="width: 230px;">
                                        <input name="ctl06$ctl01$txtFullName" type="text" id="ctl06_ctl01_txtFullName" style="width:200px;" />
                                        <span style="color: Red">*</span><span id="ctl06_ctl01_RequiredFieldValidator1" title="Required" style="color:Red;display:none;"></span>
                                    </td>
                                    <td align="left">&nbsp;
                                
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="font-family: Verdana; color: #333; font-size: 11px; font-weight: bold; padding: 5px"
                                        width="80px">Email:
                                    </td>
                                    <td align="left" style="width: 230px;">
                                        <input name="ctl06$ctl01$txtEmail" type="text" id="ctl06_ctl01_txtEmail" style="width:200px;" />
                                        <span style="color: Red">*</span><span id="ctl06_ctl01_RequiredFieldValidator3" title="Required" style="color:Red;display:none;"></span>
                                        <span id="ctl06_ctl01_RegularExpressionValidator3" title="Invalid Email" style="color:Red;display:none;"></span>
                                    </td>
                                    <td align="left">&nbsp;
                                
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="font-family: Verdana; font-size: 11px; color: #333; font-weight: bold; padding: 5px"
                                        width="80px">
                                        Title:
                                    </td>
                                    <td align="left" style="width: 230px;">
                                        <input name="ctl06$ctl01$txtTitle" type="text" id="ctl06_ctl01_txtTitle" style="width:200px;" />
                                        <span style="color: Red">*</span><span id="ctl06_ctl01_RequiredFieldValidator4" title="Required" style="color:Red;display:none;"></span>
                                    </td>
                                    <td align="left">&nbsp;
                                
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="font-family: Verdana; font-size: 11px; color: #333; font-weight: bold; padding: 5px"
                                        width="80px">
                                        Captcha:
                                    </td>
                                    <td align="left" style="width: 250px;">
                                        <div id="ctl06_ctl01_RadCaptcha1" class="RadCaptcha RadCaptcha_Default" style="float: left;">
                                    <span id="ctl06_ctl01_RadCaptcha1_ctl00" style="color:Red;visibility:hidden;"></span><div id="ctl06_ctl01_RadCaptcha1_SpamProtectorPanel">
                                        <img id="ctl06_ctl01_RadCaptcha1_CaptchaImage" alt="" src="../../Telerik.Web.UI.WebResource.axd?type=rca&amp;guid=6b1f7d16-050e-4ae5-9d59-8e3ee2c08840" style="height:50px;width:150px;border-width:0px;display:block;" />
                                    </div><input id="ctl06_ctl01_RadCaptcha1_ClientState" name="ctl06_ctl01_RadCaptcha1_ClientState" type="hidden" />
                                </div>
                                        <input name="ctl06$ctl01$txtCapCha" type="text" id="ctl06_ctl01_txtCapCha" style="width:204px;" />
                                        <span id="ctl06_ctl01_RequiredFieldValidator6" title="Invalid Code" style="color:Red;visibility:hidden;">(*)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="font-family: Verdana; font-size: 11px; font-weight: bold; color: #fff; padding: 5px"
                                        colspan="3">
                                        <div id="ctl06_ctl01_fckContent" class="RadEditor Default reWrapper" style="height:210px;width:380px;float: left;">
                                    <div id="ctl06_ctl01_fckContent_dialogOpener" style="display:none;">
                                        <div id="ctl06_ctl01_fckContent_dialogOpener_Window" style="display:none;">
                                            <div id="ctl06_ctl01_fckContent_dialogOpener_Window_C">

                                            </div><input id="ctl06_ctl01_fckContent_dialogOpener_Window_ClientState" name="ctl06_ctl01_fckContent_dialogOpener_Window_ClientState" type="hidden" />
                                        </div><input id="ctl06_ctl01_fckContent_dialogOpener_ClientState" name="ctl06_ctl01_fckContent_dialogOpener_ClientState" type="hidden" />
                                    </div><table id="ctl06_ctl01_fckContentWrapper" cellpadding="0" cellspacing="0" style="table-layout:auto;width:100%;height:210px;">
                                        <tbody>
                                            <tr>
                                                <td class="reWrapper_corner reCorner_top_left">&nbsp;</td><td class="reWrapper_center reCenter_top" colspan="3">&nbsp;</td><td class="reWrapper_corner reCorner_top_right">&nbsp;</td>
                                            </tr><tr>
                                                <td class="reLeftVerticalSide" rowspan="4">&nbsp;</td><td rowspan="4" id="ctl06_ctl01_fckContentLeft" class="reTlbVertical"></td><td id="ctl06_ctl01_fckContentTop" class="reToolCell" style="width:100%;"><div class="Default reToolbarWrapper">
                                                    <ul class="reToolbar Default">
                                                        <li class="reGrip grip_first">&nbsp;</li><li><a title="Bold" class="reTool" href="#"><span class="Bold">&nbsp;</span></a></li><li><a title="Italic" class="reTool" href="#"><span class="Italic">&nbsp;</span></a></li><li><a title="Align Left" class="reTool" href="#"><span class="JustifyLeft">&nbsp;</span></a></li><li><a title="Align Right" class="reTool" href="#"><span class="JustifyRight">&nbsp;</span></a></li><li><a title="Align Center" class="reTool" href="#"><span class="JustifyCenter">&nbsp;</span></a></li><li><a title="Justify" class="reTool" href="#"><span class="JustifyFull">&nbsp;</span></a></li><li class="reGrip grip_last">&nbsp;</li>
                                                    </ul>
                                                </div></td><td rowspan="4" id="ctl06_ctl01_fckContentRight" class="reTlbVertical"></td><td rowspan="4" class="reRightVerticalSide">&nbsp;</td>
                                            </tr><tr>
                                                <td valign="top" id="ctl06_ctl01_fckContentCenter" class="reContentCell" style="height:100%;"><label for="ctl06_ctl01_fckContentContentHiddenTextarea" style="display:none;">RadEditor hidden textarea</label><textarea id="ctl06_ctl01_fckContentContentHiddenTextarea" name="ctl06$ctl01$fckContent" rows="4" cols="20" style="display:none;"></textarea></td>
                                            </tr><tr>
                                                <td class="reToolZone"><table cellpadding="0" cellspacing="0" id="ctl06_ctl01_fckContent_BottomTable" style="width:100%;">
                                                    <tbody>
                                                        <tr>
                                                            <td class="reEditorModesCell"><div class="reEditorModes" id="ctl06_ctl01_fckContent_ModesWrapper">
                                                                <ul>
                                                                    <li><a href="javascript:void(0);" title="Design" class="reMode_design reMode_selected"><span>Design</span></a></li><li><a href="javascript:void(0);" title="HTML" class="reMode_html"><span>HTML</span></a></li><li><a href="javascript:void(0);" title="Preview" class="reMode_preview"><span>Preview</span></a></li>
                                                                </ul>
                                                            </div></td><td class="reBottomZone" id="ctl06_ctl01_fckContentBottom">&nbsp;</td><td class="reResizeCell" valign="bottom" align="right" style="width:15px;"><div id="ctl06_ctl01_fckContentBottomResizer">
                                                                &nbsp;
                                                            </div></td>
                                                        </tr>
                                                    </tbody>
                                                </table><noscript>
                                                    <p>RadEditor - please enable JavaScript to use the rich text editor.</p>
                                                </noscript></td>
                                            </tr><tr>
                                                <td id="ctl06_ctl01_fckContentModule" class="reToolZone"></td>
                                            </tr><tr>
                                                <td class="reWrapper_corner reCorner_bottom_left">&nbsp;</td><td class="reWrapper_center reCenter_bottom" colspan="3">&nbsp;</td><td class="reWrapper_corner reCorner_bottom_right">&nbsp;</td>
                                            </tr>
                                        </tbody>
                                    </table> 
                                <input id="ctl06_ctl01_fckContent_ClientState" name="ctl06_ctl01_fckContent_ClientState" type="hidden" />
                                </div>
                                        <span style="color: Red; font-size: 12px;">&nbsp;* </span>
                                        <span id="ctl06_ctl01_RequiredFieldValidator2" title="Required" style="color:Red;display:none;"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="center" height="25px">
                                        <input type="submit" name="ctl06$ctl01$btnSend" value="Send" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl06$ctl01$btnSend&quot;, &quot;&quot;, true, &quot;Feedback&quot;, &quot;&quot;, false, false))" id="ctl06_ctl01_btnSend" style="height:25px;width:50px;" />
                                        <input type="submit" name="ctl06$ctl01$btnCancel" value="Cancel" id="ctl06_ctl01_btnCancel" style="height:25px;width:50px;" />
                                    </td>
                                </tr>


                            </table>
                        </div>
                </div>-->
                </div>
                <div id="ctl06_ctl01_rwUserLogin" style="display:none;">
                    <div id="ctl06_ctl01_rwUserLogin_C">

                    </div><input id="ctl06_ctl01_rwUserLogin_ClientState" name="ctl06_ctl01_rwUserLogin_ClientState" type="hidden" />
                </div>
                <script language="javascript" type="text/javascript">
                    var dialogMethod;
                    function CallWebMethodSuccess(results, context, methodName) {
                        switch (methodName) {
                            case "AllowWatchArticle":
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
                        // page.htm?name1=100 or page.htm/name1/100
                        var articleId;
                        var winURL = window.location.href;
                        var index = winURL.indexOf(name);
                        if (index > -1) {
                            winURL = winURL.substr(index, winURL.length);
                            var arr = winURL.indexOf("/") > -1 ? winURL.split("/") : winURL.split("=");;
                            articleId = arr[1];
                        }
                        return articleId;
                    }
                    function CheckUserWatchArticle() {
                        PSCPortal.Services.CMS.AllowWatchArticle(getQuerystringNameValue("ArticleId"), CallWebMethodSuccess);
                    }
                    var dialogMethod;
                    function CheckUserWatchCallback(results, context, methodName) {
                        if (!results) {
                            dialogMethod = "CheckUserWatchArticle";
                            var oWnd = $find("ctl06_ctl01_rwUserLogin");
                            oWnd.setSize(380, 180);
                            oWnd.setUrl("/Modules/CMS/UserLogin.aspx");
                            oWnd.set_title("Login");
                            oWnd.show();
                        }
                    }
                    function RadCheckUserWatchClose(sender, args) {
                        switch (dialogMethod) {
                            case "CheckUserWatchArticle":
                                {
                                    PSCPortal.Services.CMS.CheckUserWatchArticle(CallCheckUserWatchWebMethodSuccess);
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
                        CheckUserWatchArticle();
                    }
                </script>

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
