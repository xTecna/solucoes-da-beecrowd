var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const musicas = ["PROXYCITY", "P.Y.N.G.", "DNSUEY!", "SERVERS", "HOST!", "CRIPTONIZE", "OFFLINE DAY", "SALT", "ANSWER!", "RAR?", "WIFI ANTENNAS"];

let C = parseInt(lines.shift());
for (let i = 0; i < C; ++i) {
    let [X, Y] = lines.shift().trim().split(' ').map(x => parseInt(x));
    console.log(musicas[X + Y]);
}