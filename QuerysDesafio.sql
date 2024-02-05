-- 1
SELECT Nome, Ano FROM Filmes

-- 2

SELECT * from Filmes ORDER BY Ano

-- 3

SELECT Nome, Ano, Duracao FROM FIlmes Where Nome = 'de volta para o futuro'

-- 4

SELECT * FROM Filmes WHERE Ano = 1997

-- 5

SELECT * FROM Filmes WHERE Ano > 2000

-- 6 

SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150

-- 7

SELECT Ano,
    COUNT(*) AS quantidade_filmes,
    SUM(Duracao) AS duracao
FROM
    Filmes
GROUP BY
    Ano
ORDER BY
    duracao DESC, Ano;

-- 8

SELECT * FROM Atores WHERE Genero = 'M'

-- 9

SELECT
	PrimeiroNome,
	UltimoNome
FROM
	Atores
WHERE genero = 'F'
ORDER BY PrimeiroNome

-- 10

SELECT
    F.Nome,
    G.Genero
FROM
    Filmes F
JOIN
    FilmesGenero FG ON F.ID = FG.IDFilme
JOIN
    Generos G ON FG.IDGenero = G.ID;

-- 11

SELECT
    F.Nome,
    G.Genero
FROM
    Filmes F
JOIN
    FilmesGenero FG ON F.ID = FG.IDFilme
JOIN
    Generos G ON FG.IDGenero = G.ID
WHERE
    G.Genero = 'Mistério';
-- 12

SELECT
	F.Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM
	Filmes F
JOIN
	ElencoFilme EF ON F.ID = EF.IDFilme
JOIN
	Atores A ON F.ID = A.Id

