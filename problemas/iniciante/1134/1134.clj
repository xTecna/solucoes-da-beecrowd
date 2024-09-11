(def alcool (atom 0))
(def gasolina (atom 0))
(def diesel (atom 0))

(defn leitura []
  (let [codigo (read-string (read-line))]
    (if (== codigo 1) (swap! alcool inc)
        (if (== codigo 2) (swap! gasolina inc)
            (if (== codigo 3) (swap! diesel inc) ())))
    (if (== codigo 4) () (leitura))))

(leitura)

(printf "MUITO OBRIGADO\n")
(printf "Alcool: %d\n" @alcool)
(printf "Gasolina: %d\n" @gasolina)
(printf "Diesel: %d\n" @diesel)