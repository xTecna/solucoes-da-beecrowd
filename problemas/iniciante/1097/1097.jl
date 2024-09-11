using Printf

for i in 1:2:9
    for j in 7+(i-1):-1:5+(i-1)
        @printf "I=%d J=%d\n" i j
    end
end