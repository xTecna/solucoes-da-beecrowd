(require '[clojure.string :as str])

(let [t (read-string (read-line))]
  (doseq [_ (range t)]
    (let [[n m] (map read-string (str/split (read-line) #" "))]
      (printf "%d\n" (int (* (Math/ceil (/ (- n 2) 3.0)) (Math/ceil (/ (- m 2) 3.0))))))))