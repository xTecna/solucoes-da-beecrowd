N = gets.to_i
for i in (1..N) do
    linha = gets.chomp
    parte1 = linha[2..3].to_i
    parte2 = linha[5..7].to_i
    parte3 = linha[11..12].to_i

    puts (parte1 + parte2 + parte3)
end