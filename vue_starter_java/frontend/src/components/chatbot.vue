<template>
<body>
  <nav class="navbar" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
      <a class="navbar-item" href="https://www.techelevator.com" target="_blank">
        <img
          src="//static1.squarespace.com/static/55ef2da9e4b03f6e1ef0cd28/t/5dceda76b702913cebc1d05e/1586375316161/?format=1500w"
          alt="Tech Elevator Coding Bootcamp "
          class="Header-branding-logo"
        />
      </a>

      <a
        role="button"
        class="navbar-burger burger"
        aria-label="menu"
        aria-expanded="false"
        data-target="navbarBasicExample"
      >
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
      </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
      <div class="navbar-start">
        <a class="navbar-item is-family-sans-serif" href="/">CHATBOT</a>

        <a class="navbar-item is-family-sans-serif" href="faq">FAQS</a>

        <div class="navbar-item has-dropdown is-hoverable">
          <a
            class="navbar-item is-family-sans-serif"
            href="http://www.techelevator.com/events" target="_blank"
          >CALENDAR</a>
        </div>
      </div>

      <div class="navbar-end">
        <div class="navbar-item">
          <div class="buttons">
            <router-link :to="{ name: 'register' }">
              <a class="button is-primary">
                <strong>Sign up</strong>
              </a>
            </router-link>
            <router-link :to="{ name: 'login' }">
              <a class="button is-light">Log in</a>
            </router-link>
          </div>
        </div>
      </div>
    </div>
  
</nav>
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
                <button @click="sendMessage" class="button is-dark">Send</button>
            </div>
    </section>
  <footer class="footer">
    <div class="container">
      <div class="columns">
        <div class="column is-one-third">
          <div class="is-pulled-left">
            <p>
              <a class="has-text-grey" href="http://www.techelevator.com">tech elevator</a>
            </p>
            <p>
              <a class="has-text-grey" href="mailto:hello@techelevator.com">hello@techelevator.com</a>
            </p>
            <p>
              <a class="has-text-grey" href="tel:8776063203">877.606.3203</a>
            </p>
          </div>
        </div>
        <div class="column">
          <div class="is-centered">
            <p>
              <a class="has-text-grey" href="http://www.techeelevator.com/events">events</a>
            </p>
            <p>
              <a class="has-text-grey">faqs</a>
            </p>
          </div>
        </div>

        <div class="column">
          <div class="is-pulled-right">
            <figure class="image is-24x24">
              <a href="https://facebook.com/techelevator">
                <img src="@/img/fb.png" />
              </a>
              <a href="https://instagram.com/techelevator">
                <img src="@/img/ig.png" />
              </a>
              <a href="https://linkedin.com/school/tech_elevator">
                <img src="@/img/li.png" />
              </a>
              <a href="https://twitter.com/Tech_Elevator">
                <img src="@/img/tw.png" />
              </a>
              <a href="https://youtube.com/techelevatorcodeschool">
                <img src="@/img/yt.png" />
              </a>
            </figure>
          </div>
        </div>
      </div>
    </div>
  </footer>
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
      
      this.message = "";
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
  flex-direction: column;
  list-style-type: none;
  overflow: scroll;
}
.chat-bot-list-container{
  margin-bottom: 1px;
  display: flex;
  flex-direction: column;
  list-style-type: none;
  overflow: scroll;
  align-items: space-around;
}

.chat-bot-list{
    padding-left: 10px;
    padding-right: 10px;
    background-color: white;

    .span{
           padding: 8px;
           
           border-radius: 4px;
           
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
    }
  }
}

.chat-bot {
  
  border: 1px solid #999;
  width: 50vw;
  height: 50vh;
  align-items: space-between;
  justify-content: space-between;
}
.chat-inputs {
  display: flex;
  justify-content: center;
  border: 1px solid #999;
  border-top: none;
  input {
    align-items: space-around;
    width: 45vw;
    padding-left: 15px;
    line-height: 3;
  }
}
.container {
  width: 50vw;
}
.message {
  background-color: white;
  
}

.footer {
  background: rgb(255, 255, 255);
  height: 30vh;
  color: white;
  border-top: grey 8px;
}
</style>