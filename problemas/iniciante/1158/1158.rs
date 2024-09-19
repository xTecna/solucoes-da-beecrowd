use std::io;

fn somaPA(a1: i64, an: i64, n: i64) -> i64 {
    return ((a1 + an) * n) / 2;
}

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let mut n: i32 = input.trim().parse().unwrap();

    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let parts: Vec<&str> = input.split(" ").collect();
        let mut x: i64 = parts[0].trim().parse().unwrap();
        let y: i64 = parts[1].trim().parse().unwrap();

        x += 1 - x.abs() % 2;

        println!("{}", somaPA(x, x + 2 * (y - 1), y));
    }
}
