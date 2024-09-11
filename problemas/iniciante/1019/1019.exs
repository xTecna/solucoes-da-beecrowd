segundos = IO.gets("") |> String.trim |> String.to_integer
horas = segundos |> div(3600)
segundos = segundos |> rem(3600)
minutos = segundos |> div(60)
segundos = segundos |> rem(60)

IO.puts "#{horas}:#{minutos}:#{segundos}"