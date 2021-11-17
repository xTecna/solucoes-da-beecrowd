const Crivo = (n) => {
    let C = Array(n);
    C.fill(true);

    C[1] = false;

    for (let i = 4; i < n; i += 2) {
        C[i] = false;
    }

    for (let i = 3; i < n; i += 2) {
        if (C[i]) {
            for (let j = i * 3; j < n; j += 2 * i) {
                C[j] = false;
            }
        }
    }

    return C;
};