(defn converteParaDecimal [n]
  (let [resposta (atom 0)
        potencia (atom 0)
        fatoriais (vector 1 2 6 24 120)]
    (doseq [i (range (- (count n) 1) -1 -1)]
      (reset! resposta (+ @resposta (* (Character/digit (nth n i) 10) (nth fatoriais @potencia
      (swap! potencia inc))
    @resposta))

(defn leitura []
  (loop []
    (let [n (read-line)]
      (if (== (read-string n) 0)
        ()
        (do
          (printf "%d\n" (converteParaDecimal n))
          (recur))))))

(leitura)
