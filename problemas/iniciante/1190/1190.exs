defmodule Modulo do
  def leitura(i, j) do
    {numero, _} = IO.gets("") |> String.trim |> Float.parse
    {media, quantidade} = cond do
      i < 11 && j == 11 -> leitura(i + 1, 0)
      i == 11 && j == 11 -> {0.0, 0}
      true -> leitura(i, j + 1)
    end
    if j >= max(i + 1, 12 - i) do
      {media + numero, quantidade + 1}
    else
      {media, quantidade}
    end
  end
end

t = IO.gets("") |> String.trim
{media, quantidade} = Modulo.leitura(0, 0)
if t == "M" do
  IO.puts :io_lib.format("~.1f", [media / quantidade])
else
  IO.puts :io_lib.format("~.1f", [media])
end