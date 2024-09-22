using Printf

entrada = [parse(Int32, x) for x in split(readline())]
p = entrada[1]
r = entrada[2]

if p == 1
  if r == 1
    @printf "A\n"
  else
    @printf "B\n"
  end
else
  @printf "C\n"
end