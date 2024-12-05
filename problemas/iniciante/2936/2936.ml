Scanf.scanf "%d\n" (fun curupira ->
    Scanf.scanf "%d\n" (fun boitata ->
        Scanf.scanf "%d\n" (fun boto ->
            Scanf.scanf "%d\n" (fun mapinguari ->
                Scanf.scanf "%d\n" (fun iara ->
                    Printf.printf "%d\n"
                      (225 + (300 * curupira) + (1500 * boitata) + (600 * boto)
                     + (1000 * mapinguari) + (150 * iara)))))))
