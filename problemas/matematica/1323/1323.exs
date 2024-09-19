defmodule Modulo do
  @f Map.new()

  def feynman(1), do: 1
  def feynman(n) when is_integer(n) and n > 1 do
    case Map.fetch(@f, n) do
      {:ok, result} -> result
      :error ->
        result = (n * n) + feynman(n - 1)
        @f = Map.put(@f, n, result)
        result
    end
  end

  def leitura() do
    n = IO.gets("") |> String.trim() |> String.to_integer()
    if n != 0 do
      IO.puts feynman(n)
      leitura()
    end
  end
end

Modulo.leitura()
