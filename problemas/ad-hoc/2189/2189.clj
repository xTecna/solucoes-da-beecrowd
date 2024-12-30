(require '[clojure.string :as str])

(defn leitura [teste]
  (let [n (read-string (read-line))]
    (when (not= n 0)
      (let [numeros (map read-string (str/split (read-line) #" "))
            resposta (atom -1)]
        (doseq [i (range n)]
          (when (= (+ i 1) (nth numeros i)) (reset! resposta (nth numeros i))))
        (printf "Teste %d\n%d\n\n" teste @resposta)
        (recur (inc teste))))))

(leitura 1)