nomes = %w[Rolien Naej Elehcim Odranoel]

n = gets.to_i
for i in (1..n) do
  k = gets.to_i
  for j in (1..k) do
    feedback = gets.to_i
    puts nomes[feedback - 1]
  end
end
