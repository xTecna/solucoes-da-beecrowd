# Conversão de bases

## Motivação

O conceito de base numérica é primordial para o desenvolvimento da Matemática e da Computação pois é da maneira que escolhemos representar números que nos possibilita escolher como representamos e armazenamos nossos dados. Desde calcular com a nossa base decimal até armazenar cores em hexadecimais e executar códigos em binário, as bases numéricas são literalmente a base de todo nosso sistema numérico.

Uma base numérica, em conceitos simples, define os caracteres que podemos usar para representar um número. Por exemplo, a base binária (também chamada de base 2), usa os caracteres `0` e `1`. A base decimal (10), que é a que comumente usamos, usa os caracteres de `0` até `9` (10 caracteres). A base hexadecimal (16) usa os caracteres de `0` até `9` e também as letras de `A` até `F` (16 caracteres). Note que usar letras é apenas questão de manter os caracteres sempre de tamanho 1, mas essas letras nada mais são do que formas de representar um dígito, como se fosse outro número (não temos 16 caracteres numéricos diferentes, então tivemos que improvisar).

Uma base numérica estrutura o número tal qual cada caractere representa uma ordem de grandeza diferente. Por exemplo, aqui vai uma tabela com números na base decimal e cada um desses números em representações indicando suas ordens de grandeza.

| Número | Elementos que compõem o número | Em ordem de grandeza |
| -- | -- | -- |
| 143 | $1 \cdot 100 + 4 \cdot 10 + 3$ | $1 \cdot 10^{2} + 4 \cdot 10^{1} + 1 \cdot 10^{0}$
| 7845 | $7 \cdot 1000 + 8 \cdot 100 + 4 \cdot 10 + 5$ | $7 \cdot 10^{3} + 8 \cdot 10^{2} + 4 \cdot 10^{1} + 5 \cdot 10^{0}$
| 409 | $4 \cdot 100 + 0 \cdot 10 + 9$ | $4 \cdot 10^{2} + 0 \cdot 10^{1} + 9 \cdot 10^{0}$

A partir daí, podemos ver como cada dígito tem seu papel na composição do número e como esse papel é bastante definido em relação à sua posição. A mesma coisa vale para números em outras bases (`F` no caso do número na base 16 tem valor igual à `15`).

| Número | Base | Em ordem de grandeza | Resultado da soma |
| -- | -- | -- | -- |
| 10111 | 2 (binária) | $1 \cdot 2^{4} + 0 \cdot 2^{3} + 1 \cdot 2^{2} + 1 \cdot 2^{1} + 1 \cdot 2^{0}$ | 23
| 7451 | 8 (octal) | $7 \cdot 8^{3} + 4 \cdot 8^{2} + 5 \cdot 8^{1} + 1 \cdot 8^{0}$ | 3881
| 409F | 16 (hexadecimal) | $4 \cdot 16^{3} + 0 \cdot 16^{2} + 9 \cdot 16^{1} + F \cdot 16^{0}$ | 16543

Perceba que as estruturas mostradas, se somadas, dão o valor em decimal dos números em bases diferentes. Com isso, já conseguimos ter uma bela noção de como seria um algoritmo para converter um número de qualquer base a um número decimal. Na próxima seção, vamos discutir dois algoritmos: um de conversão de qualquer número de qualquer base à base decimal e outro de converter qualquer número na base decimal para outra base. Com isso, pode-se usar a base decimal como intermediário caso queira fazer qualquer conversão de uma base a outra (embora tenha formas eficazes de se converter de bases binárias a hexadecimais e vice-versa, por exemplo, mas isso está fora do escopo deste material).

## Algoritmo

### Conversão de um número em qualquer base para um número decimal

