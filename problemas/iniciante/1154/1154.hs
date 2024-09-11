import Text.Printf

processa :: Int -> Int -> IO (Int, Int)
processa soma quantidade = do
  idade <- readLn :: IO Int
  if idade < 0
    then return (soma, quantidade)
    else processa (soma + idade) (quantidade + 1)

main :: IO ()
main = do
  (soma, quantidade) <- processa 0 0
  printf "%.2f\n" (fromIntegral soma / fromIntegral quantidade :: Float)
