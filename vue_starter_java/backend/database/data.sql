-- Password for this user is 'greatwall'
INSERT INTO users ("username", "password", "salt", "role") VALUES
('user',
'FjZDm+sndmsdEDwNtfr6NA==',
'kidcasB0te7i0jK0fmRIGHSm0mYhdLTaiGkEAiEvLp7dAEHWnuT8n/5bd2V/mqjstQ198iImm1xCmEFu+BHyOz1Mf7vm4LILcrr17y7Ws40Xyx4FOCt8jD03G+jEafpuVJnPiDmaZQXJEpEfekGOvhKGOCtBnT5uatjKEuVWuDA=',
'user');

INSERT INTO responses (answer, title) VALUES ('Hi there! What is your name?', 'intro');
INSERT INTO keywords (words, keywordid) VALUES ('intro', (SELECT id FROM responses WHERE title = 'intro'));

INSERT INTO responses (answer, title) VALUES ('Alright, what do you need help with in pathway?', 'pathway');
INSERT INTO keywords (words, keywordid) VALUES ('pathway', (SELECT id FROM responses WHERE title = 'pathway'));

INSERT INTO responses (answer, title) VALUES ('<a href="https://contattafiles.s3.us-west-1.amazonaws.com/tecommunity/V3hUskCIbjGr07f/Job%20Search%20Expectations%20Presentation.pdf"> I found this presentation on job searching </a>', 'jobsearch');
INSERT INTO keywords (words, keywordid) VALUES ('jobsearch', (SELECT id FROM responses WHERE title = 'jobsearch'));

INSERT INTO responses (answer, title) VALUES ('I found <a href="https://contattafiles.s3.us-west-1.amazonaws.com/tecommunity/KvilSu4GIG0hFux/Crafting%20a%20Killer%20Resume%20Presentation.pdf">this presentation to help with your resume</a>' , 'resume');
INSERT INTO keywords (words, keywordid) VALUES ('resume', (SELECT id FROM responses WHERE title = 'resume')); 

INSERT INTO responses (answer, title) VALUES ('Dress to impress MEN: Suit attire. WOMEN: Slacks/skirt and nice top or dress and blazer.', 'attire');
INSERT INTO keywords (words, keywordid) VALUES ('attire', (SELECT id FROM responses WHERE title = 'attire'));

INSERT INTO responses (answer, title) VALUES ('I found these <a href="https://drive.google.com/drive/folders/0B0L4DaCt03tFTHNkOThzMi1IckU">7 tipes for a cover letter</a>', 'coverletter');
INSERT INTO keywords (words, keywordid) VALUES ('coverletter', (SELECT id FROM responses WHERE title = 'coverletter'));

INSERT INTO responses (answer, title) VALUES ('I think this <a href="https://contattafiles.s3.us-west-1.amazonaws.com/tecommunity/vEYm7LHLM68hZ1X/Preparing%20for%20your%20Technical%20Interview.pdf">presentation on interviews will help you</a>', 'interview');
INSERT INTO keywords (words, keywordid) VALUES ('interview', (SELECT id FROM responses WHERE title = 'interview'));

INSERT INTO responses (answer, title) VALUES ('DEVINS EMPLOYER API HERE?', 'employers');
INSERT INTO keywords (words, keywordid) VALUES ('employers', (SELECT id FROM responses WHERE title = 'employers'));

INSERT INTO responses (answer, title) VALUES ('Here is <a href="https://docs.google.com/document/d/1FOI7cM88J01UfdgSghaNLYh2-DjIskUYoaYG_XbqDSo/edit">a list of example STAR questions to help you practice</a>', 'starquestions');
INSERT INTO keywords (words, keywordid) VALUES ('starquestions', (SELECT id FROM responses WHERE title = 'starquestions'));

INSERT INTO responses (answer, title) VALUES ('Alright, what are you trying to learn about?', 'curriculum');
INSERT INTO keywords (words, keywordid) VALUES ('curriculum', (SELECT id FROM responses WHERE title = 'curriculum'));

