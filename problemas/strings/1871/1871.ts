process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  while (lines.length) {
    let [M, N] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

    if (!M && !N) break;

    let soma = (M + N).toString();
    let resposta = soma.split('0').join('');

    console.log(resposta);
  }
});