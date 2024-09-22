defmodule Modulo do
  def processa(n, m) do
    if m > 0 do
      acao = IO.gets("") |> String.trim
      if acao == "fechou" do
        processa(n + 1, m - 1)
      else
        processa(n - 1, m - 1)
      end
    else
      n
    end
  end
end

entrada = IO.gets("") |> String.trim |> String.split(" ")
n = entrada |> Enum.at(0) |> String.to_integer
m = entrada |> Enum.at(1) |> String.to_integer

IO.puts Modulo.processa(n, m)