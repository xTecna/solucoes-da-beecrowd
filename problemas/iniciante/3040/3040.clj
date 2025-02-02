(require '[clojure.string :as str])

(let [t (read-string (read-line))]
  (doseq [_ (range 0 t)]
    (let [[altura, espessura, galhos] (map read-string (str/split (read-line) #" "))]
      (if (and (<= 200 altura) (<= altura 300) (<= 50 espessura) (<= 150 galhos))
        (printf "Sim\n")
        (printf "Nao\n")))))