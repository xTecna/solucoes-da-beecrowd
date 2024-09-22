defmodule Modulo do
  def leitura(n) do
    if n > 0 do
      aluno = IO.gets("") |> String.trim
      [aluno | leitura(n - 1)]
    else
      []
    end
  end
end

entrada = IO.gets("") |> String.trim |> String.split(" ")
n = entrada |> Enum.at(0) |> String.to_integer
k = entrada |> Enum.at(1) |> String.to_integer

alunos = Modulo.leitura(n)
alunos = Enum.sort(alunos)
IO.puts Enum.at(alunos, k - 1)