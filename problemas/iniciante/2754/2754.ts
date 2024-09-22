process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  console.log("234.345000 - 45.698000");
  console.log("234 - 46");
  console.log("234.3 - 45.7");
  console.log("234.34 - 45.70");
  console.log("234.345 - 45.698");
  console.log("2.343450e+02 - 4.569800e+01");
  console.log("2.343450E+02 - 4.569800E+01");
  console.log("234.345 - 45.698");
  console.log("234.345 - 45.698");
});