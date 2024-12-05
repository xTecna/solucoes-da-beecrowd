using Printf

n = parse(Int32, readline())
if (n > 85)
  @printf "A\n"
else
  if (n > 60)
    @printf "B\n"
  else
    if (n > 35)
      @printf "C\n"
    else
      if (n > 0)
        @printf "D\n"
      else
        @printf "E\n"
      end
    end
  end
end