(require '[clojure.string :as str])

(let [numeros (sort (map read-string (str/split (read-line) #" ")))]
  (printf "%d\n" (nth numeros 1)))