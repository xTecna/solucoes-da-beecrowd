n, saldo = gets.chomp.split.map(&:to_i)

resposta = saldo
for i in (1..n) do
    movimentacao = gets.to_i
    saldo += movimentacao
    resposta = [resposta, saldo].min
end

puts resposta