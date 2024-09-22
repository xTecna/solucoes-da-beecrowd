using Printf

s = readline()

soma = 0
for numero in s
    global soma += parse(Int, numero)
end
@printf "%s%d\n" s (soma % 2)
