<template>
  <div id="login" class="text-center">
    <form class="form-signin" @submit.prevent="login">
      <h1 class="label">Please Sign In</h1>
      <div
        class="alert alert-danger"
        role="alert"
        v-if="invalidCredentials"
      >Invalid username and password!</div>
     
      <div
        class="alert alert-success"
        role="alert"
        v-if="this.$route.query.registration"
      >Thank you for registering, please sign in.</div>
     
      <div class="field column is-one-third is-centered">
        <p class="control has-icons-right">
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
          <span class="icon is-small is-left">
            <i class="fas fa-envelope"></i>
          </span>
        </p>
        <p class="control has-icons-right">
          <label for="password" class="label">Password</label>
          <input
            type="password"
            id="password"
            class="input"
            placeholder="Password"
            v-model="user.password"
            required
          />
          <span class="icon is-small is-left">
            <i class="fas fa-lock"></i>
          </span>
        </p>

        <button type="submit" class="button is-primary">Sign in</button>
        <br />
        <router-link :to="{ name: 'register' }">Need an account? Click here to register.</router-link>
      </div>
    </form>
   
  </div>
  
</template>

<script>
import auth from "../auth";

export default {
  name: "login",
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      fetch(`${process.env.VUE_APP_REMOTE_API}/login`, {
        method: "POST",
        headers: {
          Accept: "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify(this.user)
      })
        .then(response => {
          if (response.ok) {
            return response.text();
          } else {
            this.invalidCredentials = true;
          }
        })
        .then(token => {
          if (token != undefined) {
            if (token.includes('"')) {
              token = token.replace(/"/g, "");
            }
            auth.saveToken(token);
            this.$router.push("/");
          }
        })
        .catch(err => console.error(err));
    }
  }
};
</script>

<style>
</style>
