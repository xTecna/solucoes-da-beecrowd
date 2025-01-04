(require '[clojure.java.io :as io])

(defn leitura [entrada p]
  (if (< p (count entrada))
    (do
      (let [v (read-string (nth entrada p))
            d (/ (read-string (nth entrada (+ p 1))) 2.0)
            area (* 3.14 d d)
            altura (/ v area)]
        (printf "ALTURA = %.2f\n" altura)
        (printf "AREA = %.2f\n" area))
      (leitura entrada (+ p 2)))
    ()))

(let [entrada (vec (line-seq (io/reader *in*)))]
  (leitura entrada 0))