curupira = IO.gets("") |> String.trim |> String.to_integer
boitata = IO.gets("") |> String.trim |> String.to_integer
boto = IO.gets("") |> String.trim |> String.to_integer
mapinguari = IO.gets("") |> String.trim |> String.to_integer
iara = IO.gets("") |> String.trim |> String.to_integer

IO.puts (225 + 300 * curupira + 1500 * boitata + 600 * boto + 1000 * mapinguari + 150 * iara)