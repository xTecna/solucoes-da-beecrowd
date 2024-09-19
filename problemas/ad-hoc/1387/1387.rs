use std::io;

fn main() {
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let entrada: Vec<&str> = input.split(" ").collect();

        let l: i32 = entrada[0].trim().parse().unwrap();
        let r: i32 = entrada[1].trim().parse().unwrap();

        if l == 0 && r == 0 {
            break;
        }

        println!("{}", l + r);
    }
}
