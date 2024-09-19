process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  while (lines.length) {
    let [L, R] = lines.shift()!.trim().split(" ").map((x) => parseInt(x));

    if (!L && !R) break;

    console.log(L + R);
  }
});