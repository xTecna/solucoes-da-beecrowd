numeros = IO.gets("") |> String.trim |> String.split(" ")
cv = numeros |> Enum.at(0) |> String.to_integer
ce = numeros |> Enum.at(1) |> String.to_integer
cs = numeros |> Enum.at(2) |> String.to_integer
fv = numeros |> Enum.at(3) |> String.to_integer
fe = numeros |> Enum.at(4) |> String.to_integer
fs = numeros |> Enum.at(5) |> String.to_integer

cp = 10000 * (3 * cv + ce) + cs
fp = 10000 * (3 * fv + fe) + fs

if (cp > fp) do
  IO.puts "C"
else
  if (fp > cp) do
    IO.puts "F"
  else
    IO.puts "="
  end
end
