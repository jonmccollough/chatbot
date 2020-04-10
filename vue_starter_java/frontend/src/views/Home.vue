<template>
  <div class="home" ref = "home">
    <chatbot/>
  </div>
</template>

<script>
import chatbot from '@/components/chatbot.vue';

export default {
  name: 'home',


  components: {
    chatbot
  }
}
</script>
