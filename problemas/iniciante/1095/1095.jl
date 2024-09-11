using Printf

for i in 0:12
    @printf "I=%d J=%d\n" (3 * i + 1) (60 - 5 * i)
end