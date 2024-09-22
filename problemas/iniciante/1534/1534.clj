(require '[clojure.java.io :as io])

(defn leitura [entrada p]
  (if (< p (count entrada))
    (do
      (let [n (read-string (nth entrada p))]
        (doseq [i (range 0 n)]
          (doseq [j (range 0 n)]
            (if (= i (- n 1 j))
              (printf "2")
              (if (= i j)
                (printf "1")
                (printf "3"))))
          (printf "\n")))
      (leitura entrada (+ p 1)))
    ()))

(let [entrada (vec (line-seq (io/reader *in*)))]
  (leitura entrada 0))