Como discutimos na seção anterior, um algoritmo de conversão de um número em qualquer base para um número na base decimal deve se aproveitar da estrutura que cada número tem para extrair um dígito de cada vez. Se considerarmos o número como uma _string_ (para podermos aceitar qualquer símbolo) e uma função que define o valor de cada símbolo em relação à base decimal, podemos montar uma função de conversão seguindo essa estrutura (supondo que o resultado final caiba num inteiro):

```
função converte(string número, inteiro base):
    inteiro resposta = 0
    inteiro potencia = 1
    para cada dígito do número de trás pra frente:
        resposta += valor(dígito) * potencia
        potencia *= base
    retorna resposta
```

### Conversão de um número decimal para um número em qualquer base

Já para fazer o sentido contrário, temos que pensar na mesma estrutura que nos possibilita a conversão de um número em qualquer base para o número decimal, mas com uma sacada um pouco diferente.

Vamos supor, por exemplo, que temos o número em binário $100110$ e que esse número pode ser representado como $1 \cdot 2^{5} + 0 \cdot 2^{4} + 0 \cdot 2^{3} + 1 \cdot 2^{2} + 1 \cdot 2^{1} + 0 \cdot 2^{0} = 38$. Repare que nesta representação, todas as parcelas são multiplicadas por um fator divisível por 2, exceto a última, que é multiplicada por $2^{0}$. Mas, bem, nós já sabemos converter de uma base qualquer pra uma base decimal, então pensar em um número binário não ajuda muito, então passar o foco para o número $38$, um número na base decimal, que em binário sabemos que sua representação é $100110$. Agora, pensando no exemplo anterior que mostramos, podemos ver que se pegarmos o resto da divisão de $38$ por $2$, teremos o último dígito, o dígito menos significativo da representação binária, isso porque vimos na representação binária que o número multiplicado por $2^{0}$ era o único não divisível e, portanto, o único que aparece no resto. Logo, descobrimos o último dígito da representação binária do número $38$, é o $0$. Se o tirarmos da representação, agora temos sobrando $1 \cdot 2^{5} + 0 \cdot 2^{4} + 0 \cdot 2^{3} + 1 \cdot 2^{2} + 1 \cdot 2^{1}$.

Perfeito, agora só sobrou divisores de 2, então podemos seguramente dividir toda essa expressão por 2. Ao fazer isso, temos:

$$\frac{1 \cdot 2^{5} + 0 \cdot 2^{4} + 0 \cdot 2^{3} + 1 \cdot 2^{2} + 1 \cdot 2^{1}}{2} = 1 \cdot 2^{4} + 0 \cdot 2^{3} + 0 \cdot 2^{2} + 1 \cdot 2^{1} + 1 \cdot 2^{0}$$

Uma coisa curiosa aconteceu. A estrutura se repete, como se fosse um outro número na base binária, mas dessa vez temos um outro valor que podemos pegar o resto e agregar ao começo da nossa representação. Ao começo porque se repetirmos esse processo de pegar o resto, relacionar a um símbolo e dividir pela base, estaremos sempre descobrindo os símbolos da direita para esquerda.

Desta maneira, o pseudo-código abaixo representa uma maneira esquematizada de repetir esse processo e conseguir todos os símbolos da representação de um número decimal em qualquer base, contando que saibamos quais símbolos usar para cada valor possível.

```
função converte(inteiro decimal, inteiro base):
    string resposta = ""
    enquanto decimal > 0:
        resposta = simbolo(decimal % base) + resposta
        decimal /= base
    retorna resposta
```

## Implementação

### Conversão de qualquer base para decimal

#### C99
```c
int converteParaDecimal(char *numero, int base){
    int potencia = 1, resposta = 0;

    for(int i = strlen(numero) - 1; i > -1; --i){
        resposta += valor(numero[i]) * potencia;
        potencia *= base;
    }

    return resposta;
}
```

#### C++
```cpp
int converteParaDecimal(string numero, int base){
    int potencia = 1, resposta = 0;
    
    for(int i = numero.length() - 1; i > -1; --i){
        resposta += valor(numero[i]) * potencia;
        potencia *= base;
    }
    
    return resposta;
}
```

