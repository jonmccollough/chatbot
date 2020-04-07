<template>
    <div>
        <p>Here's a few results for {{this.jobType}} in {{this.location}}</p>
        <ul>
            <li v-for="job in jobSearchResults" v-bind:key="job.id">
                <a :href = job.refs.landing_page  target="_blank">
                    {{job.name}}, 
                    {{job.locations[0].name}}, 
                    {{job.levels[0].name}}
                </a>
            </li>
        </ul>
    </div>
</template>

<script>
export default {
    name: 'job-search',
    props: {
        jobType: String,
        location: String,
        jobSearchResults: Array
    },
    methods: {
        showArray(){
            console.log(this.jobSearchResults);
        }
    }
}
</script>

<style>

</style>