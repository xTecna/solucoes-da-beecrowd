(require '[clojure.string :as str])

(defn leitura []
  (let [entrada (map read-string (str/split (read-line) #" "))
        x (nth entrada 0)
        y (nth entrada 1)]
    (if (or (== x 0) (== y 0))
      ()
      (do
        (if (> x 0) (if (> y 0) (printf "primeiro\n") (printf "quarto\n")) (if (> y 0) (printf "segundo\n") (printf "terceiro\n")))
        (leitura)))))

(leitura)
