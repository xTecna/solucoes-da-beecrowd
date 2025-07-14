(require '[clojure.string :as str])

(def regras {"R" {"G" 2
                  "B" 1}
             "G" {"R" 1
                  "B" 2}
             "B" {"R" 2
                  "G" 1}})

(let [c (read-string (read-line))]
  (doseq [_ (range c)]
    (let [p (read-string (read-line))
          pontos (transient {"R" 0 "G" 0 "B" 0})]
      (doseq [_ (range p)]
        (let [[time1 time2] (str/split (read-line) #" ")
              pontos_anterior (get pontos time1)
              pontos_rodada (get (get regras time1) time2)]
          (assoc! pontos time1 (+ pontos_anterior pontos_rodada))))
      (if (and (== (get pontos "R") (get pontos "G")) (== (get pontos "G") (get pontos "B")))
        (printf "trempate\n")
        (if (and (> (get pontos "R") (get pontos "G")) (> (get pontos "R") (get pontos "B")))
          (printf "red\n")
          (if (and (> (get pontos "G") (get pontos "R")) (> (get pontos "G") (get pontos "B")))
            (printf "green\n")
            (if (and (> (get pontos "B") (get pontos "R")) (> (get pontos "B") (get pontos "G")))
              (printf "blue\n")
              (printf "empate\n"))))))))