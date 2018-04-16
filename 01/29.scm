(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (simpson f a b n)
  (define h
    (/ (- b a) n))
  (define (inc x)
    (+ x 1))
  (define (even? x)
    (= (modulo x 2) 0))
  (define (term k)
    (* (if (even? k) 2 4)
       (f (+ a (* k h)))))
  (* (/ h 3)
     (+ (f a)
        (sum term 1 inc (- n 1))
        (f (+ a (* n h))))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))

(define (cube x)
  (* x x x))

(simpson cube 0 1 100)
(simpson cube 0 1 1000)
(integral cube 0 1 0.01)
(integral cube 0 1 0.001)