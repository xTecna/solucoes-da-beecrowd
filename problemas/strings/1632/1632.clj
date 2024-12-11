(require '[clojure.string :as str])

(defn variacoes [letra] (if (or (= letra "A") (= letra "E") (= letra "I") (= letra "O") (= letra "S")) 3 2))

(let [n (read-string (read-line))]
  (doseq [_ (range n)]
    (let [senha (str/upper-case (read-line))
          resposta (atom 1)]
      (doseq [letra senha]
        (reset! resposta (* @resposta (variacoes (str letra)))))
      (printf "%d\n" @resposta))))