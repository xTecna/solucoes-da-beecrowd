def MDC(a, b)
    if b == 0
        a
    else
        MDC(b, a % b)
    end
end

while linha = gets
  entrada = linha.chomp.split.map(&:to_i)
  x = entrada[0]
  y = entrada[1]

  puts 2 * (x/MDC(x, y) + y/MDC(x, y))
end