<template>
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
        <a class="navbar-item is-family-sans-serif" href="/">CHATBOT</a>

        <a class="navbar-item is-family-sans-serif" href="faq">FAQS</a>

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
</template>

<script>
export default {
  name: 'header-vue'
}
</script>