let k = 7;
for (let i = 1; i < 10; i += 2) {
    for (let j = k; j > k - 3; --j) {
        console.log(`I=${i} J=${j}`);
    }
    k += 2;
}