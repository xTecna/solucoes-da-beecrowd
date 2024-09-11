Scanf.scanf "%d" (fun segundos ->
    let horas = segundos / 3600 in
    let minutos = segundos mod 3600 / 60 in
    Printf.printf "%d:%d:%d\n" horas minutos (segundos mod 3600 mod 60))
