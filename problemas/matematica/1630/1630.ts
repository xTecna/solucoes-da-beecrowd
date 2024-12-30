process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const mdc = (a, b) => {
    if (b == 0) {
      return a;
    }
    return mdc(b, a % b);
  };

  const lines = input.trim().split('\n');

  for (let i = 0; i < lines.length; ++i) {
    const [x, y] = lines[i].trim().split(' ').map((x) => parseInt(x));

    console.log((2 * (x + y)) / mdc(x, y));
  }
});