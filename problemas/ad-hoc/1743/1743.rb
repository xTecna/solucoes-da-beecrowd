x = gets.chomp.split.map(&:to_i)
y = gets.chomp.split.map(&:to_i)

compativel = true
for i in (0..4) do
  if x[i] == y[i]
    compativel = false
    break
  end
end

if compativel
  puts 'Y'
else
  puts 'N'
end
