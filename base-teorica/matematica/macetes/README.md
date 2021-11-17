# Macetes matemáticos

## Motivação

Aqui tem alguns pequenos macetes matemáticos que você normalmente vai usar em diversos dos problemas que a gente vai resolver nessa página.

## Deslocar dentro de um intervalo \[0, N - 1]

Suponhamos que temos um número `x` no intervalo `[0, N - 1]` e queiramos somar ou subtrair y, onde `y` também está no intervalo `[0, N - 1]`, mas de forma que o resultado continue nesse mesmo intervalo. Com isso, o que queremos dizer é que se a adição der um número muito grande, que ele "warpe", "dê a volta", e igualmente se o número for muito pequeno.

Um exemplo disso é uma pessoa estar andando num círculo com `10` marcações de `0` a `9` no chão, a pessoa estar na marcação `7` e quando ela dar `4` passos para frente, ela parar na marcação `1`.

### Adição

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;(x&space;&plus;&space;y)&space;\text{&space;mod&space;}&space;N" title="\bg_white (x + y) \text{ mod } N" />

No nosso exemplo acima, teríamos `(7 + 4) mod 10 = 11 mod 10 = 1`.

### Subtração

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;(x&space;-&space;y&space;&plus;&space;N)&space;\text{&space;mod&space;}&space;N" title="\bg_white (x - y + N) \text{ mod } N" />

Neste caso, fazemos como o cálculo acima, mas somamos `N` para evitarmos ter que trabalhar com o resto da divisão de números negativos, que pode ser problemática em algumas linguagens de programação. Como sabemos que `y` está também no intervalo `[0, N - 1]`, então sabemos que o resultado de `(x - y + N)` é sempre positivo e por estarmos somando exatamente `N`, não mudamos o resultado do cálculo original.