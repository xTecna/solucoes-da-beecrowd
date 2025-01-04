use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let b: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let t: i32 = input.trim().parse().unwrap();

    if (b + t > 160) {
        println!("1");
    } else if (b + t < 160) {
        println!("2");
    } else {
        println!("0");
    }
}
