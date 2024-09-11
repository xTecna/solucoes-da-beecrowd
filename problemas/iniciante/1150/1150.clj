(defn leitura [x]
  (let [z (read-string (read-line))]
    (if (> z x) z (leitura x))))

(defn processa [soma resposta x z]
  (if (> soma z) resposta (processa (+ soma x resposta) (+ resposta 1) x z)))

(def x (read-string (read-line)))
(def z (leitura x))

(def resposta (processa x 1 x z))
(printf "%d\n" resposta)