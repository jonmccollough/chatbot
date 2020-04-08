# Chatbot API Documentation


## POST http://localhost:8080/capstone-backend/login
* Post a valid username and password to this, and it will return to you a valid token. Further get requests will need to bear that token to allow requester to access. 

## GET http://localhost:8080/capstone-backend/api/options
* returns an array of objects. Each object has a response key that matches a string value. The String is a keyword our API listens for. 

## GET http://localhost:8080/capstone-backend/api/keyword/{{KEYWORD}}
* replace {{KEYWORD}} with a particular keyword to return a single object with the response that corresponds with the keyword.

## GET http://localhost:8080/capstone-backend/api/call/{{RAWTEXT}}
* replace {{RAWTEXT}} with any text and it will return one of three things
1. 1: A list of objects containing a single object, which has a response key set to equal the corresponding string response from our database. Its boolean "containsKeyword" will be true, and its boolean "matchingMultipleKeywords" will be false. 
2. 2:  A list of objects, one for each matching keyword in the passed text. NOTE: in this case, rather than the corresponding response from our database, it's simply passing back which keywords were matched. Its booleans "containsKeyword" will be true, and its booleans "matchingMultipleKeywords" will also be true. 
3. 3: A list of one object, with a response set to null and both booleans set to false. 

IMPORTANT: while the booleans show up for all of our response items, they only mean something in the case of the api/call GET method, in which case they indicate whether there was a match and if there was more than one match.
