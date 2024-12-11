(require '[clojure.string :as str])

(let [n (read-string (read-line))]
  (doseq [_ (range n)]
    (let [cartas (read-line)]
      (if (and (str/includes? cartas "A") (str/includes? cartas "K") (str/includes? cartas "Q") (str/includes? cartas "J"))
        (printf "Aaah muleke\n")
        (printf "Ooo raca viu\n")))))