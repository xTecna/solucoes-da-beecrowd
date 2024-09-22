while true do
  entrada = gets.chomp.split.map(&:to_i)
  x = entrada[0]
  m = entrada[1]

  if x == 0 && m == 0 then
    break
  end

  puts (x * m)
end