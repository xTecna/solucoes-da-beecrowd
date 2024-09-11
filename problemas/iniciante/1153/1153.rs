use std::io;

fn fatorial(n: i32) -> i32 {
    if n == 1 {
        return 1;
    }
    return n * fatorial(n - 1);
}

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    println!("{}", fatorial(n));
}
