package com.techelevator.model;

import java.util.List;

public interface MessageDao {

	public Message searchByKeyword(String keyword);
	
	public List<String> listAvailableKeywords();
	
}
