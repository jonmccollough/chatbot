<template>
  <div class="home" ref = "home">
    <header-vue/>
    <chatbot/>
    <footer-vue/>
  </div>
</template>

<script>
import chatbot from '@/components/chatbot.vue';
import HeaderVue from '@/components/HeaderVue.vue';
import FooterVue from '@/components/FooterVue.vue';

export default {
  name: 'home',


  components: {
    chatbot,
    HeaderVue,
    FooterVue
  }
}
</script>
