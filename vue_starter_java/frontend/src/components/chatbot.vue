<template>
    <section class ="chat-bot">
        <div class = "chat-bot-box-container">
            <ul class ="chat-bot-list">
                <li class="message" v-for="{message, index} in messages" :key="index">
                    <p>
                        <span>${{message.text}}</span>
                    </p>
                </li>
            </ul>
        </div>

        <div class = "chat-inputs">
            <input type="text"
            v-model="message"
            @keyup.enter="sendMessage" />
            <button @click="sendMessage">Send</button>
        </div>
    </section>
</template>



<script>
export default {
    name: 'ChatBot',
    data: () => ({
        message: '',
        messages: []
    }),

    methods: {
        sendMessage(){
            this.messages.push({
                text: this.currentMessage,
                author: 'client'
            }),

            this.$axios.get('https://catfact.ninja/fact?max_length=140')
            .then(res =>{
                    this.messages.push({
                        text: res.data.output,
                        author: 'server'
                    })
            })
        }
    }

}
</script>

<style>

</style>