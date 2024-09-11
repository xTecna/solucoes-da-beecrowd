use std::io;

fn somaPA(a1: i64, an: i64, n: i64) -> i64 {
    return ((a1 + an) * n) / 2;
}

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.split(" ").collect();

    let a: i64 = parts[0].trim().parse().unwrap();
    let mut i = 1;
    let mut n: i64 = 0;
    loop {
        n = parts[i].trim().parse().unwrap();
        if n > 0 {
            break;
        }
        i += 1
    }

    println!("{}", somaPA(a, a + n - 1, n));
}
