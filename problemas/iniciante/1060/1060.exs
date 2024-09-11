defmodule Modulo do
  def positivos(x) do
    if x == 0 do
      0
    else
      {numero, _} = IO.gets("") |> String.trim |> Float.parse
      if numero > 0 do
        positivos(x - 1) + 1
      else
        positivos(x - 1)
      end
    end
  end
end

IO.puts "#{Modulo.positivos(6)} valores positivos"
