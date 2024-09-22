defmodule Modulo do
  def imprime(n) do
    if n > 0 do
      IO.puts "|                                     |"
      imprime(n - 1)
    end
  end
end

IO.puts "---------------------------------------"
Modulo.imprime(5)
IO.puts "---------------------------------------"