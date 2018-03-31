<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>WELCOME TO ICSSE 2017</title>
    
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/show_img.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="static/js/jquery-1.7.2.min.js"></script>
    <script src="static/js/Common.js" type="text/javascript"></script>
    <script src="static/js/PagingContent.js" type="text/javascript"></script>
    <link rel="shortcut icon" type="image/png" href="static/Images/logo.png" /><link href="static/css/lightbox.css" rel="stylesheet" type="text/css" />
    <script src="static/js/lightbox.min.js" type="text/javascript"></script>
    <link href="static/css/search_Article.css" rel="stylesheet" />
    <script type="text/javascript">
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

    <div class="gray">
    <div class="wrapper">
    <table style="border-collapse:collapse;cellspacing :0; cellpadding:0; border:0;">
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
                                        <li class="rmItem rmLast" style="float: right;"><a href="logOut" class="rmLink rmRootLink"><span class="rmText">Log out</span></a>
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
		<td><!-- 
					<link href="static/css/TopicArticleDisplay.css" rel="stylesheet" type="text/css" />
                    <link href="static/css/Contact.css" rel="stylesheet" type="text/css" /> -->
            <div id="pnCenter">
		      	<div id="pnCenterDisplay"  >
                    
                    <div class="display" style="float: left; width: 100%;">
                        <div class="title_display">
                             <h3>PAGE ADMIN</h3>
                        </div>
                        <div style="margin-top: 10px;">
                            <div style="margin-left: 5px; margin-bottom: 10px;">
                                <div class="ct_tin_display" style="width: 100%;">
                                    <div class="articleTitle">
                                        Hello,<span style="font-style: italic"> ${SESSION_FULL_NAME} </span>
                                    </div>
                                    <div class="articleContent">
                                        <div style="text-align: center;">
                                            <strong style="color: #0080c0; font-size: large; text-align: center;">
                                                <span style="font-size: 22px;"><br />
                                                    <span style="font-size: 28px;">LIST&nbsp;NEWS<br /><br />
                                                    </span>
                                                </span>
                                            </strong>
                                        </div>
                                    </div>
                                    <div class="articleContent">
                                        <div style="text-align: right; margin-right: 30px;">
                                            <a href="newNews" style="padding: 5px; background-color: red; color: white;">New NEWS</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    
                    <table style="font-size: 14px; width: 100%; background: white;border:0; cellpadding:0; ">
                        <tbody>
                            <tr>
                                <td style="padding: 0.75pt; width: 50px; background: #999999;">
                                <p style="margin: 9pt 0cm 0.0001pt 3pt; text-align: center;"><span style="font-size: 14px; font-family: &quot;times new roman&quot;;"><strong><span style="font-size: 12pt; color: #002060;">ID</span></strong></span></p>
                                </td>
                                <td style="padding: 0.75pt; width: 138px; background: #999999;">
                                <p style="margin: 9pt 0cm 0.0001pt 3pt; text-align: center;"><span style="font-size: 14px; font-family: &quot;times new roman&quot;;"><strong><span style="font-size: 12pt; color: #002060;">TITLE</span></strong></span></p>
                                </td>
                                <td style="padding: 0.75pt; background: #999999;">
                                <p style="margin-left: 3pt; text-align: center;"><span style="font-size: 14px; font-family: &quot;times new roman&quot;;"><strong><span style="font-size: 12pt; color: #002060;">CONTENT<br />
                                </span></strong></span></p>
                                </td>
                                <td style="padding: 0.75pt; width: 150px; background: #999999;">
                                <p style="margin-left: 3pt; text-align: center;"><span style="font-size: 14px; font-family: &quot;times new roman&quot;;"><strong><span style="font-size: 12pt; color: #002060;">CREATE DATETIME <br />
                                </span></strong></span></p>
                                </td>
                                <td style="padding: 0.75pt; width: 50px; background: #999999;">
                                <p style="margin-left: 3pt; text-align: center;"><span style="font-size: 14px; font-family: &quot;times new roman&quot;;"><strong><span style="font-size: 12pt; color: #002060;">ACTHOR <br />
                                </span></strong></span></p>
                                </td>
                                <td style="padding: 0.75pt; width: 50px; background: #999999;">
                                <p style="margin-left: 3pt; text-align: center;"><span style="font-size: 14px; font-family: &quot;times new roman&quot;;"><strong><span style="font-size: 12pt; color: #002060;">EDIT <br />
                                </span></strong></span></p>
                                </td>
                                <td style="padding: 0.75pt; width: 50px; background: #999999;">
                                <p style="margin-left: 3pt; text-align: center;"><span style="font-size: 14px; font-family: &quot;times new roman&quot;;"><strong><span style="font-size: 12pt; color: #002060;">DELETE <br />
                                </span></strong></span></p>
                                </td>
                            </tr>
                            <c:forEach items="${news}" var="news" >
	                            <tr>
	                                <td style="padding: 0.75pt; width: 50px; background: #cccccc;">
	                                <p style="margin-left: 3pt; text-align: center;"><span style="font-family: &quot;times new roman&quot;; font-size: 16px; color: #002060;">${news.news_id }</span></p>
	                                </td>
	                                <td style="padding: 0.75pt; width: 138px; background: #d8d8d8;">
	                                <p style="margin: 9pt 0cm 0.0001pt 3pt; text-align: center;"><span>
		                                <span style="font-family: &quot;times new roman&quot;; font-size: 16px; color: #002060;"></span>
		                                <span style="font-family: &quot;times new roman&quot;; font-size: 16px; color: #002060;">&nbsp;</span>
		                                <span style="font-family: &quot;times new roman&quot;; font-size: 16px; color: #c00000;">
		                                <strong>${news.title }</strong></span><span style="font-family: &quot;times new roman&quot;; font-size: 16px; color: #c00000;"></span></span>
	                                </p>
	                                </td>
	                                <td style="padding: 0.75pt;  background: #cccccc;">
	                                <p style="margin: 9pt 0cm 0.0001pt 3pt; text-align: center;"><span style="font-family: &quot;times new roman&quot;; font-size: 16px; color: #002060;">${news.content }</span></p>
	                                
	                                </td>
	                                <td style="padding: 0.75pt; width: 150px; background: #cccccc;">
	                                <p style="margin: 9pt 0cm 0.0001pt 3pt; text-align: center;"><span style="font-family: &quot;times new roman&quot;; font-size: 16px; color: #002060;">
	                                <fmt:formatDate pattern="yyyy-MM-dd" value="${news.date_create}"/></span></p>
	                                </td>
	                                <td style="padding: 0.75pt;  background: #cccccc;">
	                                <p style="margin: 9pt 0cm 0.0001pt 3pt; text-align: center;"><span style="font-family: &quot;times new roman&quot;; font-size: 16px; color: #002060;">${news.accountname }</span></p>
	                                </td>
	                                <td style="padding: 0.75pt; width: 50px; background: #cccccc;">
	                                <p style="margin: 9pt 0cm 0.0001pt 3pt; text-align: center;"><a href="update-news?id=${news.news_id }"><span class="glyphicon glyphicon-pencil"></span></a></p>
	                                </td>
	                                <td style="padding: 0.75pt; width: 50px; background: #cccccc;">
	                                <p style="margin: 9pt 0cm 0.0001pt 3pt; text-align: center;"><a href="delete-news?id=${news.news_id }"><span class="glyphicon glyphicon-trash"></span></a></p>
	                                </td>
	                            </tr>
                            </c:forEach>
                        </tbody>
                    </table> 
                    
			     </div>
			     <div style="font-size: 14px; text-align: center;"><span style="font-size: 14pt;"><span style="font-weight: bold; font-family: &quot;times new roman&quot;, serif; color: #002060;">&nbsp;</span><br />
                 </span></div>  
             </div>
         </td>

         <!--RIGHT CONTENT-->
         
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
</body>
</html>
