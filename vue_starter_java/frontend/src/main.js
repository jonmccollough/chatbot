import Vue from 'vue'
import App from './App.vue'
import router from './router'
import axios from 'axios'
import './../node_modules/bulma/css/bulma.css';

Vue.config.productionTip = false


new Vue({
  router,
  render: h => h(App)
}).$mount('#app')

Vue.prototype.$http = axios;
Vue.prototype.axios = axios;