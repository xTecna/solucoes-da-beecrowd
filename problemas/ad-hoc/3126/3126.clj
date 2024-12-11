(require '[clojure.string :as str])

(let [C (read-string (read-line))
      numeros (map read-string (str/split (read-line) #" "))
      resposta (atom 0)]
  (doseq [i (range C)]
    (reset! resposta (+ @resposta (nth numeros i))))
  (printf "%d\n" @resposta))