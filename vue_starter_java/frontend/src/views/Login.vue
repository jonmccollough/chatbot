<template>
  <div id="login" class="text-center">
    
  <nav class="navbar" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
      <a class="navbar-item" href="https://www.techelevator.com" target="_blank">
        <img
          src="//static1.squarespace.com/static/55ef2da9e4b03f6e1ef0cd28/t/5dceda76b702913cebc1d05e/1586375316161/?format=1500w"
          alt="Tech Elevator Coding Bootcamp "
          class="Header-branding-logo"
        />
      </a>

      <a
        role="button"
        class="navbar-burger burger"
        aria-label="menu"
        aria-expanded="false"
        data-target="navbarBasicExample"
      >
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
      </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
      <div class="navbar-start">
        <a class="navbar-item is-family-sans-serif">CHATBOT</a>

        <a class="navbar-item is-family-sans-serif">FAQS</a>

        <div class="navbar-item has-dropdown is-hoverable">
          <a
            class="navbar-item is-family-sans-serif"
            href="http://www.techelevator.com/events" target="_blank"
          >CALENDAR</a>
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
              <a class="button is-light">Log in</a>
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
   <footer class="footer">
    <div class="container">
      <div class="columns">
        <div class="column is-one-third">
          <div class="is-pulled-left">
            <p>
              <a class="has-text-grey" href="http://www.techelevator.com">tech elevator</a>
            </p>
            <p>
              <a class="has-text-grey" href="mailto:hello@techelevator.com">hello@techelevator.com</a>
            </p>
            <p>
              <a class="has-text-grey" href="tel:8776063203">877.606.3203</a>
            </p>
          </div>
        </div>
        <div class="column">
          <div class="is-centered">
            <p>
              <a class="has-text-grey" href="http://www.techeelevator.com/events">events</a>
            </p>
            <p>
              <a class="has-text-grey">faqs</a>
            </p>
          </div>
        </div>

        <div class="column">
          <div class="is-pulled-right">
            <figure class="image is-24x24">
              <a href="https://facebook.com/techelevator">
                <img src="@/img/fb.png" />
              </a>
              <a href="https://instagram.com/techelevator">
                <img src="@/img/ig.png" />
              </a>
              <a href="https://linkedin.com/school/tech_elevator">
                <img src="@/img/li.png" />
              </a>
              <a href="https://twitter.com/Tech_Elevator">
                <img src="@/img/tw.png" />
              </a>
              <a href="https://youtube.com/techelevatorcodeschool">
                <img src="@/img/yt.png" />
              </a>
            </figure>
          </div>
        </div>
      </div>
    </div>
  </footer>
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
