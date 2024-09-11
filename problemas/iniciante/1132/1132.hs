import Text.Printf

soma :: Int -> Int -> Int
soma x y = do
  if x <= y
    then if (mod x 13 /= 0) then (x + soma (x + 1) y) else (soma (x + 1) y)
    else 0

main :: IO ()
main = do
  x <- readLn :: IO Int
  y <- readLn :: IO Int
  let resultado = if x < y then soma x y else soma y x
  printf "%d\n" resultado