package com.cdac.employee.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cdac.employee.bean.FileUploader;
import com.cdac.employee.dao.ImageDaoImpl;



@Controller
public class FileUploadDBController {

	@Autowired    
	ImageDaoImpl dao;
	
	
	@RequestMapping(value = "/viewDatabaseFiles")
	public String viewStud(Model m){
		List<FileUploader> list= dao.viewFileList();
		m.addAttribute("list",list);  
		return "viewDatabaseFiles";    
	}

	@RequestMapping(value="downloadFile1/{id}")
	public void downloadFile(@PathVariable("id")int id, HttpServletResponse response) throws IOException {
		FileUploader fileUploader = dao.getDownloadableFile(id);
		response.setHeader("Content-Encoding", "UTF-8");
		response.setContentType("application/octet-stream");
		response.setContentType(fileUploader.getFilecontenttype());
		response.setContentLength(fileUploader.getFiledata().length);
		response.setHeader("Content-Disposition","attachment; filename=\"" + fileUploader.getFilename() +"\"");
		FileCopyUtils.copy(fileUploader.getFiledata(), response.getOutputStream());
		byte[] fileContent = fileUploader.getFiledata();
		response.getOutputStream().write(fileContent); 
	}	

}
