; EXERCISE 1.3: Define a procedure that takes three numbers
; as arguments and returns the sum of the squares of the
; two larger numbers.

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))
  

(define (f a b c)
  (cond ((and (<= c a) (<= c b)) (sum-of-squares a b))
        ((and (<= a b) (<= a c)) (sum-of-squares b c))
        ((and (<= b a) (<= b c)) (sum-of-squares a c))))

(f 1 1 1) ;Value: 1
(f 0 0 0) ;Value: 0
(f 1 2 1) ;Value: 5
(f 1 2 3) ;Value: 13

