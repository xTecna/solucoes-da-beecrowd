using Printf

while !eof(stdin)
  n = parse(Int, readline())
  for i in 1:n
    for j in 1:n
      if i == n - j + 1
        @printf "2"
      else
        if i == j
          @printf "1"
        else
          @printf "3"
        end
      end
    end
    @printf "\n"
  end
end
