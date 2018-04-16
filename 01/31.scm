(define (product f a next b)
  (if (> a b)
      1
      (* (f a)
         (product f (next a) next b))))

(define (product-iter f a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (f a)))))
  (iter a 1))

(define (factorial n)
  (define (identity x)
    x)
  (define (inc x)
    (+ x 1))
  (product identity 1 inc n))

(define (next x)
  (+ x 2))

(define pi
  (* 4
     (/ (* 2
           (product square 4 next 99)
           100)
        (product square 3 next 100))))
