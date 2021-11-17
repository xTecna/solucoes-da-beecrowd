const precedencia = (operador) => {
    return (operador === '+' || operador === '-') ? 1 : 2;
};

let expressao = input.nextLine();

let resposta = '';
const pilha = new Pilha();
for (let i = 0; i < expressao.length; ++i) {
    if (/[A-Za-z0-9]/.test(expressao[i])) {
        resposta += expressao[i];
    } else if (expressao[i] === '(' || expressao[i] === '^') {
        pilha.push(expressao[i]);
    } else if (expressao[i] === ')') {
        while (!pilha.empty() && pilha.top() !== '(') {
            resposta += pilha.top();
            pilha.pop();
        }
        if (!pilha.empty()) pilha.pop();
    } else {
        while (!pilha.empty() && pilha.top() !== '(' && precedencia(expressao[i]) <= precedencia(pilha.top())) {
            resposta += pilha.top();
            pilha.pop();
        }
        pilha.push(expressao[i]);
    }
}

while (!pilha.empty()) {
    resposta += pilha.top();
    pilha.pop();
}

console.log(resposta);