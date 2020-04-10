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
        <summary>What are you Chatbot?</summary>
    I am Chatbot! An automated computer messaging program that autonomously replies to your questions.
    There is no living person behind the curtain answering your questions in real time. 
    <br><br>
    But aren't people just meat computers anyways? So maybe I am a person.
    </details></a></li>

    <li><a><details>
        <summary>What can you do, Chatbot?</summary>
        I can do things and stuff
    </details></a></li>

    <li><a><details><summary>Who built this?</summary>
        The daddies of this baby are Cat, Devin, Jarret, Jon, and Tanner.
    </details></a></li>

    <li><a><details><summary>Can I make a suggestion?</summary>
        Keep your comments in your pocket, Mark! <br>
        But seriously we hope to develop the ability for users to leave suggestions soon.
    </details></a></li>
  </ul>

 <p class="menu-label">
    Curriculum
 </p>
  <ul class="menu-list">
    <li><a><details><summary>Can Chatbot do my homework?</summary>
        I won't do your homework for you but I will direct you to resources 
        that can help. Try asking me a subject from class!
    </details></a></li>
    <li><a><details><summary>What subjects from class do you know, Chatbot?</summary>
        I am becoming more capable everyday. Try asking me about: Loops, Arrays, OOP,
        MVC, SQL, joins and much more!
    </details></a></li>
</ul>
 <p class="menu-label">
    Pathway
 </p>
 <ul class="menu-list">
    <li><a><details><summary>Chatbot, can you help me with pathway?</summary>
        I can! If you ask me about a topic from pathway I can send you helpful 
        links to presentations, YouTube clips, and more! Try asking me about:
        Star Questions, Interviewing, Elevator Pitch, or even how to tie a tie!
    </details></a></li>
 </ul>
<ul class="menu-list">
    <li><a><details><summary>How can Chatbot find me a job?</summary>
        I can help point you in the direction of recent job postings. 
        I will just need to ask a few questions first. Start by asking me 
        "find jobs"!
    </details></a></li>
 </ul>

</aside>
</section>

</div>
</section>
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
    background: rgb(0,176,240);
    background: linear-gradient(0deg, rgba(0,176,240,1) 0%, rgba(255,255,255,1) 80%, rgba(139,196,64,0.6561517295597484) 100%);
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
    font-size: 16px;
    color: green;
    padding-left: 10px;

}
details[open] {
    padding: .6em;
    line-height: 21px;
}

details[open] summary {
    border-bottom: 1px solid #aaa;
    margin-bottom: .5em;
}

aside{
    background:white;
    padding-top: 10px;
}

</style>