while entrada = gets
  n = entrada.to_i
  for i in 0..(n - 1) do
    linha = ''
    for j in 0..(n - 1) do
      linha += if i == n - 1 - j
                 '2'
               elsif i == j
                 '1'
               else
                 '3'
               end
    end
    puts linha
  end
end
