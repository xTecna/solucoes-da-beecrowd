def segura(m, i, j)
  m[i][j] + m[i + 1][j] + m[i][j + 1] + m[i + 1][j + 1] >= 2
end

n = gets.to_i

m = Array.new(n + 1) { Array.new(n + 1) }
for i in (0..n)
  entrada = gets.chomp.split.map(&:to_i)
  for j in (0..n)
    m[i][j] = entrada[j]
  end
end

for i in (0..(n - 1))
  linha = ''
  for j in (0..(n - 1))
    linha += if segura(m, i, j)
               'S'
             else
               'U'
             end
  end
  puts linha
end