INSERT INTO responses (answer, title) VALUES ('<a href="http://book.techelevator.com/java/20-arrays-and-loops/arrays/01-arrays.html">The chapter in the book about arrays is helpful</a>','arrays');
INSERT INTO keywords (words, keywordid) VALUES ('arrays', (SELECT id FROM responses WHERE title = 'arrays'));

INSERT INTO responses (answer, title) VALUES ('Do you want help with (Java MVC) or (NET MVC)?', 'mvc');
INSERT INTO keywords (words, keywordid) VALUES ('mvc', (SELECT id FROM responses WHERE title = 'mvc'));

INSERT INTO responses (answer, title) VALUES ('Here is <a href="http://book.techelevator.com/java/75-java-mvc/01-intro-to-mvc/01-introduction-to-web-applications.html">a link to the Java MVC chapter</a>', 'javamvc');
INSERT INTO keywords (words, keywordid) VALUES ('javamvc', (SELECT id FROM responses WHERE title = 'javamvc'));

INSERT INTO responses (answer, title) VALUES ('Here is <a href="http://book.techelevator.com/java/70-asp-net-core/01-intro-to-mvc/01-introduction-to-web-applications.html">a link to the .NET MVC chapter</a>', 'netmvc');
INSERT INTO keywords (words, keywordid) VALUES ('netmvc', (SELECT id FROM responses WHERE title = 'netmvc'));

INSERT INTO responses (answer, title) VALUES ('I suggest starting at <a href="http://book.techelevator.com/java/65-introduction-to-SQL-databases/10-SQL-data-types.html">the begining of the chapters on SQL</a>' , 'sql');
INSERT INTO keywords (words, keywordid) VALUES ('sql', (SELECT id FROM responses WHERE title = 'sql'));

INSERT INTO responses (answer, title) VALUES ('Do not fear, for you are among friends. You are in a chatbot message window. Calm yourself, and ask me questions about coding.', 'lost');
INSERT INTO keywords (words, keywordid) VALUES ('whereami', (SELECT id FROM responses WHERE title = 'lost'));

INSERT INTO responses (answer, title) VALUES ('Try typing: "find a job" to search for jobs.', 'job');
INSERT INTO keywords (words, keywordid) VALUES ('job', (SELECT id FROM responses WHERE title = 'job'));

INSERT INTO responses (answer, title) VALUES ('Hatred never helped anyone. Try love instead.', 'hate');
INSERT INTO keywords (words, keywordid) VALUES ('hate', (SELECT id FROM responses WHERE title = 'hate'));

INSERT INTO responses (answer, title) VALUES ('Lists are a common and useful data type. <a href="http://book.techelevator.com/java/35-linear-data-structures/15-list.html">Click here for some information on lists out of the Tech Elevator text book.</a>', 'lists');
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
INSERT INTO keywords (words, keywordid) VALUES ('location', (SELECT id FROM responses WHERE title = 'office'));
INSERT INTO keywords (words, keywordid) VALUES ('address', (SELECT id FROM responses WHERE title = 'office'));

INSERT INTO responses (answer, title) VALUES ('A boolean is an expression that always evaluates to either true or false. <a href="http://book.techelevator.com/java/10-logical-branching/boolean-expressions/01-expressions.html">Click here for the chapter on booleans from the textbook.</a>', 'boolean');
INSERT INTO keywords (words, keywordid) VALUES ('boolean', (SELECT id FROM responses WHERE title = 'boolean'));

INSERT INTO responses (answer, title) VALUES ('<a href="http://book.techelevator.com/java/20-arrays-and-loops/loops/01-loops.html">Behold, the power of the almighty for loop.</a> Mastery is key for any Tech Elevator student.', 'forloop');
INSERT INTO keywords (words, keywordid) VALUES ('loop', (SELECT id FROM responses WHERE title = 'forloop'));

INSERT INTO responses (answer, title) VALUES ('<img src="https://drive.google.com/uc?id=1kcdYwB7qoNIr7Pk1CaXJz5Hjo1z8Y-WV">', 'joins');
INSERT INTO keywords (words, keywordid) VALUES ('joins', (SELECT id FROM responses WHERE title = 'joins'));

