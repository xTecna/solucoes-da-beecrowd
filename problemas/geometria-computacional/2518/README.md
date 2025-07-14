# 2518 - Escada do DINF

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2518)

## Solução

Podemos pensar na escada como um grande triângulo retângulo de altura $NH$ e base $NC$, com sua hipotenusa sendo a altura da rampa que queremos colocar sobre a escada, com a largura da rampa sendo a mesma a largura da escada. Para calcularmos a altura $A$ da rampa, podemos fazer

$$
\begin{split}
A = & \sqrt{(NH)^{2} + (NC)^{2}} \\
A = & \sqrt{N^{2}(H^{2} + C^{2})} \\
A = & N \sqrt{H^{2} + C^{2}}
\end{split}
$$

Com a altura calculada, então podemos calcular multiplicando a altura pela largura, só que cuidado que todas as medidas aqui estão em centímetros quadrados e a resposta precisa ser em metros quadrados, então é necessário dividir o resultado por $10000$ antes de exibi-lo.