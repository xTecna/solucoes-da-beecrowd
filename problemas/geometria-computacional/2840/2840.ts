process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split("\n");

  let [R, L] = lines
    .shift()!
    .trim()
    .split(" ")
    .map((x) => parseInt(x));

  let pi = 3.1415;
  let V = (4.0 * pi * R * R * R) / 3.0;

  console.log(Math.floor(L / V));
});