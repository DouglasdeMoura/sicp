#|
EXERCISE 1.12: The following pattern of numbers is called Pascal’s triangle.

         1
       1   1
     1   2   1
   1   3   3   1
 1   4   6   4   1
       . . .

The numbers at the edge of the triangle are all 1, and each number inside
the triangle is the sum of the two numbers above it.35 Write a procedure that
computes elements of Pascal’s triangle by means of a recursive process.

|#

; -----| ANSWER |-----

; Compute individual element of Pascal's triangle according to its coordinates
(define (pascal-coord row col)
  (cond ((= row 1) 1)
        ((or (= col 1) (= col row)) 1)
        (else (+ (pascal-coord (- row 1)  (- col 1))
                 (pascal-coord (- row 1) col)))))

; Print a line of the triangle
(define (pascal-line current-row current-col)
  (define pascal-coord-number (pascal-coord current-row current-col))
  
  (cond ((< pascal-coord-number 10) (display "     "))
        ((< pascal-coord-number 100) (display "    "))
        ((< pascal-coord-number 1000) (display "   "))
  )

  (display pascal-coord-number)

  (cond ((> current-row current-col) (pascal-line current-row (+ current-col 1)))
        (else (newline))))

; Spacer (for formatting)
(define (pascal-spacer limit)
  
  (if (> limit 0)
    (display "   "))
  
  (if (> limit 1)
    (pascal-spacer (- limit 1))))

; Loop trough the lines
(define (pascal-loop limit start)
  (pascal-spacer (- limit start))
  (pascal-line start 1)

  (if (> limit start)
    (pascal-loop limit (+ start 1)))
)

; Print the Pascal's triangle
(define (pascal-triangle lines)
  (pascal-loop lines 1)
  (newline)
  (display "Pascal's triangle with ")
  (display lines)
  (display " line(s)."))

(pascal-triangle 12)