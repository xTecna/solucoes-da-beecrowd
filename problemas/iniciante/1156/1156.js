let S = 0.0;

for (let i = 0; i < 20; ++i) {
    S += (2 * i + 1) / (1 << i);
}

console.log(`${S.toFixed(2)}`);