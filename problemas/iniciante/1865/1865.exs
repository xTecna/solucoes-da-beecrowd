defmodule Modulo do
  def leitura(n) do
    if n > 0 do
      entrada = IO.gets("") |> String.trim |> String.split(" ")

      nome = entrada |> Enum.at(0)
      if nome == "Thor" do
        IO.puts "Y"
      else
        IO.puts "N"
      end

      leitura(n - 1)
    end
  end
end

n = IO.gets("") |> String.trim |> String.to_integer()
Modulo.leitura(n)