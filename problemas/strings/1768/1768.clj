(require '[clojure.java.io :as io])

(defn imprimeLinha [espacos asteriscos tamanho]
  (when (<= asteriscos tamanho)
    (do
      (doseq [_ (range espacos)] (printf " "))
      (doseq [_ (range asteriscos)] (printf "*"))
      (printf "\n")
      (imprimeLinha (- espacos 1) (+ asteriscos 2) tamanho))))

(defn imprimeTriangulo [tamanho deslocamento]
  (imprimeLinha (+ (int (Math/floor (/ tamanho 2))) deslocamento) 1 tamanho))

(defn leitura [entrada p]
  (if (< p (count entrada))
    (do
      (let [n (read-string (nth entrada p))]
        (imprimeTriangulo n 0)
        (imprimeTriangulo 3 (- (int (Math/floor (/ n 2))) 1))
        (printf "\n"))
      (leitura entrada (inc p)))
    ()))

(let [entrada (vec (line-seq (io/reader *in*)))]
  (leitura entrada 0))

