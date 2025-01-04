process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  let teste = 1;
  while (true) {
    const n = parseInt(lines.shift()!.trim());
    if (n == -1) {
      break;
    }

    console.log(`Experiment ${teste}: ${Math.floor(n / 2)} full cycle(s)`);
    teste += 1;
  }
});