-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

INSERT INTO responses (answer, title) VALUES ('Here is how you write code: (this is a link to the book)', 'coding');
INSERT INTO keywords (words, keywordid) VALUES ('code', (SELECT id FROM responses WHERE title = 'coding'));
INSERT INTO keywords (words, keywordid) VALUES ('how code', (SELECT id FROM responses WHERE title = 'coding'));

COMMIT;