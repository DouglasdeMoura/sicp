(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x)))

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

;Two cases in case analysis
(define (abs x)
  (if (< x 0)
      (- x)
      x))

(and (> x 5) (< x 10))

(define (>= x y) 
  (or (> x y) (= x y)))

(define (>= x y) 
  (not (< x y)))

;Testes
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)

(if (and (> b a) (< b (* a b)))
    b
    a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))