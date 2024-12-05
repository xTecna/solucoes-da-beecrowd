process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let C = lines.shift()!.trim().split(' ').map(x => parseInt(x));

  for (let i = 0; i < 4; ++i) {
    if (C[i] == 1) {
      console.log(i + 1);
      break;
    }
  }
});