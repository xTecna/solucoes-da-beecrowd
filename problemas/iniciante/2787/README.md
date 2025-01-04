# 2787 - Xadrez

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2787)

## Solução

Segundo a figura do enunciado, podemos tirar algumas conclusões sobre o arranjo das cores:

* Se $L$ for ímpar:
    * Se $C$ for ímpar, a cor da casa do canto inferior direito é **branca**.
    * Se $C$ for par, a cor da casa do canto inferior direito é **preta**.
* Se $L$ for par:
    * Se $C$ for ímpar, a cor da casa do canto inferior direito é **preta**.
    * Se $C$ for par, a cor da casa do canto inferior direito é **branca**.

Note que a casa do canto inferior direito é **branca** quando as paridades de $L$ e $C$ são diferentes e **preta** quando são iguais. Com isso, se fizermos $(L \mod 2) \veebar (C \mod 2)$ ($L$ ou exclusivo $C$ ou $L$ `xor` $C$), obtemos $0$ para **branca** e $1$ pra **preta**. Como no enunciado é o contrário, então em vez disso podemos fazer $1 - ((L \mod 2) \veebar (C \mod 2))$ para conseguir então o resultado correto.