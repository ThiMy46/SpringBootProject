

<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>WELCOME TO ICSSE 2017</title>
    <link href="static/css/show_img.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="static/js/jquery-1.7.2.min.js"></script>
    <script src="static/js/Common.js" type="text/javascript"></script>
    <script src="static/js/PagingContent.js" type="text/javascript"></script>
    <link rel="shortcut icon" type="image/png" href="static/Images/logo.png" /><link href="static/css/lightbox.css" rel="stylesheet" type="text/css" />
    <script src="static/js/lightbox.min.js" type="text/javascript"></script>
    <link href="static/css/search_Article.css" rel="stylesheet" />
    <link href="static/css/main.css" rel="stylesheet" />
    <link href="static/css/mainPortlets.css" rel="stylesheet" />
</head>
<body class="body">

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
            							<li class="rmItem rmFirst"><a th:href="/" class="rmLink rmRootLink"><span class="rmText">Home</span></a>
                                        </li>
                                        <li class="rmItem "><a href="speaker" class="rmLink rmRootLink"><span class="rmText">Keynote Speakers</span></a>
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
                             <a style='color:#666;' href=/?TopicId=31ca0f13-71be-4bd9-ad28-d3589a3cf6d2>Latest news </a> 
                        </div>
                        <div style="margin-top: 10px;">
                            <div style="margin-left: 5px; margin-bottom: 10px;">
                                <div class="ct_tin_display">
                                    <div class="articleTitle">
                                        <a href="#">${news.title }</a>
                                    </div>                                   
                                    <div class="articleContent">
                                        ${news.content }
                                    </div>
                                </div>
                                                            
                            </div>
            
                        </div>
                    </div>
                </div>


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
					
                            <div class="thongbao_phong">
                                <div class="topictb_phong_blue">
                                    <h3>Latest news</h3>
                                    <a class="wobble-horizontal" href="list_news">
                                    <img src="static/Images/arrow_all_phong.png"></a>
                                </div>
                                <div class="listtb_phong">
                                    <ul>
                                    	<c:forEach var="news1" items="${news_list}">
	                                        <li><a href="content_news?id=${news1.news_id }">
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
