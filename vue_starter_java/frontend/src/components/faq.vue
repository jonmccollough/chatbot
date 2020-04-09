<template>

<body>
    <div class="faq" ref = "faq"></div>
<template>
    <body>
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
    <footer class="footer">
        <div class="container">
            <div class="content has-text-centered">
                <p class="has-text-success">remove me</p>
            </div>
        </div>
    </footer>
    </body>
</template>
<br>
<h1>  FAQ 
    WORDS N STUFF HERE


</h1>


    <footer class="footer">
        <div class="container">
            <div class="content has-text-centered">
                <p class="has-text-success">remove me</p>
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

    .chat-bot,
    .chat-bot-list-container{
        display: flex;
        flex-direction: column;
        list-style-type: none ;
        overflow: scroll;
        background: white;
        height: 60vh;
    }
    .chat-bot-list{
        padding-left: 10px;
        padding-right: 10px;
        background-color: white;
    
         .server{
            margin-right: 25px;
            span{
                max-width: 40vw;
            
                }
            p{
                background: green;
                color: white;
                padding: 8px;
                border-radius: 4px;
                opacity: 0.8;
                border-bottom: none;
                border-top-right-radius: 4px;
                text-align: left;
                display: block;
            }
    
        }
        .client{
            margin-left: 25px;
            span{
                max-width: 40vw;
            }
            p{
                background: hsl(204, 86%, 53%);
                color: white;
                padding: 8px;
                border-radius: 4px;
                opacity: 0.8;
                text-align: right;
                display: block;
            }
        }
    }

.chat-bot{
    border: 1px solid #999;
    width: 50vw;
    border-radius: 4px;
    margin-left: auto;
    margin-right: auto;
    align-items: space-between;
}
.chat-inputs{
    display: flex;
    justify-content: center;
    input{
        align-items: space-around;
        width: 45vw;
        padding-left: 15px
    }
}

.container{
 width: 50vw;
}

.message{
    background-color: white;
    border-radius: 12px;
}

.footer{
    background: rgb(255,255,255);
    background: radial-gradient(circle,rgba(72,199, 116, 1) 28%, rgba(50, 152, 220,1)  85%);
    margin-top: 0%;
    display: none;
}
</style>