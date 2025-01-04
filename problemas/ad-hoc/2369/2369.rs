use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let mut n: i32 = input.trim().parse().unwrap();

    let mut conta: i32 = 7;
    if (n > 100) {
        conta += (n - 100) * 5;
        n = 100;
    }
    if (n > 30) {
        conta += (n - 30) * 2;
        n = 30;
    }
    if (n > 10) {
        conta += (n - 10);
    }

    println!("{}", conta);
}
