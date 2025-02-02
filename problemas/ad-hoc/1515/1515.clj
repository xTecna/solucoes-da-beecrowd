(require '[clojure.string :as str])

(defn processa [n resposta menor_ano]
  (if (zero? n)
    resposta
    (let [[planeta ano tempo] (str/split (read-line) #" ")
          diferenca (- (read-string ano) (read-string tempo))]
      (if (< diferenca menor_ano)
        (processa (dec n) planeta diferenca)
        (processa (dec n) resposta menor_ano)))))

(defn leitura []
  (let [n (read-string (read-line))]
    (when-not (zero? n)
      (println (processa n "" 9999))
      (recur))))

(leitura)