process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
    input += chunk;
});

process.stdin.on('end', () => {
    const lines = input.trim().split('\n');

    const [cv, ce, cs, fv, fe, fs] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

    const cp = 10000 * (3 * cv + ce) + cs;
    const fp = 10000 * (3 * fv + fe) + fs;

    if (cp > fp) {
        console.log('C');
    } else if (cp < fp) {
        console.log('F');
    } else {
        console.log('=');
    }
});