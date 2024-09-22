process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  console.log('---------------------------------------');
  console.log('|        Roberto                      |');
  console.log('|                                     |');
  console.log('|        5786                         |');
  console.log('|                                     |');
  console.log('|        UNIFEI                       |');
  console.log('---------------------------------------');
});