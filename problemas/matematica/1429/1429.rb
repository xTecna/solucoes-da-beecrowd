def converteParaDecimal(numero)
  resposta = 0
  potencia = 0
  fatoriais = [1, 2, 6, 24, 120]

  for i in ((numero.length - 1)..0).step(-1) do
    resposta += numero[i].to_i * fatoriais[potencia]
    potencia += 1
  end

  resposta
end

while true
  n = gets.chomp

  break if n == '0'

  puts converteParaDecimal(n)
end
