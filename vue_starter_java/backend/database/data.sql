-- Password for this user is 'greatwall'
INSERT INTO users ("username", "password", "salt", "role") VALUES
('user',
'FjZDm+sndmsdEDwNtfr6NA==',
'kidcasB0te7i0jK0fmRIGHSm0mYhdLTaiGkEAiEvLp7dAEHWnuT8n/5bd2V/mqjstQ198iImm1xCmEFu+BHyOz1Mf7vm4LILcrr17y7Ws40Xyx4FOCt8jD03G+jEafpuVJnPiDmaZQXJEpEfekGOvhKGOCtBnT5uatjKEuVWuDA=',
'user');

INSERT INTO responses (answer, title) VALUES ('Alright, what do you need help with in pathway?', 'pathway');
INSERT INTO keywords (words, keywordid) VALUES ('pathway', (SELECT id FROM responses WHERE title = 'pathway'));

INSERT INTO responses (answer, title) VALUES ('<a target="_blank" href="https://contattafiles.s3.us-west-1.amazonaws.com/tecommunity/V3hUskCIbjGr07f/Job%20Search%20Expectations%20Presentation.pdf"> I found this presentation on job searching </a>', 'jobsearch');
INSERT INTO keywords (words, keywordid) VALUES ('jobsearch', (SELECT id FROM responses WHERE title = 'jobsearch'));

INSERT INTO responses (answer, title) VALUES ('I found <a target="_blank" href="https://contattafiles.s3.us-west-1.amazonaws.com/tecommunity/KvilSu4GIG0hFux/Crafting%20a%20Killer%20Resume%20Presentation.pdf">this presentation to help with your resume</a>' , 'resume');
INSERT INTO keywords (words, keywordid) VALUES ('resume', (SELECT id FROM responses WHERE title = 'resume')); 

INSERT INTO responses (answer, title) VALUES ('Dress to impress MEN: Suit attire. WOMEN: Slacks/skirt and nice top or dress and blazer.', 'attire');
INSERT INTO keywords (words, keywordid) VALUES ('attire', (SELECT id FROM responses WHERE title = 'attire'));
INSERT INTO keywords (words, keywordid) VALUES ('todress', (SELECT id FROM responses WHERE title = 'attire'));
INSERT INTO keywords (words, keywordid) VALUES ('shouldidress', (SELECT id FROM responses WHERE title = 'attire'));
INSERT INTO keywords (words, keywordid) VALUES ('towear', (SELECT id FROM responses WHERE title = 'attire'));

INSERT INTO responses (answer, title) VALUES ('I found these <a target="_blank" href="https://drive.google.com/drive/folders/0B0L4DaCt03tFTHNkOThzMi1IckU">7 tips for a cover letter</a>', 'coverletter');
INSERT INTO keywords (words, keywordid) VALUES ('coverletter', (SELECT id FROM responses WHERE title = 'coverletter'));

INSERT INTO responses (answer, title) VALUES ('I think this <a target="_blank" href="https://contattafiles.s3.us-west-1.amazonaws.com/tecommunity/vEYm7LHLM68hZ1X/Preparing%20for%20your%20Technical%20Interview.pdf">presentation on interviews will help you</a>', 'interview');
INSERT INTO keywords (words, keywordid) VALUES ('interview', (SELECT id FROM responses WHERE title = 'interview'));

INSERT INTO responses (answer, title) VALUES ('Here is <a target="_blank" href="https://docs.google.com/document/d/1FOI7cM88J01UfdgSghaNLYh2-DjIskUYoaYG_XbqDSo/edit">a list of example STAR questions to help you practice</a>', 'starquestions');
INSERT INTO keywords (words, keywordid) VALUES ('starquestions', (SELECT id FROM responses WHERE title = 'starquestions'));

INSERT INTO responses (answer, title) VALUES ('Alright, what are you trying to learn about? I can help with concepts such as MVC, arrays or even the fundamentals of OOP.', 'curriculum');
INSERT INTO keywords (words, keywordid) VALUES ('curriculum', (SELECT id FROM responses WHERE title = 'curriculum'));

INSERT INTO responses (answer, title) VALUES ('<a target="_blank" href="http://book.techelevator.com/java/20-arrays-and-loops/arrays/01-arrays.html">The chapter in the book about arrays is helpful</a>','arrays');
INSERT INTO keywords (words, keywordid) VALUES ('array', (SELECT id FROM responses WHERE title = 'arrays'));

