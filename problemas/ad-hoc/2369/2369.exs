n = IO.gets("") |> String.trim |> String.to_integer

conta = 7
conta = conta + max(0, n - 100) * 5
n = min(n, 100)
conta = conta + max(0, n - 30) * 2
n = min(n, 30)
conta = conta + max(0, n - 10)

IO.puts conta
