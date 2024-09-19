process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let V = parseInt(lines.shift().trim());

  let produto = V;
  for (let i = 0; i < 10; ++i) {
      console.log(`N[${i}] = ${produto}`);
      produto <<= 1;
  }
});