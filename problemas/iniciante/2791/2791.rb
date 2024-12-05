entrada = gets.chomp.split.map(&:to_i)

for i in 0..3 do
  if entrada[i] == 1
    puts(i + 1)
    break
  end
end
