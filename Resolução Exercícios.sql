-- Exerc�cio 1
SELECT Nome, Ano FROM Filmes

-- Exerc�cio 2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

--Exerc�cio 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

--Exerc�cio 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--Exerc�cio 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

--Exerc�cio 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

--Exerc�cio 7
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--Exerc�cio 8
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

--Exerc�cio 9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--Exerc�cio 10
SELECT F.Nome, G.Genero FROM Filmes F INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme INNER JOIN Generos G ON G.Id = FG.IdGenero

--Exerc�cio 11
SELECT F.Nome, G.Genero FROM Filmes F INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme INNER JOIN Generos G ON G.Id = FG.IdGenero WHERE G.Genero = 'Mist�rio'

--Exerc�cio 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel FROM Filmes F INNER JOIN ElencoFilme E ON E.IdFilme = F.Id INNER JOIN Atores A ON E.IdAtor = A.Id