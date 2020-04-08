<template>
    <body>
    <section class ="container">
       <section class="hero is-small is-family-sans-serif" style="background-color:#00b0f0">
           <div class="hero-body">
               <div class="container">
                   <h1 class="title" style="color: white">
                       TECH ELEVATOR
                   </h1>
                   <h2 class="subtitle" style="color: white">
                       $tUd3nT Ch4tB0T
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
        messages: [],
        userName: ''
    }),

    methods: {
        sendMessage(){
                const message = this.message;
                // const token = localStorage.data.id;

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
            } else {

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
        
        }
    }
    
}
            // axios.get('https://type.fit/api/quotes')
            // .then(res => {

            //     let quote = Math.floor(Math.random() * 1642);

            //      if (res.data[quote].author == null) {
            //          this.messages.push({
            //              text: '"' + res.data[quote].text + '" -Unknown',
            //              writer: 'server'
            //           })
            //      } else {
            //          this.messages.push({
            //              text: '"' + res.data[quote].text + '" -' + res.data[quote].author,
            //              writer: 'server'
            //          })
            //      }
            
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
    background: radial-gradient(circle,rgba(0,176, 240, 1) 20%, rgba(255, 255, 255,1)  90%);

}

.chat-bot,
.chat-bot-list-container{
    display: flex;
    flex-direction: column;
    list-style-type: none ;
    overflow: scroll;
    background: white;
    height: 50vh;
}
.chat-bot-list{
    padding-left: 10px;
    padding-right: 10px;
    background: white;

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


</style>