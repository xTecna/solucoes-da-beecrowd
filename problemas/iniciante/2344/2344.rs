use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    if n > 85 {
        println!("A");
    } else if n > 60 {
        println!("B");
    } else if n > 35 {
        println!("C");
    } else if n > 0 {
        println!("D");
    } else {
        println!("E");
    }
}
