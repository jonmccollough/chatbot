<template>
  <div id="app">
    
    <header-vue :isLoggedIn="loggedIn" @logOutEvent="logOutEventReceived" />
    <router-view @logInEvent="logInEventReceived" />
    <footer-vue/>

  </div>

</template>

<script>

import FooterVue from '@/components/FooterVue';
import HeaderVue from '@/components/HeaderVue';

export default {
  name: 'app',  
  
  data() {
    return {
      loggedIn: false
    }
  },

  components: {
    FooterVue,
    HeaderVue,
  },

  methods: {
    logInEventReceived: function() {
      this.loggedIn = true;
    },
    logOutEventReceived: function() {
      this.loggedIn = false;
    }
  }

}
</script>
