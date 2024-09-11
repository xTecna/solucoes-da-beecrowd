use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for i in 0..n {
        let x = 1 + 4 * i;
        println!("{} {} {} PUM", x, x + 1, x + 2);
    }
}
