import Text.Printf

senha :: Int -> IO ()
senha 2002 = printf "Acesso Permitido\n"
senha n = do
  printf "Senha Invalida\n"
  numero <- readLn :: IO Int
  senha numero

main :: IO ()
main = do
  numero <- readLn :: IO Int
  senha numero