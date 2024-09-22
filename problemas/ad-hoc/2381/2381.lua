entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = numero
end
n = tonumber(entrada[1], 10)
k = tonumber(entrada[2], 10)

alunos = {}
for _ = 1, n do
  table.insert(alunos, io.read())
end

table.sort(alunos)

print(alunos[k])
