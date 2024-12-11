(require '[clojure.string :as str])

(let [t (read-string (read-line))]
  (doseq [_ (range 0 t)]
    (let [[n, k] (map read-string (str/split (read-line) #" "))]
      (printf "%d\n" (+ (quot n k) (mod n k))))))