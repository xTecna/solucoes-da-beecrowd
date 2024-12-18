process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  console.log("---------------------------------------");
  console.log("|  decimal  |  octal  |  Hexadecimal  |");
  console.log("---------------------------------------");
  console.log("|      0    |    0    |       0       |");
  console.log("|      1    |    1    |       1       |");
  console.log("|      2    |    2    |       2       |");
  console.log("|      3    |    3    |       3       |");
  console.log("|      4    |    4    |       4       |");
  console.log("|      5    |    5    |       5       |");
  console.log("|      6    |    6    |       6       |");
  console.log("|      7    |    7    |       7       |");
  console.log("|      8    |   10    |       8       |");
  console.log("|      9    |   11    |       9       |");
  console.log("|     10    |   12    |       A       |");
  console.log("|     11    |   13    |       B       |");
  console.log("|     12    |   14    |       C       |");
  console.log("|     13    |   15    |       D       |");
  console.log("|     14    |   16    |       E       |");
  console.log("|     15    |   17    |       F       |");
  console.log("---------------------------------------");
});