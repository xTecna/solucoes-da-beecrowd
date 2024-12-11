process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let [A, B, C] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

  if (A === B || A === C || B === C || A + B === C || A + C === B || B + C === A) {
    console.log('S');
  } else {
    console.log('N');
  }
});