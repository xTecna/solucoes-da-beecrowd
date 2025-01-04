# Modelos de entrada e saída

## Entrada e saída padrão

Como vimos na página [beecrowd](../beecrowd/README.md), o juiz automático só leva em consideração arquivos de texto de entrada e saída. Com isso, ler e imprimir no fluxo de entrada/saída é o suficiente para a maior parte das linguagens. Em JavaScript/R/TypeScript, apesar da primeira linha apresentar sintaxe de leitura de arquivo para a entrada, tal arquivo é convertido e entendido como a entrada padrão do seu programa, então tudo certo ainda (embora para todos os efeitos, tal chamada realmente equivale a um acesso em arquivo, trazendo toda a entrada de uma vez).

[Aqui nesta página](https://www.beecrowd.com.br/judge/pt/faqs/about/examples), você encontrará exemplos de códigos em diversas linguagens suportadas pela beecrowd para o problema [1001 - Extremamente Básico](../../problemas/iniciante/1001/README.md).

## Entrada

### Ler vários valores em uma única linha

Algumas linguagens oferecem um desafio quanto a ler diversos valores em uma linha, já que o único recurso de interação com a entrada padrão é ler uma linha por vez. Mas a lógica seria a mesma: ler a linha completa, dividir os valores pelos espaços e convertê-los.

#### C#
```cs
int x, y;

String[] linha = Console.ReadLine().Trim().Split(' ');
x = int.Parse(linha[0]);
y = int.Parse(linha[1]);
```

#### C++20
```cpp
int x, y;

cin >> x >> y;
```

#### C99
```c
int x, y;

scanf("%d %d\n", &x, &y);
```

#### Clojure
```clj
(require '[clojure.string :as str])

(let [linha (map read-string (str/split (read-line) #" "))
      x (nth linha 0)
      y (nth linha 1)])
```

#### Dart 3.0
```dart
List<String> linha = stdin.readLineSync()!.split(' ');
int x = int.parse(linha[0]);
int y = int.parse(linha[1]);
```

#### Elixir
```exs
linha = IO.gets("") |> String.trim |> String.split(" ")
x = linha |> Enum.at(0) |> String.to_integer
y = linha |> Enum.at(1) |> String.to_integer
```

#### Go 1.20
```go
var x, y int

fmt.Scanf("%d %d\n", &x, &y)
```

#### Haskell
```hs
linha <- getLine
let [x, y] = map read (words linha) :: [Int]
```

#### Java 19
```java
String[] linha = in.readLine().trim().split(" ");
int x = Integer.parseInt(linha[0]);
int y = Integer.parseInt(linha[1]);
```

#### JavaScript 12.18
```js
let [x, y] = lines.shift().trim().split(" ");
```

#### Julia
```jl
linha = [parse(Int, x) for x in split(readline())]
x = linha[1]
y = linha[2]
```

#### Kotlin
```kt
val x = sc.nextInt()
val y = sc.nextInt()
```

#### Lua 5.4
```lua
linha = {}
for palavra in io.read():gmatch("%S+") do
    linha[#linha + 1] = tonumber(linha, 10)
end
x = linha[1]
y = linha[2]
```

#### OCaml
```ml
Scanf.scanf "%d %d\n" (fun x y -> ())
```

#### Pascal
```p
var
    x, y: int64;

begin
    read(x);
    read(y);
end.
```

#### PHP 8.1
```php
$linha = array_map("intval", explode(" ", trim(fgets(STDIN))));
$x = $linha[0];
$y = $linha[1];
```

#### Python 3.11
```py
x, y = [int(x) for x in input().strip().split(' ')]
```

#### R
```r
linha <- as.integer(strsplit(readLines(input, n = 1), ' ')[[1]])
x <- linha[1]
y <- linha[2]
```

#### Ruby 2.7
```rb
linha = gets.chomp.split.map(&:to_i)
x = linha[0]
y = linha[1]
```

#### Rust
```rs
let mut input = String::new();
io::stdin().read_line(&mut input);
let numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();
```

#### Scala
```scala
val linha = io.StdIn.readLine().split(" ").map(_.toInt)
val x = linha(0)
val y = linha(1)
```

#### Swift 5.8
```swift
let linha = readLine(strippingNewline: true)!.components(separatedBy: " ")
let x = Int(linha[0])!
let y = Int(linha[1])!
```

#### TypeScript 5.1
```ts
const [x, y] = lines.shift().trim().split(' ').map(x => parseInt(x));
```

### Entrada até _EOF_

_EOF_ é um termo que significa _End-Of-File_ (Final-Do-Arquivo), ou seja, ele lerá a entrada padrão até que não haja mais entrada para ser lida. [Neste link da beecrowd](https://www.beecrowd.com.br/judge/pt/faqs/about/problems), há alguns exemplos para algumas linguagens específicas sobre como lidar com esse tipo de entrada (seção "O que é uma entrada que termina em EOF?").

Aqui completo o exemplo com todas as linguagens suportadas:

#### C#
```cs
String linha;

while((linha = Console.ReadLine()) != null)
{
    // ...
}
```

#### C++20
```cpp
int n;

while (cin >> n)
{
    // ...
}
```

#### C99
```c
int x;

while (scanf("%d\n", &x) != EOF)
{
    // ...
}
```

#### Clojure
```clj
(require '[clojure.java.io :as io])

(defn leitura [entrada p]
    (if (< p (count entrada))
        (do
            (let [linha (nth entrada p)]
                ; ...
            )
            (leitura entrada (inc p)))
        ()))

(let [entrada (vec (line-seq (io/reader *in*)))]
    (leitura entrada 0))
```

#### Dart 3.0
```dart
while (true) {
    String? linha = stdin.readLineSync();
    if (linha == null) {
        break;
    }

    // ...
}
```

#### Elixir
```exs
defmodule Modulo do
  def leitura() do
    try do
      n = IO.gets("") |> String.trim |> String.to_integer
      # ...
      leitura()
    rescue
      FunctionClauseError -> nil
    end
  end
end

Modulo.leitura()
```

#### Go 1.20
```go
package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var n int

	scanner := bufio.NewScanner(os.Stdin)

	for scanner.Scan() {
		fmt.Sscanf(scanner.Text(), "%d", &n)

        // ...
    }
}
```

#### Haskell
```hs
import System.IO (isEOF)

le :: IO ()
le = do
  eof <- isEOF
  if eof
    then return ()
    else do
      n <- readLn :: IO Int
      -- ...
      le

main :: IO ()
main = le
```

#### Java 19
```java
while(in.ready()){
    int N = Integer.parseInt(in.readLine());

    // ...
}
```

#### JavaScript 12.18
```js
while (lines.length) {
    let N = parseInt(lines.shift());

    // ...
}
```

#### Julia
```jl
while !eof(stdin)
  n = parse(Int, readline())

  # ...
end
```

#### Kotlin
```kt
while (sc.hasNext()) {
    val n = sc.nextInt()

    // ...
}
```

#### Lua 5.4
```lua
while true do
  entrada = io.read()
  if entrada == nil then
    break
  end

  -- ...
end
```

#### OCaml
```ml
let rec leitura () =
  try
    Scanf.scanf "%d\n" (fun n ->
        (* ... *)
        leitura ())
  with End_of_file -> ()

let () = leitura ()
```

#### Pascal
```p
while not Eof(input) do
begin
    readln(n);

    // ...
end;
```

#### PHP 8.1
```php
<?php
while (!feof(STDIN)) {
  $linha = trim(fgets(STDIN));

  if (strlen($linha) > 0) {
    // ...
  }
}
?>
```

#### Python 3.11
```py
while(True):
    try:
        N = int(input())

        # ...
    except EOFError:
        break
```

#### R
```r
while (TRUE) {
  tryCatch({
    linha <- readLines(input, n = 1)

    if (length(linha) > 0) {
      # ...
    } else {
      break
    }
  }, error = function(e) {
    break
  })
}
```

#### Ruby 2.7
```rb
while linha = gets
  # ...
end
```

#### Rust
```rs
loop {
    let mut input = String::new();

    match io::stdin().read_line(&mut input) {
        Ok(0) => {
            break;
        }
        Ok(_) => {
            let n: i32 = input.trim().parse().unwrap();

            // ...
        }
        Err(_) => {
            break;
        }
    }
}
```

#### Scala
```scala
var linha: String = null
while ({ linha = io.StdIn.readLine(); linha != null }) {
    // ...
}
```

#### Swift 5.8
```swift
while let linha = readLine(strippingNewline: true) {
  // ...
}
```

#### TypeScript 5.1
```ts
var lines = input.trim().split("\n");

while (lines.length) {
    let N = parseInt(lines.shift()!);

    // ...
}
```

## Saída

### Saída de vetor com espaço entre valores

Para algumas linguagens específicas, pode ser mais complicado imprimir vetor com espaço entre eles evitando o espaço no final do último elemento. Um jeito de fazer isso de maneira simples entretanto é isolando a impressão do primeiro valor e após isso, imprimir o resto dos valores com um espaço **à frente**.  Em outras linguagens, há o método `join` que pode ser usado com muito mais facilidade.

### Saída com um espaço branco entre casos de teste

Alguns dos problemas vão te pedir para retornar a saída do seu problema com um espaço branco entre casos de teste. Segue um exemplo de uma saída nesse modelo:

```
Caso #1: 4 7 8 1 3

Caso #2: 7 4 1 0

Caso #3: 4 4 5 0 3 6 7 9
```

Perceba que tem um espaço em branco entre os casos 2 e 3, mas não há um espaço em branco após o caso 3. Isso pode ser feito usando uma variável auxiliar para ver se o seu caso de teste é o primeiro. Em caso afirmativo, não imprimir uma linha vazia deixando para imprimir a linha vazia **à frente** de todos os casos após o primeiro. Perceba que esse raciocínio é muito similar ao de imprimir os elementos do vetor com espaço entre eles.

### Saída de números com casas decimais

Para cada linguagem, existe um método diferente que pode ser aplicado para imprimir números com casas decimais. Normalmente nesses métodos, você precisa saber a precisão desejada para formatar o número de maneira adequada. Nos exemplos apresentados abaixo, são fixadas quatro casas decimais.

#### C#
```cs
Console.WriteLine($"{n:0.0000}");
```

#### C++20
```cpp
#include <iomanip>
#include <iostream>

int main() {
    double n;

    cout << << setprecision(4) << fixed << n << endl;

    return 0;
}
```

#### C99
```c
printf("%.4lf\n", n);
```

#### Clojure
```clj
(println (format "%.4f" n))
```

#### Dart 3.0
```dart
print("${n.toStringAsFixed(4)}");
```

#### Elixir
```exs
IO.puts :io_lib.format("~.4f", [n])
```

#### Go 1.20
```go
fmt.Printf("%.4f\n", n)
```

#### Haskell
```hs
printf "%.4f\n" n
```

#### Java 19
```java
System.out.printf("%.4f\n", n);
```

#### JavaScript 12.18
```js
console.log(n.toFixed(4));
```

#### Julia
```jl
@printf "%.4f\n" n
```

#### Kotlin
```kt
println(String.format("%.4f", n))
```

#### Lua 5.4
```lua
print(string.format("%.4f", n))
```

#### OCaml
```ml
Printf.printf "%.4f\n" n
```

#### Pascal
```p
writeln(n:0:4);
```

#### PHP 8.1
```php
echo number_format($n, 4, '.', '') . PHP_EOL;
```

#### Python 3.11
```py
print(f"{n:.4f}")
```

#### R
```r
write(paste(format(round(n, 4), nsmall=4)), '')
```

#### Ruby 2.7
```rb
puts "%.4f" % n
```

#### Rust
```rs
println!("{:.4}", n);
```

#### Scala
```scala
printf("%.4f\n", n)
```

#### Swift 5.8
```swift
print(String(format: "%.4f", n))
```

#### TypeScript 5.1
```ts
console.log(n.toFixed(4));
```