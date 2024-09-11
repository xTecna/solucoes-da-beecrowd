import Text.Printf

le :: Int -> IO (Int, Int, Int)
le 4 = return (0, 0, 0)
le 1 = do
  codigo <- readLn :: IO Int
  (alcool, gasolina, diesel) <- le codigo
  return (alcool + 1, gasolina, diesel)
le 2 = do
  codigo <- readLn :: IO Int
  (alcool, gasolina, diesel) <- le codigo
  return (alcool, gasolina + 1, diesel)
le 3 = do
  codigo <- readLn :: IO Int
  (alcool, gasolina, diesel) <- le codigo
  return (alcool, gasolina, diesel + 1)
le _ = do
  codigo <- readLn :: IO Int
  le codigo

main :: IO ()
main = do
  codigo <- readLn :: IO Int
  (alcool, gasolina, diesel) <- le codigo
  printf "MUITO OBRIGADO\n"
  printf "Alcool: %d\n" alcool
  printf "Gasolina: %d\n" gasolina
  printf "Diesel: %d\n" diesel