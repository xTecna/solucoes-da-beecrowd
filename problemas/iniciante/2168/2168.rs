use std::io;

fn segura(m: &[[i32; 102]; 102], i: usize, j: usize) -> bool {
    m[i][j] + m[i + 1][j] + m[i][j + 1] + m[i + 1][j + 1] >= 2
}

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: usize = input.trim().parse().unwrap();

    let mut m: [[i32; 102]; 102] = [[0; 102]; 102];
    for i in 0..(n + 1) {
        input.clear();
        io::stdin().read_line(&mut input);
        let parts: Vec<&str> = input.trim().split(" ").collect();
        for j in 0..(n + 1) {
            m[i][j] = parts[j].trim().parse().unwrap();
        }
    }

    for i in 0..n {
        let mut resposta = String::new();
        for j in 0..n {
            if segura(&m, i, j) {
                resposta.push('S');
            } else {
                resposta.push('U');
            }
        }
        println!("{}", resposta);
    }
}
