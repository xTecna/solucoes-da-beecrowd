(require '[clojure.string :as str])

(def precos [4.00 4.50 5.00 2.00 1.50])

(def entrada (str/split (read-line) #" "))
(def codigo (read-string (nth entrada 0)))
(def quantidade (read-string (nth entrada 1)))

(printf "Total: R$ %.2f\n" (* quantidade (nth precos (- codigo 1))))