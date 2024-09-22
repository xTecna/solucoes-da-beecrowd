import Text.Printf

main :: IO ()
main = do
  k <- readLn :: IO Int
  if k == 1 then
    printf "Top 1\n"
  else
    if k <= 3 then
      printf "Top 3\n"
  else
    if k <= 5 then
      printf "Top 5\n"
  else
    if k <= 10 then
      printf "Top 10\n"
  else
    if k <= 25 then
      printf "Top 25\n"
  else
    if k <= 50 then
      printf "Top 50\n"
  else
    printf "Top 100\n"