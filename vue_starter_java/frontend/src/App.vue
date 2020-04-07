<template>
  <div id="app">
    <home/>
    <chatbot>
      </chatbot>
  <!--  <div id="nav">
      
      <router-link to="/">Home</router-link>
    </div>
    <router-view/> -->
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
