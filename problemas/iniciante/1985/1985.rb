precos = [0, 1.5, 2.5, 3.5, 4.5, 5.5]

p = gets.to_i

valor = 0.0
for _ in 1..p do
  numeros = gets.chomp.split.map(&:to_i)
  codigo = numeros[0]
  q = numeros[1]

  valor += precos[codigo - 1000] * q
end
puts format("%.2f\n", valor)
