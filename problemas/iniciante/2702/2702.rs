use std::cmp::max;
use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let mut parts: Vec<&str> = input.split(" ").collect();
    let ca: i32 = parts[0].trim().parse().unwrap();
    let ba: i32 = parts[1].trim().parse().unwrap();
    let pa: i32 = parts[2].trim().parse().unwrap();

    let mut input2 = String::new();
    io::stdin().read_line(&mut input2);
    parts = input2.split(" ").collect();
    let cr: i32 = parts[0].trim().parse().unwrap();
    let br: i32 = parts[1].trim().parse().unwrap();
    let pr: i32 = parts[2].trim().parse().unwrap();

    println!("{}", max(cr - ca, 0) + max(br - ba, 0) + max(pr - pa, 0));
}
