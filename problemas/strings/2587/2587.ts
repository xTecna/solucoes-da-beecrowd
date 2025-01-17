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
  for (let k = 0; k < c; ++k) {
    let palavra1 = lines.shift()!.trim();
    let palavra2 = lines.shift()!.trim();
    let secreta = lines.shift()!.trim();

    let pos1 = secreta.indexOf('_');
    let pos2 = secreta.indexOf('_', pos1 + 1);

    if (palavra1[pos1] == palavra2[pos2] || palavra1[pos2] == palavra2[pos1]) {
      console.log('Y');
    } else {
      console.log('N');
    }
  }
});