import Data.List (sort)
import Text.Printf

processa :: Int -> IO [String]
processa 0 = return []
processa n = do
  aluno <- getLine
  resposta <- processa (n - 1)
  return (aluno : resposta)

main :: IO ()
main = do
  entrada <- getLine
  let [n, k] = map read (words entrada) :: [Int]
  alunos <- processa n
  let ordenado = sort alunos
  printf "%s\n" (ordenado !! (k - 1))