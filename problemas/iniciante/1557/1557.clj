(defn leitura []
  (let [n (read-string (read-line))
        limite (int (+ (Math/floor (Math/log10 (bit-shift-left 1 (- (* 2 n) 2)))) 1))]
    (when (> n 0)
      (dotimes [i n]
        (printf (str "%" (str limite) "d") (bit-shift-left 1 i))
        (dotimes [j (- n 1)]
          (printf (str "%" (str (+ limite 1)) "d") (bit-shift-left 1 (+ i j 1))))
        (printf "\n"))
      (printf "\n")
      (leitura))))

(leitura)
