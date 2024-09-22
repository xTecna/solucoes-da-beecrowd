(require '[clojure.java.io :as io])

(defn processa [entrada p n]
  (let [biblioteca (sort (vec (subvec entrada p (+ p n))))]
    (doseq [livro biblioteca]
      (println livro))))

(defn leitura [entrada p]
  (if (< p (count entrada))
    (let [n (read-string (nth entrada p))]
      (processa entrada (+ p 1) n)
      (recur entrada (+ p n 1)))
    ()))

(let [entrada (vec (line-seq (io/reader *in*)))]
  (leitura entrada 0))