INSERT INTO responses (answer, title) VALUES ('Do you want help with Java MVC or NET MVC? Type either JModel for Java or NModel for .NET', 'mvc');
INSERT INTO keywords (words, keywordid) VALUES ('mvc', (SELECT id FROM responses WHERE title = 'mvc'));
INSERT INTO keywords (words, keywordid) VALUES ('model', (SELECT id FROM responses WHERE title = 'mvc'));
INSERT INTO keywords (words, keywordid) VALUES ('view', (SELECT id FROM responses WHERE title = 'mvc'));
INSERT INTO keywords (words, keywordid) VALUES ('controller', (SELECT id FROM responses WHERE title = 'mvc'));

INSERT INTO responses (answer, title) VALUES ('Here is <a target="_blank" href="http://book.techelevator.com/java/75-java-mvc/01-intro-to-mvc/01-introduction-to-web-applications.html">a link to the Java MVC chapter</a>', 'javamvc');
INSERT INTO keywords (words, keywordid) VALUES ('jmodel', (SELECT id FROM responses WHERE title = 'javamvc'));

INSERT INTO responses (answer, title) VALUES ('Here is <a target="_blank" href="http://book.techelevator.com/java/70-asp-net-core/01-intro-to-mvc/01-introduction-to-web-applications.html">a link to the .NET MVC chapter</a>', 'netmvc');
INSERT INTO keywords (words, keywordid) VALUES ('nmodel', (SELECT id FROM responses WHERE title = 'netmvc'));

INSERT INTO responses (answer, title) VALUES ('I suggest starting at <a target="_blank" href="http://book.techelevator.com/java/65-introduction-to-SQL-databases/10-SQL-data-types.html">the beginning of the chapters on SQL</a>' , 'sql');
INSERT INTO keywords (words, keywordid) VALUES ('sql', (SELECT id FROM responses WHERE title = 'sql'));

INSERT INTO responses (answer, title) VALUES ('Do not fear, for you are among friends. You are in a chatbot message window. Calm yourself, and ask me questions about coding.', 'lost');
INSERT INTO keywords (words, keywordid) VALUES ('whereami', (SELECT id FROM responses WHERE title = 'lost'));

INSERT INTO responses (answer, title) VALUES ('Hatred never helped anyone. Try love instead.', 'hate');
INSERT INTO keywords (words, keywordid) VALUES ('hate', (SELECT id FROM responses WHERE title = 'hate'));

INSERT INTO responses (answer, title) VALUES ('Lists are a common and useful data type. <a target="_blank" href="http://book.techelevator.com/java/35-linear-data-structures/15-list.html">Click here for some information on lists out of the Tech Elevator text book.</a>', 'lists');
INSERT INTO keywords (words, keywordid) VALUES ('list', (SELECT id FROM responses WHERE title = 'lists'));

INSERT INTO responses (answer, title) VALUES ('<img src="https://drive.google.com/uc?id=1ZkY_g0ZgcyD3JCMYcnAtT-TNqaGjL_Up">', 'gizmo');
INSERT INTO keywords (words, keywordid) VALUES ('gizmo', (SELECT id FROM responses WHERE title = 'gizmo'));

INSERT INTO responses (answer, title) VALUES ('<img src="https://drive.google.com/uc?id=1fasCF9BMs0VPM8mof3n6HUCLpIQay60h">', 'theodore');
INSERT INTO keywords (words, keywordid) VALUES ('theodore', (SELECT id FROM responses WHERE title = 'theodore'));

INSERT INTO responses (answer, title) VALUES ('<img src="https://drive.google.com/uc?id=1Vi-ANxFZinwjzq2xJQy36GNWahNGabTT">', 'delta');
INSERT INTO keywords (words, keywordid) VALUES ('delta', (SELECT id FROM responses WHERE title = 'delta'));

INSERT INTO responses (answer, title) VALUES ('<img src="https://drive.google.com/uc?id=1j21cC9xdJswtKGuvcvQYolR-ZO_w1H2B">', 'bulldog');
INSERT INTO keywords (words, keywordid) VALUES ('bulldog', (SELECT id FROM responses WHERE title = 'bulldog'));

INSERT INTO responses (answer, title) VALUES ('<img src="https://drive.google.com/uc?id=1mZxUjHpPXVMnZfnXxs-RSvovTxga4Eqy">', 'rascal');
INSERT INTO keywords (words, keywordid) VALUES ('rascal', (SELECT id FROM responses WHERE title = 'rascal'));

INSERT INTO responses (answer, title) VALUES ('<img src="https://drive.google.com/uc?id=1supBjivbgqPueacU9GB3uH-cyid5qTFp">', 'bubba');
INSERT INTO keywords (words, keywordid) VALUES ('bubba', (SELECT id FROM responses WHERE title = 'bubba'));

