def r(a, b)
  (9 * a * a) + (b * b)
end

def b(a, b)
  2 * (a * a) + (25 * b * b)
end

def c(a, b)
  -100 * a + (b * b * b)
end

n = gets.to_i

for i in (1..n) do
  entrada = gets.chomp.split.map(&:to_i)
  x = entrada[0]
  y = entrada[1]

  rafael = r(x, y)
  beto = b(x, y)
  carlos = c(x, y)

  if rafael > beto and rafael > carlos
    puts 'Rafael ganhou'
  elsif beto > rafael and beto > carlos
    puts 'Beto ganhou'
  else
    puts 'Carlos ganhou'
  end
end
