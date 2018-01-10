package com.molcon.phibase.dao;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.commons.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.molcon.phibase.bean.SpotlightBean;
import com.molcon.phibase.bean.SpotlightRowMapper;

@Repository
@Transactional
public class PhibaseDao {
	
	private JdbcTemplate jdbcTemplate;

	Logger logger=LoggerFactory.getLogger(PhibaseDao.class);

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public int addSpotlightEntry(String title, String description, InputStream imageStream) throws SQLException, IOException {
		
		String sql = "INSERT INTO SPOTLIGHT_DETAILS VALUES(0,?,?,?,NOW())";
		int updatedRows = jdbcTemplate.update(sql, title, description, imageStream);
		
		return updatedRows;
	}

	public SpotlightBean getLatestSpotlightEntry() {
		
		String sql = "SELECT * FROM SPOTLIGHT_DETAILS ORDER BY DATE DESC LIMIT 1";		
		SpotlightBean spotlightBean = null;		
		
		try {			
			spotlightBean = jdbcTemplate.queryForObject(sql, new SpotlightRowMapper());
			
		} catch (EmptyResultDataAccessException e ) {
			logger.info("No spotlight entries found");
		}
		
		return spotlightBean;
		
	}

	public List<SpotlightBean> getAllSpotlightBeans() {
		
		String sql = "SELECT * FROM SPOTLIGHT_DETAILS ORDER BY DATE DESC";		
		List<SpotlightBean> spotlightBeans = new ArrayList<>();
		
		try {			
			spotlightBeans = jdbcTemplate.query(sql, new SpotlightRowMapper());			
		} catch (EmptyResultDataAccessException e ) {
			logger.info("No spotlight entries found");
		}
		
		return spotlightBeans;
		
	}

	public int deleteSpotlight(int id) {
		
		String sql = "DELETE FROM SPOTLIGHT_DETAILS WHERE SPOTLIGHT_DETAILS_ID = ?";		
		int result = jdbcTemplate.update(sql,id);
		
		return result;
	}

	public SpotlightBean getSpotlight(int spotId) {
		String sql = "SELECT * FROM SPOTLIGHT_DETAILS WHERE SPOTLIGHT_DETAILS_ID = ?";
		
		SpotlightBean spotlightBean = null;		
		try {			
			spotlightBean = jdbcTemplate.queryForObject(sql, new SpotlightRowMapper(), spotId);			
		} catch (EmptyResultDataAccessException e ) {
			logger.info("No spotlight entries found");
		}
		
		return spotlightBean;
	}

	public int updateSpotlightEntry(int spotlightEntryId,String title, String description) {
		
		System.out.println("inside update 1");
		String sql = "UPDATE SPOTLIGHT_DETAILS SET TITLE = ?, DESCRIPTION = ? WHERE SPOTLIGHT_DETAILS_ID = ?";
		return jdbcTemplate.update(sql, title,description,spotlightEntryId);
		
	}
	
	public int updateSpotlightEntry(int spotlightEntryId, String title, String description, InputStream inputStream) {
		
		System.out.println("inside update 2");
		
		String sql = "UPDATE SPOTLIGHT_DETAILS SET TITLE = ?, DESCRIPTION = ?, IMAGE = ? WHERE SPOTLIGHT_DETAILS_ID = ?";
		return jdbcTemplate.update(sql, title,description,inputStream,spotlightEntryId);
		
	}

	public String getUserByUserName(String userName, String password) {
		
		
		String sql = "SELECT LOGIN_ID FROM USERS WHERE LOGIN_ID=? AND PASSWD=PASSWORD('"+password+"')";
		
		String user = "";
		
		try{
			user = jdbcTemplate.queryForObject(sql, String.class, userName);
		} catch(EmptyResultDataAccessException e) {
			logger.info("No user found with user name:"+userName , e);
		}
		
		return user;
	}
}