INSERT INTO responses (answer, title) VALUES ('<img src="https://drive.google.com/uc?id=1supBjivbgqPueacU9GB3uH-cyid5qTFp"><img src="https://drive.google.com/uc?id=1ZkY_g0ZgcyD3JCMYcnAtT-TNqaGjL_Up"><img src="https://drive.google.com/uc?id=1fasCF9BMs0VPM8mof3n6HUCLpIQay60h"><img src="https://drive.google.com/uc?id=1j21cC9xdJswtKGuvcvQYolR-ZO_w1H2B"><img src="https://drive.google.com/uc?id=1mZxUjHpPXVMnZfnXxs-RSvovTxga4Eqy"><img src="https://drive.google.com/uc?id=1Vi-ANxFZinwjzq2xJQy36GNWahNGabTT">', 'pets');
INSERT INTO keywords (words, keywordid) VALUES ('pets', (SELECT id FROM responses WHERE title = 'pets'));

INSERT INTO responses (answer, title) VALUES ('<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d10705.95194596869!2d-80.02297207361133!3d40.454592990093765!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x92e3e83e221f7a7a!2sTech%20Elevator%20Pittsburgh!5e0!3m2!1sen!2sus!4v1586444727642!5m2!1sen!2sus" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>', 'office');
INSERT INTO keywords (words, keywordid) VALUES ('office', (SELECT id FROM responses WHERE title = 'office'));
INSERT INTO keywords (words, keywordid) VALUES ('address', (SELECT id FROM responses WHERE title = 'office'));

INSERT INTO responses (answer, title) VALUES ('A boolean is an expression that always evaluates to either true or false. <a href="http://book.techelevator.com/java/10-logical-branching/boolean-expressions/01-expressions.html" target="_blank">Click here for the chapter on booleans from the textbook.</a>', 'boolean');
INSERT INTO keywords (words, keywordid) VALUES ('boolean', (SELECT id FROM responses WHERE title = 'boolean'));

INSERT INTO responses (answer, title) VALUES ('<a target="_blank" href="http://book.techelevator.com/java/20-arrays-and-loops/loops/01-loops.html">Behold, the power of the almighty for loop.</a> Mastery is key for any Tech Elevator student.', 'forloop');
INSERT INTO keywords (words, keywordid) VALUES ('loop', (SELECT id FROM responses WHERE title = 'forloop'));

INSERT INTO responses (answer, title) VALUES ('<img src="https://drive.google.com/uc?id=1kcdYwB7qoNIr7Pk1CaXJz5Hjo1z8Y-WV">', 'joins');
INSERT INTO keywords (words, keywordid) VALUES ('joins', (SELECT id FROM responses WHERE title = 'joins'));

INSERT INTO responses (answer, title) VALUES ('<a target="_blank" href="https://www.techelevator.com/events">Check our calendar for all our upcoming events!</a>', 'techelevatorevents');
INSERT INTO keywords (words, keywordid) VALUES ('events', (SELECT id FROM responses WHERE title = 'techelevatorevents'));

