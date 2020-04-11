<template>
    <footer class="footer">
    <div class="container">
      <div class="columns is-inline-block-mobile">
        <div class="column">
          <div class="is-pulled-left">
            <p>
              <a class="tLink" href="http://www.techelevator.com">tech elevator</a>
            </p>
            <p>
              <a class = "tLink" href="mailto:hello@techelevator.com">hello@techelevator.com</a>
            </p>
            <p>
              <a class = "tLink" href="tel:8776063203">877.606.3203</a>
            </p>
          </div>
        </div>
        <div class="column">
          <div class="is-centered">
            <p>
              <a class = "tLink" href="http://www.techeelevator.com/events">calendar</a>
            </p>
            <p>
              <a class = "tLink" href="faq">faqs</a>
            </p>
          </div>
        </div>
        <div class="column">
           <div class = "columns">
             <div class = "column">
            <a href="http://www.facebook.com/techelevator" class="fa fa-facebook"></a>      
            <a href="http://www.instagram.com/techelevator" class="fa fa-instagram"></a>
            <a href="http://www.linkedin.com/school/tech-elevator" class="fa fa-linkedin"></a>
            <a href="http://www.twitter.com/Tech_Elevator" class="fa fa-twitter"></a>
            <a href="https://www.youtube.com/channel/UCXsLbwLZfw9h7-s77sgp65A" class="fa fa-youtube"></a>
            </div>
             </div>
        </div>

        <div class="column">
           
         <figure class ="image is-128x128">
          <img src = "https://techelevator-pgh-teams.azurewebsites.net/img/Mark.57c5a859.png">
          </figure>
            
          
        </div>
      </div>
    </div>
  </footer>
</template>

<script>
export default {
  name: 'footer-vue'
}
</script>

<style>
@import 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css';
.fa {
  padding: 5px;
  font-size: 20px;
  width: 30px;
  text-align: center;
  text-decoration: none;
}

.tLink{
  font-weight: bold;
}

a:link{
  color: #00b0f0
}
a:visited{
  color: #00b0f0
}
a:hover{
  color: #8bc440;
}

</style>