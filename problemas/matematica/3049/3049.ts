process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');
  const [b, t] = lines.map((x) => parseInt(x));

  if (b + t > 160) {
    console.log(1);
  } else if (b + t < 160) {
    console.log(2);
  } else {
    console.log(0);
  }
});