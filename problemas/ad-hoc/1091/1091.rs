use std::io;

fn main() {
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let k: i32 = input.trim().parse().unwrap();

        if k == 0 {
            break;
        }

        input = String::new();
        io::stdin().read_line(&mut input);
        let numeros: Vec<&str> = input.split(" ").collect();
        let n: i32 = numeros[0].trim().parse().unwrap();
        let m: i32 = numeros[1].trim().parse().unwrap();

        for _ in 0..k {
            input = String::new();
            io::stdin().read_line(&mut input);
            let numeros: Vec<&str> = input.split(" ").collect();
            let mut x: i32 = numeros[0].trim().parse().unwrap();
            let mut y: i32 = numeros[1].trim().parse().unwrap();

            x -= n;
            y -= m;

            if x > 0 && y > 0 {
                println!("NE")
            } else if x > 0 && y < 0 {
                println!("SE")
            } else if x < 0 && y > 0 {
                println!("NO")
            } else if x < 0 && y < 0 {
                println!("SO")
            } else {
                println!("divisa")
            }
        }
    }
}
