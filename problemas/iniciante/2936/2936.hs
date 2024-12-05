import Text.Printf

main :: IO ()
main = do
  curupira <- readLn :: IO Int
  boitata <- readLn :: IO Int
  boto <- readLn :: IO Int
  mapinguari <- readLn :: IO Int
  iara <- readLn :: IO Int
  printf "%d\n" (225 + 300 * curupira + 1500 * boitata + 600 * boto + 1000 * mapinguari + 150 * iara)