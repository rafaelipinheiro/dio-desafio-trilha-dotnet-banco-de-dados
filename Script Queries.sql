-- 1 - Buscar o nome e ano dos filmes

  select Filmes.Nome,
         Filmes.Ano
    from Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

  select Filmes.Nome,
         Filmes.Ano
    from Filmes
order by Filmes.Ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

  select Filmes.Nome,
         Filmes.Ano,
         Filmes.Duracao 
    from Filmes
   where lower(Filmes.Nome) = 'de volta para o futuro';

-- 4 - Buscar os filmes lançados em 1997

  select Filmes.Nome,
         Filmes.Ano,
         Filmes.Duracao
    from Filmes
   where Filmes.Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000

  select Filmes.Nome,
         Filmes.Ano,
         Filmes.Duracao
    from Filmes
   where Filmes.Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

  select Filmes.Nome,
         Filmes.Ano,
         Filmes.Duracao
    from Filmes
   where Filmes.Duracao > 100
     and Filmes.Duracao < 150
order by Filmes.Duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

  select Filmes.Ano,
         count(Filmes.Id) as Quantidade
    from Filmes
group by Filmes.Ano
order by 2 desc;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

  select Atores.PrimeiroNome,
         Atores.UltimoNome 
    from Atores
   where Atores.Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

  select Atores.PrimeiroNome,
         Atores.UltimoNome 
    from Atores
   where Atores.Genero = 'F'
order by Atores.PrimeiroNome;
  
-- 10 - Buscar o nome do filme e o gênero

  select Filmes.Nome,
         Generos.Genero 
    from Filmes
    join FilmesGenero
      on FilmesGenero.IdFilme = Filmes.Id 
    join Generos
      on Generos.Id = FilmesGenero.IdGenero; 
 


-- 11 - Buscar o nome do filme e o gênero do tipo Mistério

  select Filmes.Nome,
         Generos.Genero 
    from Filmes
    join FilmesGenero
      on FilmesGenero.IdFilme = Filmes.Id 
    join Generos
      on Generos.Id = FilmesGenero.IdGenero
   where Generos.Genero = 'Mistério'; 

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

  select Filmes.Nome,
         Atores.PrimeiroNome,
         Atores.UltimoNome,
         ElencoFilme.Papel
    from Filmes
    join ElencoFilme 
      on ElencoFilme.IdFilme = Filmes.Id 
    join Atores
      on Atores.Id = ElencoFilme.IdAtor; 
