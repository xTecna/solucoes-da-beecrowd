while (entrada = gets)
  f = entrada.to_f
  lado = f * Math.sin(108 * Math.acos(-1) / 180) / Math.sin(63 * Math.acos(-1) / 180)
  puts format('%.10f', lado)
end
