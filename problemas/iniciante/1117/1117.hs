import Text.Printf

le :: [Float] -> IO [Float]
le notas = do
  if length notas == 2
    then return notas
    else do
      nota <- readLn :: IO Float
      if nota >= 0.0 && nota <= 10.0
        then (le (nota : notas))
        else do
          printf "nota invalida\n"
          (le notas)

main :: IO ()
main = do
  [nota1, nota2] <- le []
  printf "media = %.2f\n" ((nota1 + nota2) / 2)