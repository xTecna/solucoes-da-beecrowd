(require '[clojure.string :as str])

(let [partes (str/split (read-line) #"\.")
      partes2 (str/split (nth partes 2) #"\-")]
  (printf "%s\n%s\n%s\n%s\n" (nth partes 0) (nth partes 1) (nth partes2 0) (nth partes2 1)))
