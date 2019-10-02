package com.cdac.employee.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FileUploadControllerAJ {

	@RequestMapping("fileuploadAJX")
	public ModelAndView showfile()
	{
ModelAndView mv=new ModelAndView("fileuploadAJ");
		
		return mv;
	}
	
	
	 @PostMapping("/fileUpload")
	   public ResponseEntity<String> fileUpload(@RequestParam("file") MultipartFile file)
	         throws IOException {

	      // Save file on system
	      if (!file.getOriginalFilename().isEmpty()) {
	         BufferedOutputStream outputStream = new BufferedOutputStream(
	               new FileOutputStream(
	                     new File("/home/cdac-kharghar2/eclipse-workspace1/Employee/src/main/webapp/images/", file.getOriginalFilename())));
	         outputStream.write(file.getBytes());
	         outputStream.flush();
	         outputStream.close();
	      }else{
	         return new ResponseEntity<String>("Invalid file.",HttpStatus.BAD_REQUEST);
	      }
	      
	      return new ResponseEntity<String>("File Uploaded Successfully.",HttpStatus.OK);
	   }
	
	
}
