(require '[clojure.string :as str])

(let [n (read-string (read-line))]
  (doseq [_ (range n)]
    (let [hamekame (filter not-empty (str/split (read-line) #"[hmek]"))
          tamanho1 (count (nth hamekame 0))
          tamanho2 (count (nth hamekame 1))]
      (printf "k")
      (doseq [_ (range (* tamanho1 tamanho2))]
        (printf "a"))
      (printf "\n"))))