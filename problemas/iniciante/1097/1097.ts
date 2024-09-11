process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  let k = 7;
  for (let i = 1; i < 10; i += 2) {
      for (let j = k; j > k - 3; --j) {
          console.log(`I=${i} J=${j}`);
      }
      k += 2;
  }
});