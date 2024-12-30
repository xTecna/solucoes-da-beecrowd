defmodule Modulo do
  def mdc(a, b) do
    if b == 0 do
      a
    else
      mdc(b, rem(a, b))
    end
  end

  def leitura() do
    try do
      linha = IO.gets("") |> String.trim |> String.split(" ")
      x = linha |> Enum.at(0) |> String.to_integer
      y = linha |> Enum.at(1) |> String.to_integer

      IO.puts(floor(2 * (x + y) / mdc(x, y)))

      leitura()
    rescue
      FunctionClauseError -> nil
    end
  end
end

Modulo.leitura()