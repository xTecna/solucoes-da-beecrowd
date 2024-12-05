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
    let N = parseInt(lines.shift()!);

    if (!N) break;

    for (let i = 0; i < N; ++i) {
      let corretos = lines.shift()!.trim().split(" ").map((x, i) => [parseInt(x), i]).filter((x) => x[0] <= 127);

      if (corretos.length === 1) console.log(String.fromCharCode(65 + corretos[0][1]));
      else console.log("*");
    }
  }
});