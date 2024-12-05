defmodule Modulo do
  @precos [0.0, 1.5, 2.5, 3.5, 4.5, 5.5]
  
  def processa(n) do
    if n > 0 do
      numeros = IO.gets("") |> String.trim |> String.split(" ")
      codigo = numeros |> Enum.at(0) |> String.to_integer
      q = numeros |> Enum.at(1) |> String.to_integer
      
      processa(n - 1) + Enum.at(@precos, codigo - 1000) * q
    else
      0.0
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer
valor = Modulo.processa(n)
IO.puts :io_lib.format("~.2f", [valor])