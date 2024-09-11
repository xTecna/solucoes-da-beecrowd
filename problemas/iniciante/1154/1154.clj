(def soma (atom 0))
(def quantidade (atom 0))

(defn leitura []
  (let [idade (read-string (read-line))]
    (if (>= idade 0) (do (swap! quantidade inc) (reset! soma (+ @soma idade)) (leitura)) ())))

(leitura)

(printf "%.2f\n" (/ (float @soma) @quantidade))