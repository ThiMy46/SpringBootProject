package com.daomy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.daomy.model.News;
import com.daomy.model.StorageFileNotFoundException;
import com.daomy.service.StorageService;
import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.extensions.java6.auth.oauth2.AuthorizationCodeInstalledApp;
import com.google.api.client.extensions.jetty.auth.oauth2.LocalServerReceiver;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.FileContent;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.util.store.FileDataStoreFactory;
import com.google.api.services.drive.Drive;
import com.google.api.services.drive.DriveScopes;
import com.google.api.services.drive.model.File;
import com.google.api.services.drive.model.ParentReference;

import java.io.IOException;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class FileUploadController {

	/** Application name. */
	private static final String APPLICATION_NAME = "Y Suria";

	/** Directory to store user credentials for this application. */
	private static final java.io.File DATA_STORE_DIR = new java.io.File(System.getProperty("user.home"),
			".credentials/drive-java-quickstart");

	/** Global instance of the {@link FileDataStoreFactory}. */
	private static FileDataStoreFactory DATA_STORE_FACTORY;

	/** Global instance of the JSON factory. */
	private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();

	/** Global instance of the HTTP transport. */
	private static HttpTransport HTTP_TRANSPORT;

	/**
	 * Global instance of the scopes required by this quickstart.
	 *
	 * If modifying these scopes, delete your previously saved credentials at
	 * ~/.credentials/drive-java-quickstart
	 */
	private static final List<String> SCOPES = Arrays.asList(DriveScopes.DRIVE);

	static {
		try {
			HTTP_TRANSPORT = GoogleNetHttpTransport.newTrustedTransport();
			DATA_STORE_FACTORY = new FileDataStoreFactory(DATA_STORE_DIR);
		} catch (Throwable t) {
			t.printStackTrace();
			System.exit(1);
		}
	}
	@Autowired
	private StorageService storageService;

	@GetMapping("/upload")
	public String listUploadedFiles(Model model) throws IOException {

		model.addAttribute("files",
				storageService.loadAll()
						.map(path -> MvcUriComponentsBuilder
								.fromMethodName(FileUploadController.class, "serveFile", path.getFileName().toString())
								.build().toString())
						.collect(Collectors.toList()));
		return "uploadForm";
	}

	@GetMapping("/files/{filename:.+}")
	@ResponseBody
	public ResponseEntity<Resource> serveFile(@PathVariable String filename) {

		Resource file = storageService.loadAsResource(filename);
		return ResponseEntity.ok()
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + file.getFilename() + "\"")
				.body(file);
	}

	@PostMapping("/upload-file")
	public String handleFileUpload(@RequestParam("file") MultipartFile file,@RequestParam("news_id") String news_id,@RequestParam("title") String title,
			@RequestParam("content") String content,RedirectAttributes redirect,
			HttpServletRequest request) throws Exception {

		storageService.store(file);

     // Build a new authorized API client service.
        Drive service = getDriveService();
        
        File fileMetadata = new File();
        
        String folderId = "1YmMsyJfWZcAp0G40ZL622UeI_XqNPxql";
		fileMetadata.setTitle(file.getOriginalFilename());
		ParentReference pf = new ParentReference();
		pf.setId(folderId);
		List<ParentReference> listPf = new ArrayList<ParentReference>();
		listPf.add(pf);
		fileMetadata.setParents(listPf);
		
        fileMetadata.setTitle(file.getOriginalFilename());
        java.io.File filePath = new java.io.File("upload-dir/"+file.getOriginalFilename());
        FileContent mediaContent = new FileContent(file.getContentType(),filePath);
        File f = service.files().insert(fileMetadata, mediaContent)
            .setFields("id")
            .execute();
        filePath.delete();
        System.out.println("File ID: " + f.getId()+" | "+f.getWebContentLink());
        
        request.setAttribute("title", title);
        request.setAttribute("content", content+"<a href='https://drive.google.com/open?id="+f.getId()+"'>https://drive.google.com/open?id="+f.getId()+"</a>");
        //request.setAttribute("linkdownload", "https://drive.google.com/open?id="+f.getId());
        //redirect.addFlashAttribute("linkdownload","https://drive.google.com/open?id="+f.getId());
        
        //return "redirect:/upload";
        return "NewNews";
	}

	public static Credential authorize() throws Exception {
		// Load client secrets.
		InputStream in = FileUploadController.class.getResourceAsStream("/client_secret.json");
		GoogleClientSecrets clientSecrets = GoogleClientSecrets.load(JSON_FACTORY, new InputStreamReader(in));

		// Build flow and trigger user authorization request.
		GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(HTTP_TRANSPORT, JSON_FACTORY,
				clientSecrets, SCOPES).setDataStoreFactory(DATA_STORE_FACTORY).setAccessType("offline").build();
		Credential credential = new AuthorizationCodeInstalledApp(flow, new LocalServerReceiver()).authorize("user");
		System.out.println("Credentials saved to " + DATA_STORE_DIR.getAbsolutePath());
		return credential;
	}

	/**
	 * Build and return an authorized Drive client service.
	 * 
	 * @return an authorized Drive client service
	 * @throws Exception
	 */
	public static Drive getDriveService() throws Exception {
		Credential credential = authorize();
		return new Drive.Builder(HTTP_TRANSPORT, JSON_FACTORY, credential).setApplicationName(APPLICATION_NAME).build();
	}

	@ExceptionHandler(StorageFileNotFoundException.class)
	public ResponseEntity<Object> handleStorageFileNotFound(StorageFileNotFoundException exc) {
		return ResponseEntity.notFound().build();
	}

}