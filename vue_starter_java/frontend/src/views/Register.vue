<template>
  
  <div id="register" class="text-center">

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
      <router-link :to="{ name: 'chatbot' }">
      <a class="navbar-item is-family-sans-serif">
        Chatbot
      </a>
      </router-link>

      <a class="navbar-item is-family-sans-serif">
        FAQS
      </a>

      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-item is-family-sans-serif" href = "http://www.techelevator.com">
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
