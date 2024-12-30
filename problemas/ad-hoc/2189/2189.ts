process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  let k = 1;
  while (true) {
    const n = parseInt(lines.shift()!.trim());
    if (n == 0) {
      break;
    }

    const ingressos = lines.shift()!.trim().split(' ').map(x => parseInt(x));

    let ganhador = 0;
    for (let i = 1; i <= n; ++i) {
      if (i == ingressos[i - 1]) {
        ganhador = i;
      }
    }

    console.log(`Teste ${k}`);
    console.log(ganhador);
    console.log('');

    k += 1;
  }
});