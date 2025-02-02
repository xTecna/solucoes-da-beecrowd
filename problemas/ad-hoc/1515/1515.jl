using Printf

while true
	n = parse(Int, readline())
	if n == 0
		break
	end
	
	resposta = ""
	menor_ano = 9999
	for i = 1:n
		entrada = split(readline())
		planeta = entrada[1]
		ano = parse(Int, entrada[2])
		tempo = parse(Int, entrada[3])
		
		if ano - tempo < menor_ano
			resposta = planeta
			menor_ano = ano - tempo
		end
	end
	
	@printf "%s\n" resposta
end