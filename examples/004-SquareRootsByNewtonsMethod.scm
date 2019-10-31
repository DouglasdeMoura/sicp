; We can define a square-root function as:
;
; sqrt(x) = y, where y >= 0 and y^2 = x
;
; But this function doesn't say how to calculate the
; square root of x, it just declares WHAT a square root is:
; its properties and conditionals. We need to know HOW TO
; calculate the square root of x.
;
; A common way is to use Newton's method of successive
; approximation. We will use a special case of Newton's method,
; developed by Heron of Alexandria in the first century A.D.
; Consider the table below:
;
; GUESS    QUOTIENT              AVERAGE
; 1        (2/1) = 2             ((2 + 1)/2)  = 1.5
; 1.5      (2/1.5) = 1.3333      ((1.3333 + 1.5)/2) = 1.4167
; 1.4167   (2/1.4167) = 1.4118   ((1.4167 + 1.4118)/2) = 1.4142
; ...
;
; As we repeat this proccess, we obtain better and better approximantions.
; 
; Now, we can write our procedures:

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

; Improving the guess:
(define (improve guess x)
  (average guess (/ x guess)))

; Calculating the average:
(define (average x y) 
  (/ (+ x y) 2))

; Checking the approximation (usually, we give predicates names ending with question marks,
; to help us remember that they are predicates, as a stylitic convention):
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

; And finally, defining the srqt procedure (note that our first guess is 1):
(define (sqrt x)
  (sqrt-iter 1.0 x))

; Note that the we did not added any iterative (looping) construct
; to perform this task. It shows that it's possible to accomplish
; iteration with nothing more than a procedure.