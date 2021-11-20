let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.trim().split("\n");

let F = Array(21);
F.fill(null);
F[0] = BigInt(1);

const Fatorial = (n) => {
    if (!F[n]) F[n] = BigInt(n) * Fatorial(n - 1);
    return F[n];
};

while (lines.length) {
    let [M, N] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log((Fatorial(M) + Fatorial(N)).toString());
}
