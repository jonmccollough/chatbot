<template>

<body>
    <div class="faq" ref = "faq"></div>
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
    <section class ="container">
       <section class="hero is-small is-family-sans-serif is-info">
           <div class="hero-body">
               <div class="container">
                   <h1 class="title" style="color: white">
                       TECH ELEVATOR
                   </h1>
                   <h2 class="subtitle" style="color: white">
                       Student Chatbot: FAQs
                       </h2>
               </div>
           </div>
        </section> 
    </section>
<section>
<div class="is-centered">


    <section class ="container">
<aside class="menu">
    
  <p class="menu-label">
    General
  </p>
  <ul class="menu-list">
    <li><a><details>
        <summary>What is Chatbot?</summary>
    Chatbot is an automated messaging system that autonomously replies to your questions.
    There is no person behind the curtain answering your questions.
    </details></a></li>

    <li><a><details>
        <summary>What can Chatbot do?</summary>
    things and stuff
    </details></a></li>

    <li><a><details><summary>Who built this?</summary>
        The daddies of this baby are Cat, Devin, Jarret, Jon, and Tanner.
        </details></a></li>
  </ul>
  <p class="menu-label">
    Administration
  </p>
  <ul class="menu-list">
    <li><a>Team Settings</a></li>
    <li>
      <a class="is-active">Manage Your Team</a>
      <ul>
        <li><a>Members</a></li>
        <li><a>Plugins</a></li>
        <li><a>Add a member</a></li>
      </ul>
    </li>
</ul>

</aside>
    </section>

</div>
</section>
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

</body>
</template>

<script>
export default {
  name: 'faq',
  components: {
  }
}
</script>

<style lang="scss" scoped>

body {
    background: rgb(255,255,255);
    background: linear-gradient(142deg, rgba(255,255,255,1) 53%, rgba(139,196,64,1) 56%, rgba(255,255,255,1) 58%, rgba(0,176,240,1) 62%);
    }

.li{
    margin: 5em;
}
.container{
 width: 65vw;
}

details {
    border: 1px solid #aaa;
    border-radius: 3px;
    padding: .6em .6em 0;
    font-size: 15px;
}

summary {
    font-weight: bold;
    margin: -.5em -.5em 0;
    padding: .5em;
}
p.menu-label{
    font-weight: bold;
    font-size: 15px;
    color: green;
}
details[open] {
    padding: .6em;
    line-height: 20px;
}

details[open] summary {
    border-bottom: 1px solid #aaa;
    margin-bottom: .5em;
}

aside{
    background:white;
    padding-top: 10px;
}


.footer{
    background: rgb(255,255,255);
    background: radial-gradient(circle,rgba(72,199, 116, 1) 28%, rgba(50, 152, 220,1)  85%);
    margin-top: 0%;
    display: none;
}
</style>