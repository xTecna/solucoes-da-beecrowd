using Printf

while !eof(stdin)
  entrada = readline()
  n = parse(Int32, entrada)

  biblioteca = []
  for i in 1:n
    push!(biblioteca, readline())
  end
  biblioteca = sort(biblioteca)

  for i in 1:n
    @printf "%s\n" biblioteca[i]
  end
end
