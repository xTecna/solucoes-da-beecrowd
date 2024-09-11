use std::io;

fn main() {
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let n: i32 = input.trim().parse().unwrap();

        if n == 0 {
            break;
        }

        for _ in 0..n {
            input = String::new();
            io::stdin().read_line(&mut input);
            let numeros: Vec<&str> = input.split(" ").collect();

            let mut opcao = 0;
            let mut corretos = 0;
            for i in 0..5 {
                let cor: i32 = numeros[i].trim().parse().unwrap();
                if cor <= 127 {
                    opcao = i;
                    corretos += 1;
                }
            }

            if corretos == 1 {
                println!("{}", char::from(65 + (opcao as u8)));
            } else {
                println!("*");
            }
        }
    }
}
