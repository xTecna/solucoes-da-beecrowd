defmodule Modulo do
  def leitura() do
    try do
      pi = 3.141592654
      numeros = IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(fn n -> String.to_float(n) end)
      a = numeros |> Enum.at(0)
      b = numeros |> Enum.at(1)
      c = numeros |> Enum.at(2)
      IO.puts(:io_lib.format("~.2f", [5.0 * (:math.tan(a * pi / 180.0) * b + c)]))
      leitura()
    rescue
      FunctionClauseError -> nil
    end
  end
end

Modulo.leitura()
