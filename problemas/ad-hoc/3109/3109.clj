(require '[clojure.string :as str])

(defn procura [mesas a pessoa]
  (if (= (nth mesas a) pessoa)
    0
    (+ (procura mesas (nth mesas a) pessoa) 1)))

(let [n (read-string (read-line))
      q (read-string (read-line))
      mesas (atom (vec (range 0 (+ n 1))))]
  (doseq [_ (range q)]
    (let [numeros (map read-string (str/split (read-line) #" "))
          comando (nth numeros 0)
          a (nth numeros 1)]
      (if (== comando 1)
        (let [b (nth numeros 2)]
          (reset! mesas (assoc @mesas a (@mesas b) b (@mesas a))))
        (printf "%d\n" (procura @mesas a a))))))