(require '[clojure.java.io :as io])
(require '[clojure.string :as str])

(defn mdc [a b] (if (== b 0) a (mdc b (mod a b))))

(defn leitura [entrada p]
  (if (< p (count entrada))
    (do
      (let [linha (nth entrada p)
            numeros (map read-string (str/split linha #" "))
            x (nth numeros 0)
            y (nth numeros 1)]
        (println (/ (* 2 (+ x y)) (mdc x y))))
      (leitura entrada (inc p)))
    ()))

(let [entrada (vec (line-seq (io/reader *in*)))]
  (leitura entrada 0))