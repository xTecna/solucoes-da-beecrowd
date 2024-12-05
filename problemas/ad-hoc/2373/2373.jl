using Printf

n = parse(Int, readline())

resposta = 0
for i in 1:n
	entrada = [parse(Int32, x) for x in split(readline())]
	latas = entrada[1]
	copos = entrada[2]
	
	if latas > copos
		global resposta += copos
	end
end

@printf "%d\n" resposta
