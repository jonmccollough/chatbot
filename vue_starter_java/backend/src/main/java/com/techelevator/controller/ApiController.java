package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
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
	public Message searchForResponse(@PathVariable String keyword) {
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
    
    
    
}