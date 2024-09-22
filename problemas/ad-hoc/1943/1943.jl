using Printf

k = parse(Float64, readline())

if k == 1
  @printf "Top 1\n"
else
  if k <= 3
    @printf "Top 3\n"
  else
    if k <= 5
      @printf "Top 5\n"
    else
      if k <= 10
        @printf "Top 10\n"
      else
        if k <= 25
          @printf "Top 25\n"
        else
          if k <= 50
            @printf "Top 50\n"
          else
            @printf "Top 100\n"
          end
        end
      end
    end
  end
end