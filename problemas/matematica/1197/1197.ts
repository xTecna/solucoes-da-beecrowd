process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.trim().split('\n');

  let p = 0;
  while (p < lines.length) {
    let [v, t] = lines[p++].trim().split(' ').map((x) => parseInt(x));

    console.log(v * 2 * t === -0 ? 0 : v * 2 * t);
  }
});