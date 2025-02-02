N = gets.to_i

for i in (1..N) do
    numeros = gets.chomp.split.map(&:to_i)
    inicio = numeros[0]
    fim = numeros[1]

    resposta = ''
    for k in (inicio..fim) do
        resposta += k.to_s
    end
    resposta += resposta.reverse

    puts resposta
end