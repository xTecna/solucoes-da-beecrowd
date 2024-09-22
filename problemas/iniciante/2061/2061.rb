entrada = gets.chomp.split.map(&:to_i)
n = entrada[0]
m = entrada[1]

for i in 1..m do
  acao = gets.chomp
  if acao == "fechou" then
    n += 1
  else
    n -= 1
  end
end

puts n