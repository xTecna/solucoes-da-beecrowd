process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  console.log("       A");
  console.log("      B B");
  console.log("     C   C");
  console.log("    D     D");
  console.log("   E       E");
  console.log("    D     D");
  console.log("     C   C");
  console.log("      B B");
  console.log("       A");
});