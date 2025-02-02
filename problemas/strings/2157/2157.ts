process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  const c = parseInt(lines.shift()!.trim());
  for (let i = 0; i < c; ++i) {
    const [b, e] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

    let resposta = '';
    for (let i = b; i <= e; ++i) {
      resposta += i.toString();
    }
    resposta += resposta.split('').reverse().join('');

    console.log(resposta);
  }
});