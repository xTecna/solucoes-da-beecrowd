process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let I = parseInt(lines.shift()!);

  let resposta = 'Feliz nat';
  for (let i = 0; i < I; ++i) {
      resposta += 'a';
  }
  resposta += 'l!';

  console.log(resposta);
});