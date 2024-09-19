(require '[clojure.java.io :as io])
(require '[clojure.string :as str])

(defn leitura [entrada p]
  (if (< p (count entrada))
    (let [numeros (str/split (nth entrada p) #" ")
          v (read-string (nth numeros 0))
          t (read-string (nth numeros 1))]
      (printf "%d\n" (* v 2 t))
      (recur entrada (+ p 1)))
    ()))

(let [entrada (vec (line-seq (io/reader *in*)))]
  (leitura entrada 0))