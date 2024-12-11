using Printf

n = parse(Int32, readline())
for i in 1:n
	cartas = readline()

	if occursin("A", cartas) && occursin("K", cartas) && occursin("Q", cartas) && occursin("J", cartas)
		@printf "Aaah muleke\n"
	else
		@printf "Ooo raca viu\n"
	end
end