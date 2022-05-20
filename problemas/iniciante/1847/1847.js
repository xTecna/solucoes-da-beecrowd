var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B, C] = lines.shift().trim().split(' ').map((x) => parseInt(x));

if (B < A && C >= B) {
    console.log(":)");
} else if (B > A && C <= B) {
    console.log(":(");
} else if (B > A && C > B && C - B < B - A) {
    console.log(":(");
} else if (B > A && C > B && C - B >= B - A) {
    console.log(":)");
} else if (B < A && C < B && B - C < A - B) {
    console.log(":)");
} else if (B < A && C < B && B - C >= A - B) {
    console.log(":(");
} else if (A === B) {
    if (C > B) {
        console.log(":)");
    } else {
        console.log(":(");
    }
}