#|
Fib(n) = {
  0                      if n = 0,
  1                      if n = 1,
  Fib(n-1) + Fib(n-2)    otherwise.
}
|#

#|
Tree recursive process, that grows as fast as Fib(n)
(note that the both procedures below are 
translations of the Fib(n) definition above):
|#

(define (fib n)
  (cond ((= n 0) 0)
  (cond ((= n 1) 1)
  (else (+ (fib (- n 1))
           (fib (- n 2)))))))

(define (fib n)
  (cond ((< n 2) n)
  (else (+ (fib (- n 1))
           (fib (- n 2))))))

#|
Linear iteration. More efficient to calculate
Fib(n) than the tree-recursive method:
|#
(define (fib n) 
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))