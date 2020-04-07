<template>
  <div id="app">
    <home/>
    <chatbot/>
  </div>
</template>

<script>
import chatbot from '@/components/chatbot.vue';
import home from '@/views/Home';

export default {
name: 'app',
components: {
  chatbot,
  home,
},  
data (){

},
methods: {

}
}
</script>
