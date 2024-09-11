process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  for (let i = 1; i < 10; i += 2) {
      for (let j = 7; j > 4; --j) {
          console.log(`I=${i} J=${j}`);
      }
  }
});