
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>New News</title>
	<script src="static/ckeditor/ckeditor.js"></script>
	<script src="static/ckfinder/ckfinder.js"></script>
</head>
<body style="background:#f1f1f1">
	
	<div style="width:80%; margin:auto;">
		<p style="color:#139ff7; text-align:center;font-size:30px;"><b>NEWS</b></p>
		
		<form method="POST" action="save-news">
			<input type="hidden" name="news_id" value="${news.news_id}"/>
			<p >Title:</p>
			<textarea id="title" name="title" rows="2" cols="70" required>
                ${news.title} ${title }
            </textarea>
			<p>Content:</p>
            <textarea id="content" name="content" required>
                ${news.content} ${content } 
            </textarea>
            
            <table>
				<tr><td>File to upload:</td><td><input type="file" name="file" /></td></tr>
				<tr><td></td><td>
				<input type="submit" formmethod="POST" formenctype="multipart/form-data" formaction="upload-file" value="Upload">
				</td></tr>
			</table>
    		
            <button type="submit" formmethod="POST" formaction="save-news" style="padding:5px 10px 5px 10px;margin-top:10px;background-color:#139ff7;float:right;">SAVE</button>
        </form>
        <script>
		CKEDITOR.replace('content');
		</script>
	
	</div>
	
	
	
</body>
</html>