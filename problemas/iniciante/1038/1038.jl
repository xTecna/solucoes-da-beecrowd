using Printf

entrada = split(readline())
codigo = parse(Int, entrada[1])
quantidade = parse(Int, entrada[2])

precos = [4.00, 4.50, 5.00, 2.00, 1.50]

@printf "Total: R\$ %.2f\n" (quantidade * precos[codigo])