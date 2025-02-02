import qualified Data.Set as Set
import Text.Printf

imprime :: Set.Set Int -> Int -> IO Int
imprime figurinhas 0 = return (Set.size figurinhas)
imprime figurinhas n = do
  x <- readLn :: IO Int
  let novas = Set.insert x figurinhas
  imprime novas (n - 1)

main :: IO ()
main = do
  let figurinhas = Set.empty
  n <- readLn :: IO Int
  m <- readLn :: IO Int
  resposta <- imprime figurinhas m
  printf "%d\n" (n - resposta)
