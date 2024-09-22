use std::f64::consts::E;
use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    println!(
        "{:.1} {:.1}",
        (n as f64) / (n as f64).log(E),
        1.25506 * (n as f64) / (n as f64).log(E)
    );
}
