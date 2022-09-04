var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let tweet = lines.shift();
console.log(tweet.length > 140 ? 'MUTE' : 'TWEET');