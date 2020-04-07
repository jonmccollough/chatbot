<template>
  <div class="home">
    <h1>Home</h1>
    <p>You must be authenticated to see this</p>
    
    <!-- Test for Job search, be sure to delete later -->
    <div @click="searchForJob">click here to test job search</div>

    <form @submit.prevent="searchForJob">
      <label for:job-title>Please enter type of job</label>
      <input type = "text" v-model="jobTitle"/>
      <label for:location>Where would you like to search?</label>
      <input type="text" v-model="location"/>
      <button type="submit">Search!</button>
    </form>

    <job-search :jobType='jobTitle' :location='location' :jobSearchResults='jobSearchResults'/>

  </div>
</template>

<script>
import axios from 'axios';
import JobSearch from '@/components/JobSearch.vue';

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
    JobSearch
  },

  methods: {
    searchForJob(){
      axios.get(`https://www.themuse.com/api/public/jobs?keyword=${this.jobTitle}&location=${this.location}&page=1`)
      .then((result) =>{
        console.log(result);
        console.log(this.jobSearchResults);
        this.jobSearchResults = result.data.results;
        console.log(this.jobSearchResults);
        })
      .catch(err => console.error(err));
    }
  }

}
</script>
