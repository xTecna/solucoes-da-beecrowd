process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split("\n");

  let n = parseInt(lines.shift()!);

  let vitorias = 0;
  for (let i = 0; i < n; ++i) {
    let numero = parseInt(lines.shift()!);
    if (numero !== 1) {
      vitorias += 1;
    }
  }

  console.log(vitorias);
});