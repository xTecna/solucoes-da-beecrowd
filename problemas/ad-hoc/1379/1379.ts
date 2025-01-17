process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  while (true) {
    const [a, b] = lines.shift()!.trim().split(' ').map(x => parseInt(x));
    if (a == 0 && b == 0) {
      break;
    }

    console.log(2 * a - b);
  }
});