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
import auth from "@/auth.js"

export default {
  name: 'app',  
  
  data() {
    return {
      loggedIn: auth.getToken() ? true : false
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
