process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let N = parseInt(lines.shift()!);

  let resposta = 0.0;
  if (N === 0) {
      resposta = 1.0;
  } else {
      resposta = 2.0;
      for (let i = 0; i < N - 1; ++i) {
          resposta = 2.0 + 1.0 / resposta;
      }
      resposta = 1.0 + 1.0 / resposta;
  }

  console.log(resposta.toFixed(10));
});