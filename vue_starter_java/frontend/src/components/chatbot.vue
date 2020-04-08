<template>
    <body>
        <nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" href="https://bulma.io">
      <img src="//static1.squarespace.com/static/55ef2da9e4b03f6e1ef0cd28/t/5dceda76b702913cebc1d05e/1586375316161/?format=1500w" alt="Tech Elevator Coding Bootcamp " class="Header-branding-logo">
    </a>

    <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">
      <router-link :to="{ name: 'chatbot' }">
      <a class="navbar-item is-family-sans-serif">
        Chatbot
      </a>
      </router-link>

      <a class="navbar-item is-family-sans-serif">
        FAQS
      </a>

      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-item is-family-sans-serif" href = "http://www.techelevator.com">
          TE Official
        </a>
      </div>
    </div>

    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">
          <router-link :to="{ name: 'register' }">
          <a class="button is-info">
            <strong>Sign up</strong>
          </a>
          </router-link>
         <router-link :to="{ name: 'login' }">
          <a class="button is-light">
            Log in
          </a>
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
        <section class = "chat-bot" ref="chatbot">
         <div class = "chat-box-list-container" >
            <ul class = "chat-bot-list" >
                <li class = 'message server'><p>Hi there, nice to meet you! What's your name?</p><li>
                <li class="message"
                    v-for="(message, index) in messages" 
                    :key="index"
                    :class="message.writer">
                        <p>
                            <span class="is-family-monospace">{{ message.text }}</span>
                        </p>
                </li>
            </ul>
             </div>
        </section> 
        <div class = "chat-inputs">
                <input type="text"
                v-model="message"
                @keyup.enter="sendMessage" />
                <button @click="sendMessage" class="button is-light">Send</button>
            </div>
         </section>
         <footer class="footer">
  <div class="container">
    <div class="content has-text-centered">
        <p class="has-text-success">remove me</p>
    </div>
  </div>
</footer>
    </body>
</template>



<script>
import axios from 'axios'

export default {
    name: 'chatbot',
    data: () =>({
        message: '',
        messages: [],
        userName: ''
    }),

    methods: {
        sendMessage(){
<<<<<<< HEAD
                const message = this.message;
                // const token = localStorage.data.id;
            

=======
            const message = this.message;
>>>>>>> df1e7c829903d621f570c8b8e51d48cd71e1d355

            if(!this.userName){
                this.userName = message;

                this.messages.push({
                    text: message,
                    writer: 'client'
                });

                this.messages.push({
                    text: `Thanks, ${this.userName}, what can I do for you?`,
                    writer: 'server'
                });
            } else if (message.includes('quote')){
                
                this.messages.push({
                    text:message,
                    writer:'client'
                });

                axios.get('https://type.fit/api/quotes')
                .then(res => {

                    let quote = Math.floor(Math.random() * 1642);

                     if (res.data[quote].author == null) {
                         this.messages.push({
                             text: '"' + res.data[quote].text + '" -Unknown',
                             writer: 'server'
                        });
                    } else {
                        this.messages.push({
                            text: '"' + res.data[quote].text + '" -' + res.data[quote].author,
                            writer: 'server'
                        });
                    }
                })
                .catch(err => console.error(err));
            } else {
                
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
                })}
            })
            .catch(error => console.error(error));
            

                this.$nextTick(() => {
                this.$refs.chatbot.scrollTop = this.$refs.chatbot.scrollHeight
            })
            
            }
            this.message = '';
        
        }
    }
    
}
            
            // CAT FACTS CONNECTION
            // axios.get('https://catfact.ninja/fact')
            // .then(res =>{


            //     this.messages.push({
            //         message: res.data.fact
            //     })
                
            // })

</script>

<style lang="scss" scoped>


body {
    background: white;
     background: radial-gradient(circle,rgba(72,199, 116, 1) 25%, rgba(50, 152, 220,1)  80%);

}

.chat-bot,
.chat-bot-list-container{
    display: flex;
    flex-direction: column;
    list-style-type: none ;
    overflow: scroll;
    background: white;
    height: 60vh;
}
.chat-bot-list{
    padding-left: 10px;
    padding-right: 10px;
    background-color: white;

    .server{
        margin-right: 25px;
        span{
            max-width: 40vw;
            
                    }
    p{
            background: green;
            color: white;
            padding: 8px;
            border-radius: 4px;
            opacity: 0.8;
            border-bottom: none;
            border-top-right-radius: 4px;
            text-align: left;
            display: block;
            
       
    }
    }
    .client{
        margin-left: 25px;
        span{
           max-width: 40vw;
        }
        p{
            background: hsl(204, 86%, 53%);
            color: white;
            padding: 8px;
            border-radius: 4px;
            opacity: 0.8;
            text-align: right;
            display: block;
            
            
        }
    }
}

.chat-bot{
    border: 1px solid #999;
    width: 50vw;
    border-radius: 4px;
    margin-left: auto;
    margin-right: auto;
    align-items: space-between;
}
.chat-inputs{
  display: flex;
    justify-content: center;
  input{
      align-items: space-around;
      width: 45vw;
      padding-left: 15px

  }
}
.container{
 width: 50vw;

}
.message{
background-color: white;
border-radius: 12px;

}

.footer{
    background: rgb(255,255,255);
    background: radial-gradient(circle,rgba(72,199, 116, 1) 28%, rgba(50, 152, 220,1)  85%);
    margin-top: 0%;
    
    
    

}
</style>