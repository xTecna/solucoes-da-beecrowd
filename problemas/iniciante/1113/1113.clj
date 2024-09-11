(require '[clojure.string :as str])

(defn leitura []
  (let [entrada (map read-string (str/split (read-line) #" "))
        x (nth entrada 0)
        y (nth entrada 1)]
    (if (== x y)
      ()
      (do
        (if (< x y) (printf "Crescente\n") (printf "Decrescente\n"))
        (leitura)))))

(leitura)
