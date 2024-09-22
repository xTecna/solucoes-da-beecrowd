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

  --N;
  let resposta = [];
  for (let i = 0; i < N; ++i) {
    resposta.push("Ho");
  }
  resposta.push("Ho!");

  console.log(`${resposta.join(' ')}`);
});