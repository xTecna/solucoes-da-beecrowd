use std::io;

fn main() {
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let parts: Vec<&str> = input.trim().split(" ").collect();
        let x: i32 = parts[0].trim().parse().unwrap();
        let m: i32 = parts[1].trim().parse().unwrap();

        if x == 0 && m == 0 {
            break;
        }

        println!("{}", x * m);
    }
}
