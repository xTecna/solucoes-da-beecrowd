let S = 0;
for (let i = 1; i < 101; ++i) {
    S += 1 / i;
}
console.log(`${S.toFixed(2)}`);