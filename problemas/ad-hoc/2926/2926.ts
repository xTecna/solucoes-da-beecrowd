process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  const n = parseInt(lines.shift()!.trim());

  let resposta = '';
  for (let k = 0; k < n; ++k) {
    resposta += 'a';
  }

  console.log(`Ent${resposta}o eh N${resposta}t${resposta}l!`);
});