package com.molcon.phibase.bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.codec.binary.Base64;
import org.springframework.jdbc.core.RowMapper;

public class SpotlightRowMapper implements RowMapper<SpotlightBean> {

	@Override
	public SpotlightBean mapRow(ResultSet rs, int arg1) throws SQLException {
		
		SpotlightBean bean = new SpotlightBean();
		
		bean.setId(rs.getInt("SPOTLIGHT_DETAILS_ID"));
		bean.setTitle(rs.getString("TITLE"));
		bean.setDescription(rs.getString("DESCRIPTION"));
		bean.setImage(rs.getBytes("IMAGE"));
		
		if( null != bean.getImage() ) {
			String imageStr = "data:image/png;base64,"+Base64.encodeBase64String(bean.getImage());
			bean.setImageStr(imageStr);
		}
		
		Date date = rs.getDate("DATE");
		
		if( null != date ) {
			SimpleDateFormat sdf = new SimpleDateFormat("MMMM yyyy");
			String dateStr = sdf.format(date);
			bean.setDate(dateStr);
		}
		
		return bean;
	}

}
