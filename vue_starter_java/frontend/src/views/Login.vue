<template>
  <div id="login" class="text-center">
    
    <nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" href="https://bulma.io">
      <img src="//static1.squarespace.com/static/55ef2da9e4b03f6e1ef0cd28/t/5dceda76b702913cebc1d05e/1586375316161/?format=1500w" alt="Tech Elevator Coding Bootcamp " class="Header-branding-logo">
    </a>

    <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">
      <a class="navbar-item is-family-sans-serif">
        Chatbot
      </a>

      <a class="navbar-item is-family-sans-serif">
        FAQS
      </a>

      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-item is-family-sans-serif" href="http://www.techelevator.com">
          TE Official
        </a>
      </div>
    </div>

    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">
          <router-link :to="{ name: 'register' }">
          <a class="button is-primary">
            <strong>Sign up</strong>
          </a>
          </router-link>
         <router-link :to="{ name: 'login' }">
          <a class="button is-light">
            Log in
          </a>
         </router-link>
        </div>
      </div>
    </div>
  </div>
</nav>

    <form class="form-signin" @submit.prevent="login">
      <section class="hero is-success is-small"> 
  <div class="hero-body">
    <div class="container">
      <h1 class="title">
        Sign In To Your Account
      </h1>
      
    </div>
  </div>
</section>
      
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
         <!-- <router-link :to="{ name: 'register' }">Need an account? Click here to register.</router-link> -->
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
