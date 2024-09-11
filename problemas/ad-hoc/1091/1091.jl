using Printf

while true
  k = parse(Int32, readline())

  if k == 0
    break
  end

  entrada = [parse(Int32, x) for x in split(readline())]
  n = entrada[1]
  m = entrada[2]
  for i in 1:k
    entrada = [parse(Int32, x) for x in split(readline())]
    x = entrada[1]
    y = entrada[2]

    x -= n
    y -= m

    if x > 0 && y > 0
      @printf "NE\n"
    else
      if x > 0 && y < 0
        @printf "SE\n"
      else
        if x < 0 && y > 0
          @printf "NO\n"
        else
          if x < 0 && y < 0
            @printf "SO\n"
          else
            @printf "divisa\n"
          end
        end
      end
    end
  end
end