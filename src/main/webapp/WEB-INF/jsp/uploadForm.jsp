<html xmlns:th="http://www.thymeleaf.org">
<body>

	<div>
		<form method="POST" enctype="multipart/form-data" action="upload-file">
			<input type="hidden" value="${news.news_id}" name="title" required/>
			<input type="hidden" value="${news.title}" name="title" required/>
            <input type="hidden" name="content" value="${news.content} " required/> 
			<table>
				<tr><td>File to upload:</td><td><input type="file" name="file" /></td></tr>
				<tr><td></td><td><input type="submit" value="Upload" /></td></tr>
			</table>
		</form>
	</div>

	<div>
		<a href="${linkdownload}" value="${linkdownload}" />
	</div>

</body>
</html>
