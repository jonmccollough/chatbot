<template>
<body>

    <section class ="container">
       <section class="hero is-small is-family-sans-serif is-info">
           <div class="hero-body">
               <div class="container">
                   <h1 class="title" style="color: white">
                       TECH ELEVATOR
                   </h1>
                   <h2 class="subtitle" style="color: white">
                       Student Chatbot
                       </h2>
               </div>
           </div>
       </section> 
        <section class = "chat-bot"  ref="chatbot">
         <div class = "chat-box-list-container"  >
            <ul class = "chat-bot-list" >
                <li class = 'message server'>
                    <p>
                        <span class="is-family-monospace">Hi there, nice to meet you! What's your name?</span>
                    </p>
                </li>
                <li class="message"
                    v-for="(message, index) in messages" 
                    :key="index"
                    :class="message.writer">
                        <p>
                            <span class="is-family-monospace" v-html="message.text"></span>
                        </p> 
                </li>
            </ul>
             </div>
        </section> 
        <div class = "chat-inputs is-flex-mobile">
            <input type="text"
              v-model="message"
              @keyup.enter="sendMessage" />
            <button @click="sendMessage" @dblclick="sendSMS" class="button is-success">Send</button>
        </div>

        <div class="modal" id="modal">
          <div class="modal-background" id="bgClose"></div>
           <div class="modal-content">
              <div class="field">
                <label class="label">Send SMS to:</label>
                <div class="control">
                  <input class="input" id="phone" type="text" placeholder="Text input">
                </div>
                <p class="help">Please enter a 10 digit phone number</p>
                <div class="control is-pulled-right">
                  <button class="button is-success is-small" disabled>Submit</button>
                  <button class="button is-danger is-small" id="cancel">Cancel</button>
                </div>
              </div>
            </div>
            <button class="modal-close" id="close" aria-label="close"></button>
          </div>

    </section>
  </body>
</template>

<script>
import axios from 'axios';

