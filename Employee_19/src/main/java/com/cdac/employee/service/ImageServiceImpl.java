package com.cdac.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cdac.employee.bean.Image;
import com.cdac.employee.dao.IImageDao;

@Service
public class ImageServiceImpl implements IImageService{

	
	@Autowired 
	IImageDao imagedao;
	
	

	@Override
	public List<Image> getImages() {
		
		return imagedao.getImages();
	}

	@Override
	public int update(Image image) {
		
		return imagedao.update(image);
	}

	@Override
	public int delete(int id) {
		
				return imagedao.delete(id);
	}

	@Override
	public Image getImageById(int id) {
		return imagedao.getImageById(id);
	}

	@Override
	public int insertRecords(Image image) {
		return imagedao.insertRecords(image);
	}

	@Override
	public Boolean uploadFilePS(String fileName, String fileContentType, MultipartFile file) {
		return imagedao.uploadFilePS(fileName,fileContentType,file);
	}
	
}
