package com.molcon.phibase.service;

import java.awt.SplashScreen;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.commons.codec.binary.Base64;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.molcon.phibase.bean.SpotlightBean;
import com.molcon.phibase.command.PhibaseRegistrationCommand;
import com.molcon.phibase.dao.PhibaseDao;
import com.molcon.phibase.util.PhibaseUtil;

@Service
public class PhibaseService {
	Logger logger = Logger.getLogger(PhibaseService.class);
	@Autowired
	MessageSource messageSource;
	
	@Autowired
	PhibaseDao phibaseDao;
	
	public boolean writeRegUserInformation(PhibaseRegistrationCommand phibaseRegistrationCommand){
		
		boolean writeSuccess=false;
		String userInformationStr=messageSource.getMessage("userInformationPath", null, new Locale("en"));
		String userInformation=PhibaseUtil.getUserInformationTabSep(phibaseRegistrationCommand);
		Path userInformationPath=FileSystems.getDefault().getPath(userInformationStr);
		try {
			
			if(!Files.exists(userInformationPath,LinkOption.NOFOLLOW_LINKS)){
				Files.write(userInformationPath, userInformation.getBytes(),StandardOpenOption.CREATE_NEW);	
			}else{
				Files.write(userInformationPath,userInformation.getBytes(), StandardOpenOption.APPEND);	
			}
			writeSuccess=true;
		}catch (IOException e) {
			logger.info("Exception During Writing :"+e.getMessage());
			e.printStackTrace();
		}
		return writeSuccess;
	}

	public int addSpotlightEntry(String title, String description, MultipartFile image) throws IOException, SQLException {
		
		InputStream imageStream = image.getInputStream();		
		return phibaseDao.addSpotlightEntry(title, description, imageStream );
		
	}

	public SpotlightBean getLatestSpotlightEntry() {		
		return phibaseDao.getLatestSpotlightEntry();		
	}

	public List<SpotlightBean> getAllSpotlightBeans() {		
		return phibaseDao.getAllSpotlightBeans();		
	}

	public int deleteSpotlight(int id) {
		return phibaseDao.deleteSpotlight(id);
		
	}

	public SpotlightBean getSpotlight(int spotId) {
		return phibaseDao.getSpotlight(spotId);
	}

	public int updateSpotlightEntry(int spotlightEntryId, String title, String description, MultipartFile image) throws IOException {
		
		if( image.isEmpty() )
			return phibaseDao.updateSpotlightEntry(spotlightEntryId,title, description );
		else {
			InputStream imageStream = image.getInputStream();	
			return phibaseDao.updateSpotlightEntry(spotlightEntryId,title, description, imageStream );
		}
	}

	public boolean authenticateSpotLight(String userName, String password) {
		
		userName = userName.trim();
		password = password.trim();
		
		if( !userName.equals("") && !password.equals("")){
			
			String user = phibaseDao.getUserByUserName(userName,password);
			if(!user.equals("")){
				return true;
			}			
			return false;
		} else {
			return false;
		}
	}
}
