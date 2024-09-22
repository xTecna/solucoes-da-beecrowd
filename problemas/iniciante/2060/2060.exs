defmodule Modulo do
  def leitura(entrada, n) do
    if n >= 0 do
      numero = entrada |> Enum.at(n) |> String.to_integer()
      [dois, tres, quatro, cinco] = leitura(entrada, n - 1)
      d = if rem(numero, 2) == 0, do: 1, else: 0
      t = if rem(numero, 3) == 0, do: 1, else: 0
      q = if rem(numero, 4) == 0, do: 1, else: 0
      c = if rem(numero, 5) == 0, do: 1, else: 0
      [dois + d, tres + t, quatro + q, cinco + c]
    else
      [0, 0, 0, 0]
    end
  end
end

n = IO.gets("") |> String.trim() |> String.to_integer()
entrada = IO.gets("") |> String.trim() |> String.split(" ")
[dois, tres, quatro, cinco] = Modulo.leitura(entrada, n - 1)
IO.puts Integer.to_string(dois) <> " Multiplo(s) de 2"
IO.puts Integer.to_string(tres) <> " Multiplo(s) de 3"
IO.puts Integer.to_string(quatro) <> " Multiplo(s) de 4"
IO.puts Integer.to_string(cinco) <> " Multiplo(s) de 5"