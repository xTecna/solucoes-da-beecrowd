use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let d: i32 = input.trim().parse().unwrap();

    if d <= 800 {
        println!("1");
    } else if d <= 1400 {
        println!("2");
    } else {
        println!("3");
    }
}
