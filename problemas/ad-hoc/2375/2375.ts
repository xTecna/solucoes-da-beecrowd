process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  const diametro = parseInt(lines.shift()!.trim());
  const [altura, largura, profundidade] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

  if (altura >= diametro && largura >= diametro && profundidade >= diametro) {
    console.log('S');
  } else {
    console.log('N');
  }
});