<template>
  <div id="app">
    
    <router-view/>

  </div>

</template>

<script>
import chatbot from '@/components/chatbot.vue';
export default {
name: 'app',
components: {
  chatbot,
}
}
</script>
