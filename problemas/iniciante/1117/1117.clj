(def notas [])

(defn leitura []
  (let [nota (read-string (read-line))]
    (if (and (>= nota 0.0) (<= nota 10.0))
      (do
        (def notas (conj notas nota))
        (if (== (count notas) 2)
          ()
          (leitura)))
      (do
        (println "nota invalida")
        (leitura)))))

(leitura)

(printf "media = %.2f\n" (/ (apply + notas) 2.0))