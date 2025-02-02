process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let CPF = lines.shift()!.trim().split(/[\\.-]/);
  for (let trecho of CPF) {
    console.log(trecho);
  }
});