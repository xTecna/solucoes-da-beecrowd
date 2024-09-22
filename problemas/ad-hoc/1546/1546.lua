nomes = { "Rolien", "Naej", "Elehcim", "Odranoel" }

n = tonumber(io.read(), 10)
for i = 1, n do
  k = tonumber(io.read(), 10)
  for j = 1, k do
    feedback = tonumber(io.read(), 10)
    print(nomes[feedback])
  end
end
