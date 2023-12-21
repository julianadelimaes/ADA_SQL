-- CRIAR TABELA
create table games (
	console varchar(100),
	gameName varchar(100),
	review varchar(100),
	score int
);
-- IMPORTAR DADOS PARA A TABELA
copy games (console,gameName, review, score) from 'c:\games.csv'
DELIMITer ',' CSV HEADER;
SELECT * FROM games;

--#1 QUAL É A ESCALA DE AVALIAÇÕES?
SELECT DISTINCT  review, score from games ORDER BY score DESC

--#2 QUAL É A DISTRIBUIÇÃO DAS AVALIAÇÕES?
SELECT score, COUNT(*) AS qtd_games
FROM games
GROUP BY score
ORDER BY score;

--#3 QUAL É A MÉDIA DE AVALIAÇÃO DOS JOGOS?
SELECT AVG(score) AS avg_score FROM games;

--#4 QUAIS OS CONSOLES MAIS FAMOSOS?
SELECT console, COUNT(*) AS qtd_games
FROM games
GROUP BY console
ORDER BY qtd_games DESC
LIMIT 5;

--#5 QUAIS OS MELHORES JOGOS?
SELECT gamename, score
FROM games
ORDER BY score DESC
LIMIT 10;

--#6 E OS PIORES?
SELECT gamename, score
FROM games
ORDER BY score ASC
LIMIT 10;
