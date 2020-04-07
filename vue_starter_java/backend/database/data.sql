-- Password for this user is 'greatwall'
INSERT INTO users ("username", "password", "salt", "role") VALUES
('user',
'FjZDm+sndmsdEDwNtfr6NA==',
'kidcasB0te7i0jK0fmRIGHSm0mYhdLTaiGkEAiEvLp7dAEHWnuT8n/5bd2V/mqjstQ198iImm1xCmEFu+BHyOz1Mf7vm4LILcrr17y7Ws40Xyx4FOCt8jD03G+jEafpuVJnPiDmaZQXJEpEfekGOvhKGOCtBnT5uatjKEuVWuDA=',
'user');

INSERT INTO responses (answer, title) VALUES ('Alright, what do you need help with in pathway?', 'pathway');
INSERT INTO keywords (words, keywordid) VALUES ('pathway', (SELECT id FROM responses WHERE title = 'pathway'));
INSERT INTO keywords (words, keywordid) VALUES ('job search', (SELECT id FROM responses WHERE title = 'pathway'));
