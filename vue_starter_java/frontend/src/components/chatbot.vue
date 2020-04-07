<template>

    <section class ="chat-bot">
         
        <div class = "chat-bot-list">
           
            <ul class ="content">
                <li class="message"
                 v-for="{message, index} in messages" 
                 :key="index">
                    <p>
                        <span>{{ message }}</span>
                    </p>
                </li>
            </ul>
        </div>

        <div class = "input is-info">
            <input type="text"
            v-model="message"
            @keyup.enter="sendMessage" class = "input is-info" />
            <button @click="sendMessage" class="button is-success">Send</button>
        </div>
    </section>
</template>



<script>

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
                message
            })
             this.message = '';
        
            this.$axios.get('https://api.kanye.rest')
            .then(res =>{
                   
                       console.log(res.data.json());
                        
                    
            })
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
    list-style-type:none ;
    overflow: scroll;
}
.chat-bot{
    border: 1px solid #999;
    width: 50vw;
    height: 50vh;
    border-radius: 4px;
    margin-left: auto;
    margin-right: auto;
    align-items: space-between;
}
.chat-inputs{
        display: flex;
        
         input {
            line-height: 5;
            width: 100%;
        }
    
}


</style>