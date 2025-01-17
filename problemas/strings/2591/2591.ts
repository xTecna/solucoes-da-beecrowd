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
  for (let i = 0; i < n; ++i) {
    let k = lines.shift()!.trim().split(/[hmk]+/).filter(x => x.length > 0).reduce((acc, cur) => acc * cur.length, 1);
    let resposta = 'k';
    for (let j = 0; j < k; ++j) {
      resposta += 'a';
    }
    console.log(resposta);
  }
});