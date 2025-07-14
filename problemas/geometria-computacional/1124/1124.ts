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

  while (true) {
    let [l, c, r1, r2] = lines.shift()!.trim().split(' ').map(x => parseInt(x));
    if (l == 0 || c == 0 || r1 == 0 || r2 == 0) {
      break;
    }

    let [x1, y1, x2, y2] = [r1, r1, l - r2, c - r2];
    let distancia = dist(x1, y1, x2, y2);

    if (l < 2 * r1 || c < 2 * r1 || l < 2 * r2 || c < 2 * r2 || distancia < r1 + r2) {
      console.log("N");
    } else {
      console.log("S");
    }
  }
});