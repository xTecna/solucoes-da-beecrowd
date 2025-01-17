t = gets.to_i

for i in (1..t) do
    numeros = gets.chomp.split.map(&:to_i)
    n = numeros[0]
    m = numeros[1]

    puts (((n - 2) / 3.0).ceil * ((m - 2) / 3.0).ceil)
end