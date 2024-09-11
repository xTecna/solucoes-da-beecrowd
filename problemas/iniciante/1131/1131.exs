defmodule Modulo do
  def leitura2() do
    IO.puts "Novo grenal (1-sim 2-nao)"
    x = IO.gets("") |> String.trim() |> String.to_integer()
    if x == 1 || x == 2 do
      x
    else
      leitura2()
    end
  end

  def leitura() do
    numeros = IO.gets("") |> String.trim() |> String.split(" ")
    i = numeros |> Enum.at(0) |> String.to_integer()
    g = numeros |> Enum.at(1) |> String.to_integer()

    codigo = leitura2()
    if codigo == 1 do
      {inter, gremio, empate} = leitura()
      if i > g do
        {inter + 1, gremio, empate}
      else
        if i == g do
          {inter, gremio, empate + 1}
        else
          {inter, gremio + 1, empate}
        end
      end
    else
      if i > g do
        {1, 0, 0}
      else
        if i == g do
          {0, 0, 1}
        else
          {0, 1, 0}
        end
      end
    end
  end
end

{inter, gremio, empate} = Modulo.leitura()
IO.puts :io_lib.format("~.w grenais", [inter + gremio + empate])
IO.puts :io_lib.format("Inter:~.w", [inter])
IO.puts :io_lib.format("Gremio:~.w", [gremio])
IO.puts :io_lib.format("Empates:~.w", [empate])
if inter > gremio && inter > empate do
  IO.puts "Inter venceu mais"
else
  if gremio > inter && gremio > empate do
    IO.puts "Gremio venceu mais"
  else
    IO.puts "Nao houve vencedor"
  end
end