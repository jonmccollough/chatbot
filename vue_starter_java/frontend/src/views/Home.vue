<template>
  <div class="home" ref = "home">
    <chatbot/>
    <!-- Test for Job search, be sure to delete later -->
   <!-- <div @click="searchForJob">click here to test job search</div>

     <form @submit.prevent="searchForJob">
      <label for:job-title>Please enter type of job</label>
      <input type = "text" v-model="jobTitle"/>
      <label for:location>Where would you like to search?</label>
      <input type="text" v-model="location"/>
      <button type="submit">Search!</button>
    </form> -->

  </div>
</template>

<script>
import axios from 'axios';
import JobSearch from '@/components/JobSearch.vue';
import chatbot from '@/components/chatbot.vue'
import Vue from 'vue';


export default {
  name: 'home',

  data(){
    return {
      jobTitle: '',
      location: '',
      jobSearchResults: [],
    }
  },

  components: {
    // eslint-disable-next-line vue/no-unused-components
    JobSearch,
    chatbot
  },

  methods: {
    searchForJob(){
      axios.get(`https://www.themuse.com/api/public/jobs?keyword=${this.jobTitle}&location=${this.location}&page=1`)
      .then((result) =>{
        
        this.jobSearchResults = result.data.results;

        const jobSearchComponent = Vue.extend(JobSearch);
        const createJobSearchComponent = new jobSearchComponent({
          propsData: {
            jobType: this.jobTitle,
            location: this.location,
            jobSearchResults: this.jobSearchResults
          }
        });
        createJobSearchComponent.$mount()
        this.$refs.home.appendChild(createJobSearchComponent.$el);
      })
      .catch(err => console.error(err));
    }
  }

}
</script>
