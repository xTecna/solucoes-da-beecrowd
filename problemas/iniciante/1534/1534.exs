defmodule Modulo do
  def imprime(i, j, n) do
    if j >= n do
      "\n" <> imprime(i + 1, 0, n)
    else
      if i >= n do
        ""
      else
        if i == n - 1 - j do
          "2" <> imprime(i, j + 1, n)
        else
          if i == j do
            "1" <> imprime(i, j + 1, n)
          else
            "3" <> imprime(i, j + 1, n)
          end
        end
      end
    end
  end

  def leitura() do
    try do
      n = IO.gets("") |> String.trim() |> String.to_integer
      resposta = imprime(0, 0, n)
      IO.puts String.trim(resposta)
      leitura()
    rescue
      FunctionClauseError -> []
    end
  end
end

Modulo.leitura()