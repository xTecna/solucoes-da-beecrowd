while (entrada = gets)
  n = entrada.to_i

  biblioteca = []
  for i in (0..(n - 1)) do
    biblioteca << gets
  end

  biblioteca.sort!

  for i in (0..(n - 1)) do
    puts biblioteca[i]
  end
end