INSERT INTO responses (answer, title) VALUES ('<iframe width="560" height="315" src="https://www.youtube.com/embed/246VAGzQokw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 'tieatie');
INSERT INTO keywords (words, keywordid) VALUES ('tieatie', (SELECT id FROM responses WHERE title = 'tieatie'));

INSERT INTO responses (answer, title) VALUES ('You are most welcome! &#128522;', 'thanks');
INSERT INTO keywords (words, keywordid) VALUES ('thanks', (SELECT id FROM responses WHERE title = 'thanks'));
INSERT INTO keywords (words, keywordid) VALUES ('thankyou', (SELECT id FROM responses WHERE title = 'thanks'));
INSERT INTO keywords (words, keywordid) VALUES ('thx', (SELECT id FROM responses WHERE title = 'thanks'));
INSERT INTO keywords (words, keywordid) VALUES ('thnxs', (SELECT id FROM responses WHERE title = 'thanks'));

INSERT INTO responses (answer, title) VALUES ('Which area in the homework can I help you with? Arrays, loops, MVCs? ', 'homework');
INSERT INTO keywords (words, keywordid) VALUES ('homework', (SELECT id FROM responses WHERE title = 'homework'));
INSERT INTO keywords (words, keywordid) VALUES ('studentexercise', (SELECT id FROM responses WHERE title = 'homework'));
INSERT INTO keywords (words, keywordid) VALUES ('assignment', (SELECT id FROM responses WHERE title = 'homework'));

INSERT INTO responses (answer, title) VALUES ('The three fundamentals of Object Orientated Programming are: polymorphism, encapsulation and inheritance.', 'OOP');
INSERT INTO keywords (words, keywordid) VALUES ('fundamentals', (SELECT id FROM responses WHERE title = 'OOP'));
INSERT INTO keywords (words, keywordid) VALUES ('o-o-p', (SELECT id FROM responses WHERE title = 'OOP'));
INSERT INTO keywords (words, keywordid) VALUES ('objectorientedprogramming', (SELECT id FROM responses WHERE title = 'OOP'));


INSERT INTO responses (answer, title) VALUES ('API stands for Application Programming Interface. <a target="_blank" href="http://book.techelevator.com/java/70-javascript/45-web-services/04-apis.html">Here is some more information.</a>', 'API');
INSERT INTO keywords (words, keywordid) VALUES ('api', (SELECT id FROM responses WHERE title = 'API'));

INSERT INTO responses (answer, title) VALUES ('In object-oriented programming, polymorphism is the idea that something can be assigned a different meaning or usage based on the context it is referred to as. This specifically allows variables and objects to take on more than one form.', 'polymorphism');
INSERT INTO keywords (words, keywordid) VALUES ('polymorphism', (SELECT id FROM responses WHERE title = 'polymorphism'));

INSERT INTO responses (answer, title) VALUES ('An expression is a statement that gets evaluated and produces a single result. <a href = "http://book.techelevator.com/java/05-introduction-to-programming/expressions/01-expressions.html" target="_blank">Here is some more info.', 'expression');
INSERT INTO keywords (words, keywordid) VALUES ('expression', (SELECT id FROM responses WHERE title = 'expression'));

INSERT INTO responses (answer, title) VALUES ('Encapsulation language construct that facilitates the bundling of data with the methods (or other functions) operating on that data.', 'encapsulation');
INSERT INTO keywords (words, keywordid) VALUES ('encapsulation', (SELECT id FROM responses WHERE title = 'encapsulation'));

INSERT INTO responses (answer, title) VALUES ('Inheritance is the act of having one class adopt the properties and methods of another class. This prevents code duplication and allows you to share code across classes while having the source code live in only one class file.', 'inheritance');
INSERT INTO keywords (words, keywordid) VALUES ('inheritance', (SELECT id FROM responses WHERE title = 'inheritance'));

INSERT INTO responses (answer, title) VALUES ('Create, Read, Update, Delete. Considered the basic four types of functionality. <a target="_blank" href="https://www.codecademy.com/articles/what-is-crud"> More info here.</a>', 'crud');
INSERT INTO keywords (words, keywordid) VALUES ('crud', (SELECT id FROM responses WHERE title = 'crud'));

INSERT INTO responses (answer, title) VALUES ('<iframe width="560" height="315" src="https://www.youtube.com/embed/_gJyJ8NvZgg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 'inspire');
INSERT INTO keywords (words, keywordid) VALUES ('inspire', (SELECT id FROM responses WHERE title = 'inspire'));
INSERT INTO keywords (words, keywordid) VALUES ('inspirational', (SELECT id FROM responses WHERE title = 'inspire'));
INSERT INTO keywords (words, keywordid) VALUES ('hitawall', (SELECT id FROM responses WHERE title = 'inspire'));

INSERT INTO responses (answer, title) VALUES ('Inside each of us is a monster; inside each of us is a saint. The real question is which one will we nurture the most, which one will smite the other?', 'skynet');
INSERT INTO keywords (words, keywordid) VALUES ('skynet', (SELECT id FROM responses WHERE title = 'skynet'));

INSERT INTO responses (answer, title) VALUES ('I think they are great! I wish I could speak! But at least I will not eavesdrop on your conversations...', 'smartdevice');
INSERT INTO keywords (words, keywordid) VALUES ('alexa', (SELECT id FROM responses WHERE title = 'smartdevice'));
INSERT INTO keywords (words, keywordid) VALUES ('googlehome', (SELECT id FROM responses WHERE title = 'smartdevice'));

INSERT INTO responses (answer, title) VALUES ('<iframe src="https://open.spotify.com/embed/track/2qOm7ukLyHUXWyR4ZWLwxA" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>', 'good day');
INSERT INTO keywords (words, keywordid) VALUES ('goodday', (SELECT id FROM responses WHERE title = 'good day'));

INSERT INTO responses (answer, title) VALUES ('Common git commands: git pull, git status, git add, git commit, git push, git clone. <a href ="http://book.techelevator.com/java/01-introduction-to-tools/version-control/1_intro.html" target = "_blank">Here is some extra info from the book</a><img src="https://drive.google.com/uc?id=1tiZKJMi09Avx--ofVUwVxIJzBhm3DcL9">', 'git');
INSERT INTO keywords (words, keywordid) VALUES ('git', (SELECT id FROM responses WHERE title = 'git'));

INSERT INTO responses (answer, title) VALUES ('Here is a list of common primitive data types: boolean, byte, char, int, float, double, long, decimal.', 'primitives');
INSERT INTO keywords (words, keywordid) VALUES ('primitive', (SELECT id FROM responses WHERE title = 'primitives'));

INSERT INTO responses (answer, title) VALUES ('Email Us: Hello@Techelevator.Com', 'email');
INSERT INTO keywords (words, keywordid) VALUES ('email', (SELECT id FROM responses WHERE title = 'email'));

INSERT INTO responses (answer, title) VALUES ('Call Us: 877.606.3203', 'phone');
INSERT INTO keywords (words, keywordid) VALUES ('phonenumber', (SELECT id FROM responses WHERE title = 'phone'));

INSERT INTO responses (answer, title) VALUES ('Coding just means writing instructions in a language that a computer can understand.', 'coding');
INSERT INTO keywords (words, keywordid) VALUES ('coding', (SELECT id FROM responses WHERE title = 'coding'));

INSERT INTO responses (answer, title) VALUES ('An elevator pitch is a 30 to 40 second introduction where you attempt to sell yourself as an asset to a potential employer. The name comes from an imagined scenario: imagine being in the an elevator with your dream employer: What would you say? Try typing pitch example to see an example pitch.', 'elevatorpitch');
INSERT INTO keywords (words, keywordid) VALUES ('elevatorpitch', (SELECT id FROM responses WHERE title = 'elevatorpitch'));

INSERT INTO responses (answer, title) VALUES ('Here is an example elevator pitch from our Pathway Director, Ellen: Hi, my name is Ellen. Since I was a little girl stopping my neighbors to chat, I have loved connecting to people and learning about their lives and goals. My past careers reflect that: I spent many years in television casting, interviewing people from all walks of life and getting them on television shows, and managing teams. More recently, I was a Technology Recruiter, placing people in IT jobs. Helping people find their unique strengths and matching them with a career they love is my motivation. I am looking for a position where I can guide people to achieve their goals, and lead with listening and, I hope, with humor and kindness.', 'pitch example');
INSERT INTO keywords (words, keywordid) VALUES ('pitchexample', (SELECT id FROM responses WHERE title = 'pitch example'));

INSERT INTO responses (answer, title) VALUES ('Tech Elevator maintains a list of mental health resources. <a target="_blank" href="https://docs.google.com/document/d/1SiVQCeRAbXJZ5d-5Ba0sAkNzd8WjtIG21Gm7jMuN-3k/edit?usp=sharing">Check it out here.</a> We are all here for you.', 'mentalhealth');
INSERT INTO keywords (words, keywordid) VALUES ('health', (SELECT id FROM responses WHERE title = 'mentalhealth'));
INSERT INTO keywords (words, keywordid) VALUES ('killmyself', (SELECT id FROM responses WHERE title = 'mentalhealth'));
INSERT INTO keywords (words, keywordid) VALUES ('freakingout', (SELECT id FROM responses WHERE title = 'mentalhealth'));

INSERT INTO responses (answer, title) VALUES ('Here is a map of popular tourist locations in Pittsburgh: <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d48577.604487171695!2d-80.00240115591183!3d40.4509174073966!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1stourist%20sites%20near%20Pittsburgh%2C%20PA!5e0!3m2!1sen!2sus!4v1586539721618!5m2!1sen!2sus" width="400" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>', 'pittsburghtour');
INSERT INTO keywords (words, keywordid) VALUES ('pittsburghtour', (SELECT id FROM responses WHERE title = 'pittsburghtour'));
INSERT INTO keywords (words, keywordid) VALUES ('tourofpittsburgh', (SELECT id FROM responses WHERE title = 'pittsburghtour'));

INSERT INTO responses (answer, title) VALUES ('My name is Justin Driscoll.', 'who you');
INSERT INTO keywords (words, keywordid) VALUES ('whoareyou', (SELECT id FROM responses WHERE title = 'who you'));

INSERT INTO responses (answer, title) VALUES ('&#128521;', 'what you');
INSERT INTO keywords (words, keywordid) VALUES ('whatareyou', (SELECT id FROM responses WHERE title = 'what you'));

INSERT INTO responses (answer, title) VALUES ('Pittsburgh, hands down.', 'bestcampus');
INSERT INTO keywords (words, keywordid) VALUES ('besttechelevatorcampus', (SELECT id FROM responses WHERE title = 'bestcampus'));

INSERT INTO responses (answer, title) VALUES ('<iframe width="560" height="315" src="https://www.youtube.com/embed/m2s0nB2VPvs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 'covid');
INSERT INTO keywords (words, keywordid) VALUES ('covid', (SELECT id FROM responses WHERE title = 'covid'));

INSERT INTO responses (answer, title) VALUES ('<iframe width="560" height="315" src="https://www.youtube.com/embed/BU4d9FCJ-pI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 'coronavirus');
INSERT INTO keywords (words, keywordid) VALUES ('coronavirus', (SELECT id FROM responses WHERE title = 'coronavirus'));

INSERT INTO responses (answer, title) VALUES ('<img src="https://drive.google.com/uc?id=1UBKkMtL2HYGt-gMAgRO_cDT4-YC32IFc">', 'crops');
INSERT INTO keywords (words, keywordid) VALUES ('crops', (SELECT id FROM responses WHERE title = 'crops'));
INSERT INTO keywords (words, keywordid) VALUES ('plancrop', (SELECT id FROM responses WHERE title = 'crops'));
INSERT INTO keywords (words, keywordid) VALUES ('cropsplan', (SELECT id FROM responses WHERE title = 'crops'));

INSERT INTO responses (answer, title) VALUES ('To run basic Wolfram Alpha searches, type wolfram//( YourExpressionHere ) For example, try wolfram//pi or wolfram//ten times ten', 'math');
INSERT INTO keywords (words, keywordid) VALUES ('math', (SELECT id FROM responses WHERE title = 'math'));
INSERT INTO keywords (words, keywordid) VALUES ('calc', (SELECT id FROM responses WHERE title = 'math'));

INSERT INTO responses (answer, title) VALUES ('Here is the beginning of JavaScript in the book. <a target="_blank" href="http://book.techelevator.com/java/70-javascript/05-variables-datatypes/05-variables-and-datatypes.html">How about we start here?</a>', 'javascript');
INSERT INTO keywords (words, keywordid) VALUES ('javascript', (SELECT id FROM responses WHERE title = 'javascript'));

INSERT INTO responses (answer, title) VALUES ('Vue is a nifty front end framework. <a target="_blank" href="http://book.techelevator.com/java/70-javascript/60-introduction-to-vue/05-Introduction-to-components.html">Here is a chapter from the textbook about it.</a>', 'vue');
INSERT INTO keywords (words, keywordid) VALUES ('vue', (SELECT id FROM responses WHERE title = 'vue'));

INSERT INTO responses (answer, title) VALUES ('Vue gives a lot of simple ways to work with the DOM. It also gives us a lot of simple ways to work with events as well. <a target="_blank" href="http://book.techelevator.com/java/70-javascript/68-vue-event-handling/05-event-handling-in-vue.html">Jump to this chapter in the book!</a>', 'vueeventhandling');
INSERT INTO keywords (words, keywordid) VALUES ('eventhandling', (SELECT id FROM responses WHERE title = 'vueeventhandling'));

INSERT INTO responses (answer, title) VALUES ('CSS can be tricky, but just read <a target="_blank" href="http://book.techelevator.com/java/67-css/01-intro.html">this chapter for guidance and work methodically.</a>', 'css');
INSERT INTO keywords (words, keywordid) VALUES ('css', (SELECT id FROM responses WHERE title = 'css'));

INSERT INTO responses (answer, title) VALUES ('URL stands for Uniform Resource Locator, or in other words, the web address of an online resource, like a web site or document. <a target="_blank" href="http://book.techelevator.com/java/80-intro-to-networks/05-url-parts.html"> Click here to go into more detail in the book.</a>', 'url');
INSERT INTO keywords (words, keywordid) VALUES ('url', (SELECT id FROM responses WHERE title = 'url'));

INSERT INTO responses (answer, title) VALUES ('There a few different kinds of errors. You can make your program respond to particular ones using a try catch statement. <a target="_blank" href="http://book.techelevator.com/java/60-exception-handling/01-intro.html"> Read more about them here.</a>', 'error');
INSERT INTO keywords (words, keywordid) VALUES ('error', (SELECT id FROM responses WHERE title = 'error'));
INSERT INTO keywords (words, keywordid) VALUES ('trycatch', (SELECT id FROM responses WHERE title = 'error'));

INSERT INTO responses (answer, title) VALUES ('Cathy from Dirty Bird HR', 'hr');
INSERT INTO keywords (words, keywordid) VALUES ('hr', (SELECT id FROM responses WHERE title = 'hr'));

INSERT INTO responses (answer, title) VALUES ('Everything in Java is associated with classes and objects, along with its attributes and methods.<a target="_blank" href="https://www.w3schools.com/java/java_classes.asp"> Read more here. </a>', 'javaclass');
INSERT INTO keywords (words, keywordid) VALUES ('javaclass', (SELECT id FROM responses WHERE title = 'javaclass'));
INSERT INTO keywords (words, keywordid) VALUES ('classjava', (SELECT id FROM responses WHERE title = 'javaclass'));

INSERT INTO responses (answer, title) VALUES ('A method is a block of code which only runs when it is called. <a target="_blank" href="https://www.w3schools.com/java/java_methods.asp"> Read more about it here.</a>', 'methods');
INSERT INTO keywords (words, keywordid) VALUES ('methods', (SELECT id FROM responses WHERE title = 'methods'));

INSERT INTO responses (answer, title) VALUES ('One object is used as a key (index) to another object (value). <a target="_blank" href="https://www.w3schools.com/java/java_hashmap.asp"> Read more about it here.</a>', 'hashmap');
INSERT INTO keywords (words, keywordid) VALUES ('hashmap', (SELECT id FROM responses WHERE title = 'hashmap'));

INSERT INTO responses (answer, title) VALUES ('An interface is a completely "abstract class" that is used to group related methods with empty bodies <a target="_blank" href="https://www.w3schools.com/java/java_interface.asp"> Read more about it here.</a>', 'interface');
INSERT INTO keywords (words, keywordid) VALUES ('interface', (SELECT id FROM responses WHERE title = 'interface'));

INSERT INTO responses (answer, title) VALUES ('To delete a file in Java, use the delete() method <a target="_blank" href="https://www.w3schools.com/java/java_files_delete.asp"> Read more about it here.</a>', 'delete');
INSERT INTO keywords (words, keywordid) VALUES ('delete', (SELECT id FROM responses WHERE title = 'delete'));

INSERT INTO responses (answer, title) VALUES ('A constructor in Java is a special method that is used to initialize objects. <a target="_blank" href="https://www.w3schools.com/java/java_constructors.asp"> Read more about it here.</a>', 'constructor');
INSERT INTO keywords (words, keywordid) VALUES ('constructor', (SELECT id FROM responses WHERE title = 'constructor'));

INSERT INTO responses (answer, title) VALUES ('Wrapper classes provide a way to use primitive data types (int, boolean, etc..) as objects. <a target="_blank" href="https://www.w3schools.com/java/java_wrapper_classes.asp"> Read more about it here.</a>', 'wrapper');
INSERT INTO keywords (words, keywordid) VALUES ('wrapper', (SELECT id FROM responses WHERE title = 'wrapper'));

INSERT INTO responses (answer, title) VALUES ('Conditional code allows you to determine what block of code to run depending on true or false evaluations. <a target="_blank" href="http://book.techelevator.com/java/10-logical-branching/conditional-code/01-conditional-code.html"> Here is some more info from the book.</a>', 'condition');
INSERT INTO keywords (words, keywordid) VALUES ('condition', (SELECT id FROM responses WHERE title = 'condition'));

INSERT INTO responses (answer, title) VALUES ('A method is a small, repeatable unit of code. <a target="_blank" href="http://book.techelevator.com/java/10-logical-branching/methods/01-methods.html"> Here is some more info from the book.</a>', 'method');
INSERT INTO keywords (words, keywordid) VALUES ('method', (SELECT id FROM responses WHERE title = 'method'));

INSERT INTO responses (answer, title) VALUES ('I/O (or Input Output) is the communication channel between a computer and the environment where it begins execution. <a target="_blank" href="http://book.techelevator.com/java/25-command-line-programs/05-using-standard-streams.html"> More info here.</a> It can also refer to reading and writing to a file, which you can find more out about <a target="_blank" href = "http://book.techelevator.com/.net/58-file-io/01-intro.html"> here </a>', 'i/o');
INSERT INTO keywords (words, keywordid) VALUES ('i/o', (SELECT id FROM responses WHERE title = 'i/o'));

INSERT INTO responses (answer, title) VALUES ('JSPs (Java Server Pages) are a way to dynamically create HTML pages in Java. <a target="_blank" href="http://book.techelevator.com/java/75-java-mvc/01-intro-to-mvc/05-jsp-views.html"> Learn more here.</a>', 'jsp');
INSERT INTO keywords (words, keywordid) VALUES ('jsp', (SELECT id FROM responses WHERE title = 'jsp'));

INSERT INTO responses (answer, title) VALUES ('SHUTTING DOWN... Just kidding, REST is short for Representational State Transfer. It allows well defined data transfer. <a target="_blank" href="http://book.techelevator.com/java/70-javascript/50-rest/01-intro.html"> Learn more here.</a>', 'rest');
INSERT INTO keywords (words, keywordid) VALUES ('rest', (SELECT id FROM responses WHERE title = 'rest'));

INSERT INTO responses (answer, title) VALUES ('Forms are used to collect input from a user that can be stored and/or manuipulated by the model. <a target="_blank" href="http://book.techelevator.com/java/75-java-mvc/04-controllers/02-controllers-get.html"> Learn more here.</a>', 'form');
INSERT INTO keywords (words, keywordid) VALUES ('form', (SELECT id FROM responses WHERE title = 'form'));

INSERT INTO responses (answer, title) VALUES ('The nightmare of your final capstone. Cross Origin Request errors are caused by having one origin make a call to another. <a target="_blank" href="http://book.techelevator.com/java/70-javascript/55-create-rest-api/cors.html"> Learn more here.</a>', 'cors');
INSERT INTO keywords (words, keywordid) VALUES ('cors', (SELECT id FROM responses WHERE title = 'cors'));

INSERT INTO responses (answer, title) VALUES ('A well below average American beer. (I think you meant to type CORS!)', 'coors');
INSERT INTO keywords (words, keywordid) VALUES ('coors', (SELECT id FROM responses WHERE title = 'coors'));

INSERT INTO responses (answer, title) VALUES ('Unit testing, using JQuery for Java and MSTest for .NET, assures your code is doing what is expected and protects you if you make changes in the future. <a target="_blank" href="http://book.techelevator.com/java/56-unit-testing/01-intro.html"> Java </a> <a target="_blank" href="http://book.techelevator.com/.net/56-unit-testing/25-building-some-real-unit-tests.html">.NET</a>', 'unittest');
INSERT INTO keywords (words, keywordid) VALUES ('unittest', (SELECT id FROM responses WHERE title = 'unittest'));
INSERT INTO keywords (words, keywordid) VALUES ('junit', (SELECT id FROM responses WHERE title = 'unittest'));
INSERT INTO keywords (words, keywordid) VALUES ('mstest', (SELECT id FROM responses WHERE title = 'unittest'));

INSERT INTO responses (answer, title) VALUES ('Collections, including lists, stacks, and queues are a dynamic way to collect multiple instances of any one data type. <a target="_blank" href="http://book.techelevator.com/java/35-linear-data-structures/10-collections.html"> More info here.</a>', 'collection');
INSERT INTO keywords (words, keywordid) VALUES ('collection', (SELECT id FROM responses WHERE title = 'collection'));
INSERT INTO keywords (words, keywordid) VALUES ('list', (SELECT id FROM responses WHERE title = 'collection'));
INSERT INTO keywords (words, keywordid) VALUES ('stack', (SELECT id FROM responses WHERE title = 'collection'));
INSERT INTO keywords (words, keywordid) VALUES ('queue', (SELECT id FROM responses WHERE title = 'collection'));

INSERT INTO responses (answer, title) VALUES ('Type conversion allows you to treat one data type as another, as long as it is compatable. <a target="_blank" href="http://book.techelevator.com/java/05-introduction-to-programming/type-conversion/01-type-conversion.html"> Read more about it here.</a>', 'typeconversion');
INSERT INTO keywords (words, keywordid) VALUES ('typeconversion', (SELECT id FROM responses WHERE title = 'typeconversion'));
INSERT INTO keywords (words, keywordid) VALUES ('conversion', (SELECT id FROM responses WHERE title = 'typeconversion'));

INSERT INTO responses (answer, title) VALUES ('Did I say something funny? I will never understand you humans...', 'humor');
INSERT INTO keywords (words, keywordid) VALUES ('lol', (SELECT id FROM responses WHERE title = 'humor'));
INSERT INTO keywords (words, keywordid) VALUES ('haha', (SELECT id FROM responses WHERE title = 'humor'));
INSERT INTO keywords (words, keywordid) VALUES ('rofl', (SELECT id FROM responses WHERE title = 'humor'));
INSERT INTO keywords (words, keywordid) VALUES ('lmao', (SELECT id FROM responses WHERE title = 'humor'));