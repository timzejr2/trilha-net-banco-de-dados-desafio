-- Exercício 1
SELECT Nome, Ano FROM Filmes

-- Exercício 2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

--Exercício 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

--Exercício 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--Exercício 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

--Exercício 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

--Exercício 7
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--Exercício 8
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

--Exercício 9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--Exercício 10
SELECT F.Nome, G.Genero FROM Filmes F INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme INNER JOIN Generos G ON G.Id = FG.IdGenero

--Exercício 11
SELECT F.Nome, G.Genero FROM Filmes F INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme INNER JOIN Generos G ON G.Id = FG.IdGenero WHERE G.Genero = 'Mistério'

--Exercício 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel FROM Filmes F INNER JOIN ElencoFilme E ON E.IdFilme = F.Id INNER JOIN Atores A ON E.IdAtor = A.Id