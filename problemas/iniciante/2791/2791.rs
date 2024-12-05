use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.split(" ").collect();

    for i in 0..4 {
        let f: i32 = parts[i].trim().parse().unwrap();
        if f == 1 {
            println!("{}", i + 1);
            break;
        }
    }
}
