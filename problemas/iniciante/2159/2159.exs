n = IO.gets("") |> String.trim() |> String.to_integer()

IO.puts :io_lib.format("~.1f ~.1f", [n / :math.log(n), 1.25506 * n / :math.log(n)])
