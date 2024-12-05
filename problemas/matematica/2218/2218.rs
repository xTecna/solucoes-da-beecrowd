use std::io;

fn somaPA(a1: i32, an: i32, n: i32) -> i32 {
    return ((n * (a1 + an)) / 2);
}

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let t: i32 = input.trim().parse().unwrap();

    for _ in 0..t {
        input = String::new();
        io::stdin().read_line(&mut input);
        let n: i32 = input.trim().parse().unwrap();

        println!("{}", somaPA(1, n, n) + 1);
    }
}
