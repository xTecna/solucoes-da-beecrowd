s = io.read()

soma = 0
for i = 1, #s do
  soma = soma + tonumber(s:sub(i, i), 10)
end
print(string.format("%s%d", s, soma % 2))
