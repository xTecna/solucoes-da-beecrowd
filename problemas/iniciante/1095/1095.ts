process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  for (let i = 1, j = 60; j > -1; i += 3, j -= 5) {
      console.log(`I=${i} J=${j}`);
  }
});