t = gets.to_i
for _ in (1..t) do
  numeros = gets.chomp.split.map(&:to_i)
  d = numeros[0]
  i = numeros[1]
  b = numeros[2]

  precos = gets.chomp.split.map(&:to_i)
  resposta = 0
  for _ in (1..b) do
    bolo = gets.chomp.split.map(&:to_i)

    custo = 0
    for k in (1..(bolo.length - 1)).step(2) do
      custo += precos[bolo[k]] * bolo[k + 1]
    end

    resposta = [resposta, d / custo].max
  end

  puts resposta
end
