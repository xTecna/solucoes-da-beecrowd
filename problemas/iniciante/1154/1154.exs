defmodule Modulo do
  def processa(idade, soma, quantidade) do
    if idade >= 0 do
      x = IO.gets("") |> String.trim() |> String.to_integer()
      processa(x, soma + idade, quantidade + 1)
    else
      {soma, quantidade}
    end
  end
end

idade = IO.gets("") |> String.trim() |> String.to_integer()
{soma, quantidade} = Modulo.processa(idade, 0, 0)
IO.puts :io_lib.format("~.2f", [soma / quantidade])
