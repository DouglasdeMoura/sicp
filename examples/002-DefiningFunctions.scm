;Creating a new procedure
(define (square x) (* x x))

;Creating a compound procedure
(define (sum-of-squares x y)
  (+ (square x) (square y)))

;Expanding
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))