N = gets.to_i

for i in (1..N) do
    palavra1 = gets
    palavra2 = gets
    secreta = gets

    pos1 = secreta.index('_')
    pos2 = secreta.index('_', pos1 + 1)

    if palavra1[pos1] == palavra2[pos2] || palavra1[pos2] == palavra2[pos1]
        puts "Y"
    else
        puts "N"
    end
end