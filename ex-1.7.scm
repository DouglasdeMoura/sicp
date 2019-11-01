#|
EXERCISE 1.7: The good-enough? test used in computing square roots
will not be very effective for finding the square roots of very small numbers.
Also, in real computers, arithmetic operations are almost always performed
with limited precision. This makes our test inadequate for very large numbers.
Explain these statements, with examples showing how the test fails for small and
large numbers. An alternative strategy for implementing good-enough? is to watch
how guess changes from one iteration to the next and to stop when the change is a
very small fraction of the guess. Design a square-root procedure that uses this
kind of end test. Does this work better for small and large numbers?
|#

; -----| ANSWER |-----

#| First, let's test our algorithim with a small number: |#
(sqrt .00004) ;Value: .03167509508023218 | Expected .002

; and with a big number:
(sqrt 4123451627389564357234615627485134256784908653241545627849560985437426455627346)

#|
The first returns a wrong result because of the stopping condition of the `good-enough?`
function. The latter never returns a result because the computer loses precision
storing very large floating point numbers.

New sqrt procedure design:
|#

(define (sqrt x)
  (sqrt-iter 1.0 0 x))

(define (sqrt-iter guess old-guess x)
  (if (good-enough? guess old-guess)
      guess
      (sqrt-iter (improve guess x)
                guess
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))
  
(define (good-enough? guess old-guess)
  (< (abs (- guess old-guess)) 0.001))
