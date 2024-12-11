process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split("\n");

  let t = parseInt(lines.shift()!);

  for (let i = 0; i < t; ++i) {
    let [n, k] = lines
      .shift()!
      .trim()
      .split(" ")
      .map((x) => parseInt(x));
    console.log(Math.floor(n / k) + (n % k));
  }
});