(require '[clojure.java.io :as io])
(require '[clojure.string :as str])

(let [entrada (vec (line-seq (io/reader *in*)))]
  (let [entrada2 (map read-string (str/split (nth entrada 0) #" "))
        n (nth entrada2 0)
        k (nth entrada2 1)
        alunos (sort (vec (subvec entrada 1 (count entrada))))]
    (println (nth alunos (- k 1)))))
