defmodule Modulo do
  def imprime(i, n) do
    if i <= n do
      IO.puts "#{i} e #{<<i>>}"
      imprime(i + 1, n)
    end
  end
end

Modulo.imprime(97, 122)