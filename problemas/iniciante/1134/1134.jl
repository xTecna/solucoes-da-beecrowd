using Printf

alcool = 0
gasolina = 0
diesel = 0

opcao = parse(Int32, readline())
while opcao != 4
    if opcao == 1
        global alcool += 1
    else
        if opcao == 2
            global gasolina += 1
        else
            if opcao == 3
                global diesel += 1
            end
        end
    end
    
    global opcao = parse(Int32, readline())
end

@printf "MUITO OBRIGADO\n"
@printf "Alcool: %d\n" alcool
@printf "Gasolina: %d\n" gasolina
@printf "Diesel: %d\n" diesel