senha = parse(Int32, readline())
while senha != 2002
    println("Senha Invalida")
    global senha = parse(Int32, readline())
end
println("Acesso Permitido")