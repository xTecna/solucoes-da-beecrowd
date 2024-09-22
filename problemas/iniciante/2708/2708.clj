(require '[clojure.string :as str])

(defn leitura []
  (let [palavras (str/split (read-line) #" ")
        palavra (nth palavras 0)]
    (if (= palavra "ABEND")
      [0 0]
      (let [numero (read-string (nth palavras 1))
            [pessoas jipes] (leitura)]
        (if (= palavra "SALIDA")
          [(+ pessoas numero) (inc jipes)]
          [(- pessoas numero) (dec jipes)])))))

(let [[pessoas jipes] (leitura)]
  (printf "%d\n" pessoas)
  (printf "%d\n" jipes))
