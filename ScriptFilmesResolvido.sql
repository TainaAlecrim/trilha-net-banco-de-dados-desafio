-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes ORDER BY ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT Nome, Ano, Duracao FROM Filmes WHERE nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lan�ados em 1997
SELECT  Nome, Ano, Duracao FROM Filmes WHERE ano = 1997

-- 5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT  Nome, Ano, Duracao FROM Filmes WHERE ano >= 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao 

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o g�nero
SELECT f.Nome, g.Genero FROM Generos g, FilmesGenero fg, Filmes f WHERE fg.IdFilme = f.Id AND g.Id = fg.IdGenero

-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT Nome, Genero FROM Generos g 
INNER JOIN FilmesGenero fg ON  g.Id = fg.IdGenero 
INNER JOIN Filmes f ON fg.IdFilme = f.Id
WHERE fg.IdGenero = 10

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome Filme, A.PrimeiroNome, A.UltimoNome, E.Papel
FROM Filmes f
INNER JOIN ElencoFilme e ON e.IdFilme = f.Id
INNER JOIN Atores a ON a.Id = e.IdAtor
