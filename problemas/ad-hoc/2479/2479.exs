defmodule Modulo do
  def leitura(n) do
    if n > 0 do
      entrada = IO.gets("") |> String.trim |> String.split(" ")
      comportamento = entrada |> Enum.at(0)
      crianca = entrada |> Enum.at(1)

      {criancas, levadas, comportadas} = leitura(n - 1)

      if comportamento == "+" do
        {[crianca | criancas], levadas, comportadas + 1}
      else
        {[crianca | criancas], levadas + 1, comportadas}
      end
    else
      {[], 0, 0}
    end
  end

  def imprime(criancas, n) do
    if n < length(criancas) do
      IO.puts Enum.at(criancas, n)
      imprime(criancas, n + 1)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer

{criancas, levadas, comportadas} = Modulo.leitura(n)
criancas = Enum.sort(criancas)
Modulo.imprime(criancas, 0)
