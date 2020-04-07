package com.techelevator.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCMessageDao implements MessageDao {

    private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCMessageDao(DataSource datasource) {
		this.jdbcTemplate = new JdbcTemplate(datasource);
	}
	
	@Override
	public Message searchByKeyword(String keyword) {

		String sqlSearch = "SELECT answer FROM responses JOIN keywords ON responses.id = keywords.keywordid WHERE keywords.words = ?";
		
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSearch, keyword);
		
		Message response = new Message();
		
		results.next();
		
		if(results != null) {
			
			response.setResponse(results.getString("answer"));
		}

		return response;
	}

}
