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
        <div class = "chat-inputs">
                <input type="text"
                v-model="message"
                @keyup.enter="sendMessage" />
                <button @click="sendMessage" class="button is-success">Send</button>
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

            } else if (this.messages[this.messages.length - 1].text.match("What type of job are you looking for?")) {
                
                this.getJobType();

            } else if (this.jobType && !this.location && !this.state) {

                this.getLocation();

            } else if (this.jobType && this.location && !this.state) {
                
                this.inputValidation();

            } else if ((message.includes('find') || message.includes('finding')) && (message.includes('job') || message.includes('jobs')) || (this.jobType && this.location)) {
                
                this.findJob();

            } else if (message.includes('quote')) {

                this.getQuote();

            } else if (message.includes('cat')) {

                this.getCatFact();

            } else {

                this.getKeyword();

            }

        this.$nextTick(() => {
          this.$refs.chatbot.scrollTop = this.$refs.chatbot.scrollHeight;
        });
      
      this.message = "";
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
            })
        
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
    },
}


}

</script>

<style lang="scss" scoped>
body {
  
  background: rgb(255, 255, 255);
  background: linear-gradient(
    142deg,
    rgba(255, 255, 255, 1) 53%,
    rgba(139, 196, 64, 1) 56%,
    rgba(255, 255, 255, 1) 58%,
    rgba(0, 176, 240, 1) 62%
  );
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
  border: 1px solid #999;
  border-top: hidden;
  input {
    align-items: space-around;
    width: 45vw;
    padding-left: 15px;
    line-height: 3;
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

.footer {
  background: rgb(255, 255, 255);
  height: 30vh;
  color: white;
  border-top: grey 8px;
}
</style>