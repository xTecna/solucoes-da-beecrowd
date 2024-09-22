defmodule Modulo do
  def resolve(0), do: []
  def resolve(t) do
    livro = IO.gets("") |> String.trim
    [livro | resolve(t - 1)]
  end

  def imprime([]), do: :ok
  def imprime([livro | biblioteca]) do
    IO.puts livro
    imprime(biblioteca)
  end

  def leitura() do
    try do
      t = IO.gets("") |> String.trim() |> String.to_integer()
      biblioteca = resolve(t)
      imprime(Enum.sort(biblioteca))
      leitura()
    rescue
      FunctionClauseError -> :ok
    end
  end
end

case Modulo.leitura() do
  :ok -> :ok
  {:error, _} -> :ok
end
