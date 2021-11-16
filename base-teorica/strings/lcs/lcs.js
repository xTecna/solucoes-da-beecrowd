const LCS = (A, B) => {
    let n = A.length, m = B.length;
    let T = Array(n + 1);
    for (let i = 0; i <= n; ++i) {
        T[i] = Array(m + 1);
        T[i].fill(0);
    }

    for (let i = 1; i <= n; ++i) {
        for (let j = 1; j <= m; ++j) {
            if (A[i - 1] === B[j - 1]) {
                T[i][j] = T[i - 1][j - 1] + 1;
            } else {
                T[i][j] = Math.max(T[i][j - 1], T[i - 1][j]);
            }
        }
    }

    return T[n][m];
}