export default {
    name: 'chatbot',
    data: () =>({
        message: '',
        messages: [],
        userName: '',
        jobType:'',
        location:'',
        state: ''
    }),
    methods: {
        sendMessage(){
            const message = this.message;

            if (!this.userName) {

                this.getUsername();

            } else if(this.message.toLowerCase() === "help"){

              this.showHelp();

            }else if (this.messages[this.messages.length - 1].text === "What type of job are you looking for?") {
                
                this.getJobType();

            } else if (this.jobType && !this.location && !this.state) {

                this.getLocation();

            } else if (this.jobType && this.location && !this.state) {
                
                this.inputValidation();

            } else if ((message.includes('find') || message.includes('finding')) && (message.includes('job') || message.includes('jobs')) || (this.jobType && this.location)) {
                
                this.findJob();

            } else if (message.includes('wolfram')) {

                this.searchWolfram();

            }  else if (message.includes('quote')) {

                this.getQuote();

            } else if ( (message.includes('beer')) ||  (message.includes('brewery')) || (message.includes('alcohol')) ) {

                this.getBrews()

            } else if (message.includes('cat')) {

                this.getCatFact();

            } else {

                this.getKeyword();

            }
      
      this.message = "";
    },

    sendSMS() {
      let modal = document.getElementById('modal');
      let close = document.getElementById('close');
      let cancel = document.getElementById('cancel');
      let bgClose = document.getElementById('bgClose');
      let closeModal = () => {modal.style.display = 'none';}

      modal.style.display = 'block';

      close.onclick = closeModal;
      cancel.onclick = closeModal;
      bgClose.onclick = closeModal;

      const accountSid = 'ACb17eece6228a5633f62b48f6052eddc5';
      const authToken = 'f63a8c1470779bd80dd0be8ef7310b04';
      const client = require('twilio')(accountSid, authToken);

      // let phone = '';
      // let smsInput = prompt('Please enter a 10 digit phone number:', '');
      // if (smsInput != null || smsInput.length >= 10) {
      //   phone = '+1' + smsInput;
      // }

      // if (phone != null) {
      //   if(confirm('Send SMS to ' + phone + '?')) {
      //     client.messages
      //       .create({
      //         body: 'This is the ship that made the Kessel Run in fourteen parsecs?',
      //         from: '+14124078187',
      //         to: '+14848329628'
      //       })
      //       .then(message => console.log(message.sid));
      //   }
        
      // } else {
      //   alert('SMS canceled!');
      // }

    },

    autoScroll() {
      this.$nextTick(() => {
          this.$refs.chatbot.scrollTop = this.$refs.chatbot.scrollHeight;
      });
    },

    getQuote() {
      const message = this.message;

      this.messages.push({
        text: message,
        writer:'client'
      });

      axios.get('https://type.fit/api/quotes')
        .then(res => {

            let quote = Math.floor(Math.random() * 1642);
            let auth = res.data[quote].author;

            if (auth == null) {
                auth = 'Unknown';
            }
                    
            this.messages.push({
                text: 'Quote #'+ quote + ': "' + res.data[quote].text + '" -' + auth,
                writer: 'server'
            });

            this.autoScroll();
        
        })
        .catch(err => console.error(err));
    },
    
    getCatFact() {
      const message = this.message;

      this.messages.push({
        text: message,
        writer: 'client'
      });

      axios.get('https://catfact.ninja/fact')
        .then(res =>{

            this.messages.push({
                text: 'Cat Fact: ' + res.data.fact,
                writer: 'server'
            });

            this.autoScroll();
                
        })
        .catch(error => console.error(error));
       
    },


    searchWolfram() {
        const message = this.message;

        this.messages.push({
            text: message,
            writer: 'client'
        });
    
        const splitUp = message.split('//');
        const plussed = splitUp[1].split(' ').join('+');


        this.messages.push({
            text:'<img src="http://api.wolframalpha.com/v1/simple?appid=PE9ATK-53H98RPU4H&i=' + plussed + '"' + '/>',
            writer: 'server'
        });
              this.autoScroll();
                
    },

    getBrews() {
      const message = this.message;

      this.messages.push({
        text: message,
        writer: 'client'
      });

      let stringified = "Checking the Open Brewery Database for Pittsburgh breweries... <br><br>";

      axios.get('https://api.openbrewerydb.org/breweries?by_state=pennsylvania&by_city=pittsburgh&sort=+name')
          .then(res =>{

            const beerResponses = res.data;

            beerResponses.forEach( (brewery) => {
                if(brewery.street != ""){
                stringified = stringified + brewery.name + " is at " + brewery.street + "." + "<br>";
                } else {
                  stringified = stringified + brewery.name + "<br>";
                }
            });

              this.messages.push({
                  text: stringified,
                  writer: 'server'
              })

            this.autoScroll();


          })
        .catch(error => console.error(error));
    },

    getKeyword() {
      const message = this.message;

      this.messages.push({
        text: message,
        writer: 'client'
      });

      axios.get(`http://localhost:8080/capstone-backend/api/call/${message}`, {headers:{"Authorization" :  'Bearer ' + localStorage.getItem('Authorization')}})
        .then((res) => {

            if(!res.data[0].matchingMultipleKeywords && res.data[0].containsKeyword){
                this.messages.push({
                    text: res.data[0].response,
                    writer: 'server',
                })}

            if(res.data[0].matchingMultipleKeywords){
                let concatted = 'Sorry, could you be a little more specific? Try typing one of these words: ';
                res.data.forEach(element => {
                    concatted = concatted + " " + (element.response);
                });

                this.messages.push({
                    text: concatted,
                    writer: 'server',
                })
            }
                
            if(!res.data[0].containsKeyword){
                this.messages.push({
                    text: "Sorry! I didn't quite get that. Could you try saying that again?",
                    writer: 'server',
                })
            }

            this.autoScroll();
        })
        .catch(error => console.error(error));
    },

    getUsername() {
      const message = this.message;

      this.userName = message;

      this.messages.push({
          text: message,
          writer: 'client'
      });

      this.messages.push({
          text: `Thanks, ${this.userName}, what can I do for you?`,
          writer: 'server'
      });
    },
    
    findJob() {
      const message = this.message;

      const urlJobType = this.jobType.replace(/\s/g, '+');
      const urlLocation = this.location.replace(/\s/g, '+') + "%2C+" + this.state; 
      const jobSearchUrl = `https://www.indeed.com/jobs?q=${urlJobType}&l=${urlLocation}`;

      if(this.jobType && this.location){
          this.messages.push({
              text: `Here's a link to <a href=${jobSearchUrl} target = "_blank">${this.jobType} jobs in ${this.location}, ${this.state}</a>`,
              writer: 'server'
          });

          this.location='';
          this.state='';
          this.jobType='';

      } else {
          this.messages.push({
              text: message,
              writer: 'client'
          });

          this.messages.push({
              text: "What type of job are you looking for?",
              writer: 'server'
          });
      }

      this.autoScroll();
    },

    getJobType() {
      const message = this.message;

      this.messages.push({
          text: message,
          writer: 'client'
      });

      this.jobType = message;

      this.messages.push({
          text: "Great, where would you like to search for available positions? (City, State (eg. PA, OH, VA))",
          writer: 'server'
      });

      this.autoScroll();
    },

    getLocation() {
      const message = this.message;

      this.messages.push({
          text: message,
          writer: 'client'
      });

      const cityState = message.split(", ");
      this.location = cityState[0];

      if( cityState[1] == null || cityState[1].length != 2){
          this.messages.push({
              text: 'Please provide the location in "City, State" format (PA, OH, VA, etc.)',
              writer: 'server'
          });

      } else {
          this.state = cityState[1];
          this.sendMessage();
      }

      this.autoScroll();
    },

    inputValidation() {
      const message = this.message;

      this.messages.push({
          text: message,
          writer: 'client'
      });

      const cityState = message.split(", ");
      this.location = cityState[0];

      if( cityState[1] == null || cityState[1].length != 2){

          this.messages.push({
              text: "Sorry, let's try something else. What can I help you with?",
              writer: 'server'
          });

          this.location = '';
          this.jobType='';

      } else {
          this.state = cityState[1];
          this.sendMessage();
      }

      this.autoScroll();
    },

    showHelp(){

      this.messages.push({
        text: this.message,
        writer: 'client'
      });

      this.messages.push({
        text: "Try asking me about common topics at Tech Elevator. I know a little bit about the basics of coding, plus the Pathway program. For instance, try typing \"interviewing\" or \"MVC\". Check our FAQ for a full list of commands",
        writer: 'server'
      });

    }
}


}

