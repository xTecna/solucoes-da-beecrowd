use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let parts: Vec<&str> = input.split(" ").collect();
        let h: i32 = parts[0].trim().parse().unwrap();
        let m: i32 = parts[1].trim().parse().unwrap();
        let o: i32 = parts[2].trim().parse().unwrap();

        if o == 1 {
            println!("{:02}:{:02} - A porta abriu!", h, m);
        } else {
            println!("{:02}:{:02} - A porta fechou!", h, m);
        }
    }
}
