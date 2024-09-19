t = gets.strip

m = Array.new(12) { Array.new(12) }
for i in (0..11)
  for j in (0..11)
    m[i][j] = gets.to_f
  end
end

soma = 0.0
quantidade = 0
for i in (7..11)
  for j in ((12-i)..(i-1))
    soma += m[i][j]
    quantidade += 1
  end
end

soma /= quantidade if t == 'M'

puts format('%.1f', soma)
