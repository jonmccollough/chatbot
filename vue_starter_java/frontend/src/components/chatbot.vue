<template>
    <body>
    <section class ="container">
       <section class="hero is-success is-bold">
           <div class="hero-body">
               <div class="container">
                   <h1 class="title">
                       Tech Elevator
                   </h1>
                   <h2 class="subtitle">
                       Student chatbot
                       </h2>
               </div>
           </div>
       </section>
       
        <section class = "chat-bot" ref="chatbot">
         <div class = "chat-box-list-container">
            <ul class = "chat-bot-list">
        
                      <li class="message"
                        v-for="{message, index} in messages" 
                        :key="index">
                    <p>
                        <span>{{ message }}</span>
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
import axios from 'axios'

export default {
    name: 'chatbot',
    data: () =>({
        message: '',
        messages: []
    }),

    methods: {
        sendMessage(){
                const message = this.message;

            this.messages.push({
                message,
              
            })
            this.message = '';

            axios.get('https://type.fit/api/quotes')
            .then(res => {

                let quote = Math.floor(Math.random() * 1642);

                this.messages.push({
                    message: '"' + res.data[quote].text + '" -' + res.data[quote].author
                })
                
            })
            // CAT FACTS CONNECTION
            // axios.get('https://catfact.ninja/fact')
            // .then(res =>{


            //     this.messages.push({
            //         message: res.data.fact
            //     })
                
            // })
            this.$nextTick(() => {
                this.$refs.chatbot.scrollTop = this.$refs.chatbot.scrollHeight
            }) 
        }
    }

}
</script>

<style lang="scss" scoped>

.chat-bot,
.chat-bot-list{
    display: flex;
    flex-direction: column;
    list-style-type: none ;
    overflow: scroll;
    background: white;
    height: 50vh;
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
body {
    background: rgb(255, 255, 255);
    background: linear-gradient(360deg, rgba(0, 176, 240,1) 0%, rgba(255,255, 255, 0) 100%);
}
</style>