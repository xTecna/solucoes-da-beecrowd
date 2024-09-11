import Text.Printf

resolve :: Int -> (Int, Int) -> IO (Int, Int)
resolve 0 resposta = return resposta
resolve n resposta = do
  numero <- readLn :: IO Int
  if numero >= 10 && numero <= 20
    then resolve (n - 1) (fst resposta + 1, snd resposta)
    else resolve (n - 1) (fst resposta, snd resposta + 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  resposta <- resolve n (0, 0)
  printf "%d in\n" (fst resposta)
  printf "%d out\n" (snd resposta)