(require '[clojure.string :as str])

(let [n (read-string (read-line))
      divisoes (map read-string (str/split (read-line) #" "))
      resposta (atom 0)]
  (doseq [numero divisoes]
    (reset! resposta (+ @resposta numero)))
  (printf "%d\n" (- @resposta n)))