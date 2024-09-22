n = gets.to_i

for i in 1..n do
  entrada = gets.chomp.split.map(&:to_i)
  h = entrada[0]
  m = entrada[1]
  o = entrada[2]

  if o == 0
    puts format('%02d:%02d - A porta fechou!', h, m)
  else
    puts format('%02d:%02d - A porta abriu!', h, m)
  end
end
