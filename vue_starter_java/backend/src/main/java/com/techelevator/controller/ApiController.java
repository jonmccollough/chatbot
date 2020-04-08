package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.JwtAuthInterceptor;
import com.techelevator.authentication.JwtTokenHandler;
import com.techelevator.authentication.UnauthorizedException;
import com.techelevator.model.Message;
import com.techelevator.model.MessageDao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * ApiController
 */
@RestController
@CrossOrigin
@RequestMapping("/api")
public class ApiController {

    @Autowired
    private AuthProvider authProvider;

    @Autowired
    private MessageDao messageDao;
    
    @GetMapping("/keyword/{keyword}")
	public Message searchByParticularKeyword(@PathVariable String keyword) {
		return messageDao.searchByKeyword(keyword);
	}
    
    @GetMapping("/options")
	public List<Message> viewOptions() {
		List<String> keywordsRaw = messageDao.listAvailableKeywords();
		List<Message> options = new ArrayList<Message>();
		for(String word : keywordsRaw) {
			Message newMessage = new Message();
			newMessage.setResponse(word);
			options.add(newMessage);
		}
		return options;
	}
    
    @GetMapping("/call/{input}")
	public List<Message> searchByString(@PathVariable String input) {
    	
    	List<Message> responses = new ArrayList<Message>();
    	
    	if(messageDao.containsAKeyword(input)) {
    		List<String> matches = messageDao.scanStringForKeywords(input);
    		if (matches.size() > 1) {
    			for(String word : matches ) {
        			Message addition = new Message();
        			addition.setContainsKeyword(true);
        			addition.setMatchingMultipleKeywords(true);
        			addition.setResponse(word);
        			responses.add(addition);
        		}
    		} else if (matches.size() == 1) {
    			Message dbAnswer = messageDao.searchByKeyword(matches.get(0));
    			dbAnswer.setContainsKeyword(true);
    			dbAnswer.setMatchingMultipleKeywords(false);
    			responses.add(dbAnswer);
    		}
    	} else {
    		Message noAnswer = new Message();
    		noAnswer.setResponse(null);
    		noAnswer.setContainsKeyword(false);
    		noAnswer.setMatchingMultipleKeywords(false);
    		responses.add(noAnswer);
    	}
    	
		return responses;
	}
    
    
    
}