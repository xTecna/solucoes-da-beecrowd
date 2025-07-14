def dist(x1, y1, x2, y2)
  Math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))
end

while (linha = gets)
  entrada = linha.chomp.split.map(&:to_i)
  r1 = entrada[0]
  x1 = entrada[1]
  y1 = entrada[2]
  r2 = entrada[3]
  x2 = entrada[4]
  y2 = entrada[5]

  if dist(x1, y1, x2, y2) <= r1 - r2
    puts 'RICO'
  else
    puts 'MORTO'
  end
end
