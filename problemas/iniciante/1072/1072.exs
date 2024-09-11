defmodule Modulo do
  def resolve(x) do
    if x == 0 do
      {0, 0}
    else
      resultado = resolve(x - 1)
      numero = IO.gets("") |> String.trim |> String.to_integer
      if (numero >= 10 && numero <= 20) do
        {elem(resultado, 0) + 1, elem(resultado, 1)}
      else
        {elem(resultado, 0), elem(resultado, 1) + 1}
      end
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
resultado = Modulo.resolve(n)
IO.puts "#{elem(resultado, 0)} in"
IO.puts "#{elem(resultado, 1)} out"