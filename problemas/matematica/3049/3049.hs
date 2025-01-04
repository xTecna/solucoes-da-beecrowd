import Text.Printf

main :: IO ()
main = do
  b <- readLn :: IO Int
  t <- readLn :: IO Int
  if (b + t > 160) then
    printf "1\n"
  else
    if (b + t < 160) then
      printf "2\n"
    else
      printf "0\n"