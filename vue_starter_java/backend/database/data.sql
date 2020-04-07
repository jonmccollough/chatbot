-- Password for this user is 'greatwall'
INSERT INTO users ("username", "password", "salt", "role") VALUES
('user',
'FjZDm+sndmsdEDwNtfr6NA==',
'kidcasB0te7i0jK0fmRIGHSm0mYhdLTaiGkEAiEvLp7dAEHWnuT8n/5bd2V/mqjstQ198iImm1xCmEFu+BHyOz1Mf7vm4LILcrr17y7Ws40Xyx4FOCt8jD03G+jEafpuVJnPiDmaZQXJEpEfekGOvhKGOCtBnT5uatjKEuVWuDA=',
'user');

INSERT INTO responses (answer, title) VALUES ('Hi there! What is your name?', 'intro');

INSERT INTO responses (answer, title) VALUES ('Alright, what do you need help with in pathway?', 'pathway');
INSERT INTO keywords (words, keywordid) VALUES ('pathway', (SELECT id FROM responses WHERE title = 'pathway'));
INSERT INTO keywords (words, keywordid) VALUES ('job search', (SELECT id FROM responses WHERE title = 'pathway'));
INSERT INTO responses (answer, title) VALUES ('I found this presentation on job searching: https://contattafiles.s3.us-west-1.amazonaws.com/tecommunity/V3hUskCIbjGr07f/Job%20Search%20Expectations%20Presentation.pdf', 'job search');

INSERT INTO keywords (words, keywordid) VALUES ('resume', (SELECT id FROM responses WHERE title = 'pathway')); 
INSERT INTO responses (answer, title) VALUES ('I found this presentation to help with your resume: https://contattafiles.s3.us-west-1.amazonaws.com/tecommunity/KvilSu4GIG0hFux/Crafting%20a%20Killer%20Resume%20Presentation.pdf', 'resume');

INSERT INTO keywords (words, keywordid) VALUES ('attire', (SELECT id FROM responses WHERE title = 'pathway'));
INSERT INTO responses (answer, title) VALUES ('Dress to impress
MEN: Suit attire 
WOMEN: Slacks/skirt and nice top or dress and blazer', 'attire');

INSERT INTO keywords (words, keywordid) VALUES ('cover letter', (SELECT id FROM responses WHERE title = 'pathway'));
INSERT INTO responses (answer, title) VALUES ('I found these 7 tipes for a cover letter: https://drive.google.com/drive/folders/0B0L4DaCt03tFTHNkOThzMi1IckU', 'cover letter');

INSERT INTO keywords (words, keywordid) VALUES ('interview', (SELECT id FROM responses WHERE title = 'pathway'));
INSERT INTO responses (answer, title) VALUES ('I think this presentation on interviews will help you: https://contattafiles.s3.us-west-1.amazonaws.com/tecommunity/vEYm7LHLM68hZ1X/Preparing%20for%20your%20Technical%20Interview.pdf', 'interview');

INSERT INTO keywords (words, keywordid) VALUES ('employers', (SELECT id FROM responses WHERE title = 'pathway'));
INSERT INTO responses (answer, title) VALUES ('DEVINS EMPLOYER API HERE?', 'employers');

INSERT INTO keywords (words, keywordid) VALUES ('star questions', (SELECT id FROM responses WHERE title = 'pathway'));
INSERT INTO responses (answer, title) VALUES ('Here is a list of example STAR questions to help you practice: https://docs.google.com/document/d/1FOI7cM88J01UfdgSghaNLYh2-DjIskUYoaYG_XbqDSo/edit', 'star questions');

INSERT INTO responses (answer, title) VALUES ('Alright, what are you trying to learn about?', 'curriculum');

INSERT INTO keywords (words, keywordid) VALUES ('arrays', (SELECT id FROM responses WHERE title = 'curriculum'));
INSERT INTO responses (answer, title) VALUES ('The chapter in the book about arrays is helpful: http://book.techelevator.com/java/20-arrays-and-loops/arrays/01-arrays.html','arrays');

INSERT INTO keywords (words, keywordid) VALUES ('mvc', (SELECT id FROM responses WHERE title = 'curriculum'));
INSERT INTO responses (answer, title) VALUES ('Do you want help with (Java MVC) or (.NET JAVA)?', 'mvc');
--Need response to a second question to come first so it generates the ID and the keyword can pull it
INSERT INTO responses (answer, title) VALUES ('Here is a link to the Java MVC chapter: http://book.techelevator.com/java/75-java-mvc/01-intro-to-mvc/01-introduction-to-web-applications.html', 'Java MVC');
INSERT INTO keywords (words, keywordid) VALUES ('Java MVC', (SELECT id FROM responses WHERE title = 'Java MVC'));

INSERT INTO responses (answer, title) VALUES ('Here is a link to the .NET MVC chapter: http://book.techelevator.com/java/70-asp-net-core/01-intro-to-mvc/01-introduction-to-web-applications.html', '.NET MVC');
INSERT INTO keywords (words, keywordid) VALUES ('.NET MVC', (SELECT id FROM responses WHERE title = '.NET MVC'));

INSERT INTO keywords (words, keywordid) VALUES ('sql', (SELECT id FROM responses WHERE title = 'curriculum'));
INSERT INTO responses (answer, title) VALUES ('I suggest starting at the begining of the chapters on SQL: http://book.techelevator.com/java/65-introduction-to-SQL-databases/10-SQL-data-types.html', 'sql');