</script>

<style lang="scss" scoped>
body {
    background: -webkit-linear-gradient(70deg, #00b0f0  30%, rgba(0,0,0,0) 30%), -webkit-linear-gradient(40deg, white 60%, #8bc440 60%);
    background: -o-linear-gradient(70deg, #00b0f0 30%, rgba(0,0,0,0) 30%), -o-linear-gradient(40deg, white 60%, #8bc440 60%);
    background: -moz-linear-gradient(70deg, #00b0f0 30%, rgba(0,0,0,0) 30%), -moz-linear-gradient(40deg, white 60%, #8bc440 60%);
    background: linear-gradient(70deg, #00b0f0  30%, rgba(0,0,0,0) 30%), linear-gradient(40deg, white 60%, #8bc440 60%);
}

.chat-bot,
.chat-bot-list{
  display: flex;
  list-style-type:none;
  flex-direction: column;
  background-color: white;
  padding-left: 10px;
  padding-right: 10px;
}
.chat-bot-list-container{
  display: flex;
  background-color: white;
  overflow: scroll;
  
}

.chat-bot-list{
    background-color: white;
    align-content: center;
    

    .span{
           padding: 8px;
           color: white;
          
           
    }
    
    .server{
        
        span{
         color: white;
         border-radius: 4px;   
                    }
    p{
           float: left;
           border-radius: 4px; 
           background: green;
           opacity: 0.8;
           padding-right: 6px;
           padding-left: 6px;
           
    }
    
    }
    .client{
      span{
        color: white;
        border-radius: 4px;
      }
    p {
      float: right;
      background: blue;
      border-radius: 4px;
      opacity: 0.8;
      padding-right: 6px;
      padding-left: 6px;
      
    }
  }
}

.chat-bot {
  overflow-y: scroll;
  border: 1px solid #999;
  width: 50vw;
  height: 50vh;
  align-items: space-between;
  margin-right: auto;
  margin-left: auto;
  
}
.chat-inputs {
  display: flex;
  justify-content: center;
  
  border-top: hidden;
  input {
    align-items: space-around;
    width: 45vw;
    padding-left: 15px;
    line-height: 3;
    border: 1px solid #999;
  }
}
.container {
  width: 50vw;
  display: flex;
  flex-direction: column;
}
.message {
  background-color: white;
  border-radius: 12px;
}

.modal-content {
  background-color: white;
  border-radius: 5px;
  top: 30%;
  padding: 1%;
}


</style>