process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let N = parseInt(lines.shift()!);
  for (let i = 0; i < N; ++i) {
    let [nome, forca] = lines.shift()!.trim().split(' ');

    console.log(`${nome === "Thor" ? "Y" : "N"}`);
  }
});