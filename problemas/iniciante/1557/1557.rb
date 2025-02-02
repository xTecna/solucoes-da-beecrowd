while true
  n = gets.to_i

  break if n == 0

  limite = (Math.log10(1 << (2 * n - 2)) + 1).floor
  for i in 0..(n - 1) do
    print format(format('%%%dd', limite), 1 << i)
    for j in 1..(n - 1) do
      print format(format(' %%%dd', limite), 1 << (i + j))
    end
    puts ''
  end
  puts ''
end
