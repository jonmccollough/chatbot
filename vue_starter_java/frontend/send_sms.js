const accountSid = 'ACb17eece6228a5633f62b48f6052eddc5';
const authToken = 'f63a8c1470779bd80dd0be8ef7310b04';
const client = require('twilio')(accountSid, authToken);

client.messages
  .create({
     body: 'This is the ship that made the Kessel Run in fourteen parsecs?',
     from: '+14124078187',
     to: '+14848329628'
   })
  .then(message => console.log(message.sid));