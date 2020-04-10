<template>

<body>
    <div class="faq" ref = "faq"></div>
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
</body>
</template>

<script>
import HeaderVue from '@/components/HeaderVue';
import FooterVue from '@/components/FooterVue';

export default {
  name: 'faq',
  components: {
    HeaderVue,
    FooterVue
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