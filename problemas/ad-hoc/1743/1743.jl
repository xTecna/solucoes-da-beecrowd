using Printf

x = [parse(Float64, x) for x in split(readline())]
y = [parse(Float64, x) for x in split(readline())]

compativel = true
for i in 1:5
  if x[i] == y[i]
    global compativel = false
    break
  end
end

if compativel
  @printf "Y\n"
else
  @printf "N\n"
end