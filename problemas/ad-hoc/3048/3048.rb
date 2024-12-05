n = gets.to_i

anterior = -1
resposta = 0
for i in (1..n) do
    atual = gets.to_i
    if (atual != anterior)
        anterior = atual
        resposta += 1
    end
end

puts resposta