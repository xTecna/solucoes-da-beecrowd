defmodule Modulo do
  def pedeSenha() do
    senha = IO.gets("") |> String.trim |> String.to_integer
    if senha == 2002 do
      IO.puts "Acesso Permitido"
    else
      IO.puts "Senha Invalida"
      Modulo.pedeSenha()
    end
  end
end

Modulo.pedeSenha()