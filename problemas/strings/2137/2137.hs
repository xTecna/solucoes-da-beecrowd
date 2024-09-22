import Data.List (sort)
import System.IO (isEOF)
import Text.Printf

processa :: Int -> IO [String]
processa 0 = return []
processa n = do
  livro <- getLine
  resposta <- processa (n - 1)
  return (livro : resposta)

imprime :: [String] -> IO ()
imprime [] = return ()
imprime (livro : biblioteca) = do
  printf "%s\n" livro
  imprime biblioteca

le :: IO ()
le = do
  eof <- isEOF
  if eof
    then return ()
    else do
      n <- readLn :: IO Int
      biblioteca <- processa n
      imprime (sort biblioteca)
      le

main :: IO ()
main = le