process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  const porcoes = [300, 1500, 600, 1000, 150];

  let resposta = 225;
  for (let i = 0; i < 5; ++i) {
    let quantidade = parseInt(lines.shift()!.trim());
    resposta += quantidade * porcoes[i];
  }

  console.log(resposta);
});