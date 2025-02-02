process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split("\n");

  let n = parseInt(lines.shift()!);

  for (let i = 0; i < n; ++i) {
    let [altura, espessura, galhos] = lines
      .shift()!
      .trim()
      .split(" ")
      .map((x) => parseInt(x));

    if (200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos) {
      console.log("Sim");
    } else {
      console.log("Nao");
    }
  }
});