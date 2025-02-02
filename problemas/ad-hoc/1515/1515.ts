process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  while (true) {
    const n = parseInt(lines.shift()!.trim());
    if (n == 0) {
      break;
    }

    let resposta = '';
    let menor_ano = 10000;
    for (let i = 0; i < n; ++i) {
      const [nome, a, d] = lines.shift()!.trim().split(' ');
      const ano = parseInt(a);
      const duracao = parseInt(d);

      if (ano - duracao < menor_ano) {
        menor_ano = ano - duracao;
        resposta = nome;
      }
    }

    console.log(resposta);
  }
});