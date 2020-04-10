<template>
  
  <div id="register" class="text-center">
    <form class="form-register" @submit.prevent="register">
      
<section class="hero is-success is-small"> 
  <div class="hero-body">
    <div class="container">
      <h1 class="title">
        Create Account
      </h1>
      
    </div>
  </div>
</section>

      <div class="alert alert-danger" role="alert" v-if="registrationErrors">
        There were problems registering this user.
      </div>
      <div class = "field column is-centered is-one-third">
      <label for="username" class="label">Username</label>
      <input
        type="text"
        id="username"
        class="input"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus
      />
      <label for="password" class="label">Password</label>
      <input
        type="password"
        id="password"
        class="input"
        placeholder="Password"
        v-model="user.password"
        required
      /><br>
      <label for = "confirmPassword" class="label">Confirm Password</label>
      <input
        type="password"
        id="confirmPassword"
        class="input"
        placeholder="Confirm Password"
        v-model="user.confirmPassword"
        required
      /> <button class="button is-success" type="submit">
        Create Account
      </button>
      <!-- <router-link :to="{ name: 'login' }">
        Have an account? Click here to login!
      </router-link> -->
     
      </div>
    </form>
  </div>
</template>

<script>
export default {
  name: 'register',
  data() {
    return {
      user: {
        username: '',
        password: '',
        confirmPassword: '',
        role: 'user',
      },
      registrationErrors: false,
    };
  },
  methods: {
    register() {
      fetch(`${process.env.VUE_APP_REMOTE_API}/register`, {
        method: 'POST',
        headers: {
          Accept: 'application/json',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(this.user),
      })
        .then((response) => {
          if (response.ok) {
            this.$router.push({ path: '/login', query: { registration: 'success' } });
          } else {
            this.registrationErrors = true;
          }
        })

        .then((err) => console.error(err));
    },
  },
};
</script>

<style>
</style>
