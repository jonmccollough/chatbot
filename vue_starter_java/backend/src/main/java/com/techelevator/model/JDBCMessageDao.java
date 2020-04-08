package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

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

	@Override
	public List<String> listAvailableKeywords() {
		
		String sqlSelectAll = "SELECT words FROM keywords";
		
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAll);
		
		List<String> allKeywords = new ArrayList<String>();
		
		while(results.next()) {
			allKeywords.add(results.getString("words"));
		}
		
		return allKeywords;
	}

	@Override
	public boolean containsAKeyword(String userMessage) {

		boolean keywordCheck = false;
		
		String noSpaces = userMessage.replaceAll("\\s","");
		
		String allDown = noSpaces.toLowerCase();
		
		List<String> keywords = listAvailableKeywords();
		
		for(String word : keywords) {
			if (allDown.contains(word)) {
				keywordCheck = true;
			}
		}

		return keywordCheck;
	}

	@Override
	public List<String> scanStringForKeywords(String userMessage) {
		
		List<String> matchingKeywords = new ArrayList<String>();
		
		String noSpaces = userMessage.replaceAll("\\s","");
		
		String allDown = noSpaces.toLowerCase();
		
		List<String> keywords = listAvailableKeywords();
		
		for(String word : keywords) {
			if (allDown.contains(word)) {
				matchingKeywords.add(word);
			}
		}
		
		return matchingKeywords;
	}

}
