process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let bits = lines.shift()!.trim().split('');
  let pares = bits.reduce((acc, cur) => acc + parseInt(cur), 0);

  console.log(`${bits.join('')}${pares % 2}`);
});