INSERT INTO responses (answer, title) VALUES ('<a href="https://www.techelevator.com/events">Check our calendar for all our upcoming events!</a>', 'techelevatorevents');
INSERT INTO keywords (words, keywordid) VALUES ('techelevatorevents', (SELECT id FROM responses WHERE title = 'techelevatorevents'));
INSERT INTO keywords (words, keywordid) VALUES ('events', (SELECT id FROM responses WHERE title = 'techelevatorevents'));

INSERT INTO responses (answer, title) VALUES ('<iframe width="560" height="315" src="https://www.youtube.com/embed/246VAGzQokw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 'tieatie');
INSERT INTO keywords (words, keywordid) VALUES ('tieatie', (SELECT id FROM responses WHERE title = 'tieatie'));

INSERT INTO responses (answer, title) VALUES ('You are most welcome! &#128522;', 'thanks');
INSERT INTO keywords (words, keywordid) VALUES ('thanks', (SELECT id FROM responses WHERE title = 'thanks'));
INSERT INTO keywords (words, keywordid) VALUES ('thankyou', (SELECT id FROM responses WHERE title = 'thanks'));
INSERT INTO keywords (words, keywordid) VALUES ('thx', (SELECT id FROM responses WHERE title = 'thanks'));

INSERT INTO responses (answer, title) VALUES ('What can I help you with? pathway, homework?', 'help');
INSERT INTO keywords (words, keywordid) VALUES ('help', (SELECT id FROM responses WHERE title = 'help'));

INSERT INTO responses (answer, title) VALUES ('Which area in the homework can I help you with? Arrays, loops, MVCs? ', 'help');
INSERT INTO keywords (words, keywordid) VALUES ('homework', (SELECT id FROM responses WHERE title = 'homework'));
INSERT INTO keywords (words, keywordid) VALUES ('studentexercise', (SELECT id FROM responses WHERE title = 'homework'));
INSERT INTO keywords (words, keywordid) VALUES ('assignment', (SELECT id FROM responses WHERE title = 'homework'));

INSERT INTO responses (answer, title) VALUES ('Try asking me about common topics at Tech Elevator. I know a little bit about the basics of coding, plus the Pathway program. For instance, try typing "interviewing" or "MVC".', 'help');
INSERT INTO keywords (words, keywordid) VALUES ('help', (SELECT id FROM responses WHERE title = 'help'));
INSERT INTO keywords (words, keywordid) VALUES ('whatcaniaskyou', (SELECT id FROM responses WHERE title = 'help'));

INSERT INTO responses (answer, title) VALUES ('The three fundamentals of Object Orientated Programming are: polymorphism, encapsulation and inheritance.', 'OOP');
INSERT INTO keywords (words, keywordid) VALUES ('fundamentals', (SELECT id FROM responses WHERE title = 'OOP'));
INSERT INTO keywords (words, keywordid) VALUES ('oop', (SELECT id FROM responses WHERE title = 'OOP'));

INSERT INTO responses (answer, title) VALUES ('API stands for Application Programming Interface. <a target="_blank" href="http://book.techelevator.com/java/70-javascript/45-web-services/04-apis.html">Here is some more information.</a', 'API');
INSERT INTO keywords (words, keywordid) VALUES ('api', (SELECT id FROM responses WHERE title = 'API'));

INSERT INTO responses (answer, title) VALUES ('In object-oriented programming, polymorphism is the idea that something can be assigned a different meaning or usage based on the context it is referred to as. This specifically allows variables and objects to take on more than one form.', 'polymorphism');
INSERT INTO keywords (words, keywordid) VALUES ('polymorphism', (SELECT id FROM responses WHERE title = 'polymorphism'));

INSERT INTO responses (answer, title) VALUES ('Encapsulation language construct that facilitates the bundling of data with the methods (or other functions) operating on that data.', 'encapsulation');
INSERT INTO keywords (words, keywordid) VALUES ('encapsulation', (SELECT id FROM responses WHERE title = 'encapsulation'));

INSERT INTO responses (answer, title) VALUES ('Inheritance is the act of having one class adopt the properties and methods of another class. This prevents code duplication and allows you to share code across classes while having the source code live in only one class file.', 'inheritance');
INSERT INTO keywords (words, keywordid) VALUES ('inheritance', (SELECT id FROM responses WHERE title = 'inheritance'));