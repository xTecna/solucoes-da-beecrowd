def numeroImpares(x, y)
  (y - x) / 2 + 1
end

def somaPA(x, y)
  ((x + y) * numeroImpares(x, y)) / 2
end

n = gets.to_i

for i in (1..n)
  x, y = gets.chomp.split.map(&:to_i)

  x, y = y, x if x > y
  x += x.abs % 2 + 1
  y -= y.abs % 2 + 1

  if x > y
    puts '0'
  else
    puts somaPA(x, y)
  end
end