#### C#
```cs
static int converteParaDecimal(string numero, int baseNumerica){
    int potencia = 1, resposta = 0;

    for(int i = numero.Length - 1; i > -1; --i){
        resposta += valor(numero[i]) * potencia;
        potencia *= baseNumerica;
    }

    return resposta;
}
```

#### Java
```java
public static int converteParaDecimal(String numero, int base){
    int potencia = 1, resposta = 0;
    
    for(int i = numero.length() - 1; i > -1; --i){
        resposta += valor(numero.charAt(i)) * potencia;
        potencia *= base;
    }
    
    return resposta;
}
```

#### JavaScript
```js
const converteParaDecimal = (numero, base) => {
    let potencia = 1, resposta = 0;

    for(let i = numero.length - 1; i > -1; --i){
        resposta += valor(numero[i]) * potencia;
        potencia *= base;
    }

    return resposta;
}
```

#### Python
```py
def converteParaDecimal(numero, base):
    potencia, resposta = 1, 0
    
    for digito in numero[::-1]:
        resposta += valor(digito) * potencia
        potencia *= base
        
    return resposta
```

### Conversão de decimal para qualquer base

#### C99

Em C, não podemos fazer _strings_ de tamanho variável, mas felizmente temos uma maneira de prever e já alocar o tamanho do espaço certinho que vamos precisar, já que sabemos que para um número $n$ na base $b$, o seu número de dígitos é $\lfloor \log_{b}{n} \rfloor + 1$. Aqui fazemos $\lfloor \log_{b}{n} + 2$ porque todo array de caracteres precisa ter o caractere de término de _string_ `\0`.

Com o tamanho certinho alocado, vamos então primeiro pegar todos os dígitos e ao final inverter a string.

```c
char *converteDeDecimal(int decimal, int base){
    int posicao = 0;
    int digitos = floor(log(decimal) / log(base)) + 2;
    char *numero = (char *)malloc(digitos * sizeof(char));

    while (decimal > 0) {
        numero[posicao++] = simbolo(decimal % base);
        decimal /= base;
    }
    for (int i = 0; i < posicao / 2; ++i) {
        char temp = numero[i];
        numero[i] = numero[posicao - i - 1];
        numero[posicao - i - 1] = temp;
    }
    numero[posicao] = '\0';

    return numero;
}
```

#### C++
```cpp
string converteDeDecimal(int decimal, int base){
    string numero = "";
    
    while(decimal > 0){
        numero = simbolo(decimal % base) + numero;
        decimal /= base;
    }
    
    return numero;
}
```

#### C#
```cs
static string converteDeDecimal(int numero, int baseNumerica){
    string resposta = "";

    while(numero > 0){
        resposta = simbolo(numero % baseNumerica) + resposta;
        numero /= baseNumerica;
    }

    return resposta;
}
```

#### Java
```java
public static String converteDeDecimal(int decimal, int base){
    String resposta = "";
    
    while(decimal > 0){
        resposta = simbolo(decimal % base) + resposta;
        decimal /= base;
    }
    
    return resposta;
}
```

#### JavaScript
```js
const converteDeDecimal = (decimal, base) => {
    let resposta = "";

    while(decimal > 0){
        resposta = simbolo(decimal % base) + resposta;
        decimal = parseInt(Math.floor(decimal / base));
    }

    return resposta;
}
```

#### Python
```py
def converteDeDecimal(decimal, base):
    resposta = ''
    
    while(decimal > 0):
        resposta = simbolo(decimal % base) + resposta
        decimal //= base
    
    return resposta
```

## Problemas

* [1033 - Quantas Chamadas Recursivas?](../../../problemas/paradigmas/1033/README.md)
* [1193 - Conversão entre Bases](../../../problemas/matematica/1193/README.md)
* [1848 - Corvo Contador](../../../problemas/iniciante/1848/README.md)