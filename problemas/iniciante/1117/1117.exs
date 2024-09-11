defmodule Modulo do
  def resolve(nota1, nota2) do
    if nota2 != -1 do
      IO.puts :io_lib.format("media = ~.2f", [(nota1 + nota2)/2])
    else
      {nota, _} = IO.gets("") |> String.trim |> Float.parse

      cond do
        nota >= 0.0 && nota <= 10.0 ->
          cond do
            nota1 == -1 -> resolve(nota, nota2)
            true -> resolve(nota1, nota)
          end
        true ->
          IO.puts "nota invalida"
          resolve(nota1, nota2)
      end
    end
  end
end

Modulo.resolve(-1, -1)
