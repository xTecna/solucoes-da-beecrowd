n = tonumber(io.read())

resposta = 7
if n > 100 then
    resposta = resposta + (n - 100) * 5
    n = 100
end

if n > 30 then
    resposta = resposta + (n - 30) * 2
    n = 30
end

if n > 10 then
    resposta = resposta + n - 10
end

print(resposta)
