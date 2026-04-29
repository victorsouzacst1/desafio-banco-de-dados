-- 1 Buscar Nome e Ano
SELECT
  Nome,
  Ano
FROM Filmes;
-- 2 Buscar Ano em ordem crescente
SELECT 
  Nome,
  Ano
FROM Filmes
ORDER BY Ano ASC;
-- 3 Buscar o filme 'de volta para o futuro' atraves de Nome, Ano e Duração
SELECT
 Nome,
 Ano,
 Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';
-- 4 Buscar filmes lançados em 1997
SELECT 
  Nome,
  Ano,
  Duracao
FROM Filmes
WHERE Ano = 1997;
-- 5 Buscar os filmes lançados APÓS o ano 2000
SELECT
  Nome,
  Ano
FROM Filmes
WHERE Ano > 2000;
-- 6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT
 Nome,
 Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;
-- 7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT
 Ano,
 COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano 
ORDER BY Ano DESC;
-- 8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
 PrimeiroNome,
 UltimoNome
FROM Atores
WHERE Genero = 'M';
-- 9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
 PrimeiroNome,
 UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;
-- 10 Buscar o nome do filme e o gênero
SELECT
 F.Nome AS Filme,
 G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero;
-- 11 Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
 F.Nome AS Filme,
 G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério';
-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
 F.Nome AS Filme,
 A.PrimeiroNome,
 A.UltimoNome,
 EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor;