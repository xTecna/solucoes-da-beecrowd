process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  const dist = (x1, y1, x2, y2) => Math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));

  while (lines.length) {
    let [r1, x1, y1, r2, x2, y2] = lines.shift()!.trim().split(' ').map(x => parseInt(x));

    if (dist(x1, y1, x2, y2) <= r1 - r2) {
      console.log("RICO");
    } else {
      console.log("MORTO");
    }
  }
});