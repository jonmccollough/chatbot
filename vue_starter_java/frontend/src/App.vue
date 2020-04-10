<template>
  <div id="app">
    
    <header-vue/>
    <router-view/>
    <footer-vue/>

  </div>

</template>

<script>

import FooterVue from '@/components/FooterVue';
import HeaderVue from '@/components/HeaderVue'

export default {
  name: 'app',

  components: {
    FooterVue,
    HeaderVue,
  },

}
</script>
