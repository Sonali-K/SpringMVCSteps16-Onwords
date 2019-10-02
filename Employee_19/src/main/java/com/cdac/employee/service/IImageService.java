package com.cdac.employee.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.cdac.employee.bean.Image;

public interface IImageService {

	public List<Image> getImages();
	public int update(Image image);
	public int delete(int id);
	public Image getImageById(int id);
	public int insertRecords(Image image);
	public Boolean uploadFilePS(String fileName, String fileContentType, MultipartFile file); 
           


}
