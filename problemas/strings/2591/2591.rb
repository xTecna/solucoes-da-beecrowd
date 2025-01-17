N = gets.to_i

for i in (1..N) do
    hamekame = gets.split(/[hmek]/).reject!(&:empty?)

    tamanho1 = hamekame[0].length
    tamanho2 = hamekame[1].length

    resposta = "k"
    for j in (1..(tamanho1 * tamanho2)) do
        resposta += "a"
    end
    puts resposta
end