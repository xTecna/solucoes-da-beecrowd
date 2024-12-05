process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let D = parseInt(lines.shift()!);

  if (D <= 800) {
    console.log(1);
  }
  else if (D <= 1400) {
    console.log(2);
  }
  else {
    console.log(3);
  }
});