package com.cdac.employee.dao;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.multipart.MultipartFile;

import com.cdac.employee.bean.FileUploader;
import com.cdac.employee.bean.Image;

public class ImageDaoImpl implements IImageDao{


	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	

	@Override
	public int insertRecords(Image image) {
		String sql="insert into Images(img_title,img_data,img_path) values('"+image.getImg_title()+"','"+image.getImg_data()+"','"+image.getImg_path()+"')";    
		System.out.println(sql);
		return template.update(sql);
		
	}
	@Override
	public List<Image> getImages() {
		return template.query("select * from images",new RowMapper<Image>(){    
	        public Image mapRow(ResultSet rs, int row) throws SQLException {    
	        	Image i=new Image();    
	            i.setId(rs.getInt(1));    
	            i.setImg_title(rs.getString(2));  
	   
	            //need byte array conversion
	            byte[] fileData=rs.getBytes(3);
				i.setImg_data(fileData);
				
	            i.setImg_path(rs.getString(4)); 
	              
	        	System.out.println(i);
	          
	            
	            return i;    
	        }    
	    });    
	} 
	

	@Override
	public int update(Image image) {
		
		return 0;
	}

	@Override
	public int delete(int id) {
		String sql="delete from images where id="+id+"";    
		return template.update(sql);
	}

	@Override
	public Image getImageById(int id) {
		String sql="select * from images where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Image>(Image.class));   
	}


	@Override
	public Boolean uploadFilePS(String fileName, String fileContentType, MultipartFile file) {
		String query= "INSERT INTO filestore(filename, filecontenttype, filedata) VALUES (?,?,?)";  
		return template.execute(query,new PreparedStatementCallback<Boolean>() {
			public Boolean doInPreparedStatement(PreparedStatement ps)  
					throws SQLException, DataAccessException {  
				ps.setString(1, fileName);
				ps.setString(2, fileContentType);
				try {
					ps.setBinaryStream(3, file.getInputStream(), file.getBytes().length);
				} catch (IOException e) {
					e.printStackTrace();
				}
				return ps.execute();  
			}
		}				
	);
	
	

}


	
	
	public List<FileUploader> viewFileList() {
		return template.query("SELECT id, filename, filecontenttype, filedata FROM filestore",new RowMapper<FileUploader>(){    
			public FileUploader mapRow(ResultSet rs, int row) throws SQLException {    
				FileUploader fileUploader=new FileUploader();    
				fileUploader.setId(rs.getInt(1));
				fileUploader.setFilename(rs.getString(2));
				fileUploader.setFilecontenttype(rs.getString(3));
				fileUploader.setFiledata(rs.getBytes(4));
				return fileUploader;    
			}    
		});    
	}

	public FileUploader getDownloadableFile(int id) {
		String sql="select * from filestore where id=?";    
		return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<FileUploader>(FileUploader.class));  
	}
  

	
	
}