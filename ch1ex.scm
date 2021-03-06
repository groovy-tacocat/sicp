;;; Exercises 1.1-1.5 in SICP

;;; Exercise 1.1
#| 10 == 10
(+ 5 3 4) == 12
(- 9 1) == 8
(/ 6 2) == 3
(+ (* 2 4) (- 4 6)) == 6
(define a 3)
(define b (+ a 1)) == b = 4
(+ a b (* a b)) == 19
(= a b) == false? 
(if (and (> b a) (< b (* a b)))
    b
    a) == 4
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)) == 16
(+ 2 (if (> b a ) b a)) == 6
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1)) == 16 #|

;;; Exercise 1.2
#|
    Translate the following expressions into prefix form:

    5 + 4 + (2 - (3 - (6 + 4/5)))
    -----------------------------  == -37/150 or -0.246666666666
          3(6 - 2)(2 - 7)

    (/ (+ 5 (+ 4 (+ (- 2 (- 3 (+ 6 4/5)))))) (* 3 (* (- 6 2) (- 2 7))))
#|

;;; Exercise 1.3
#| Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers

(define (square x) (* x x))
(define (sum-square a b) (+ (square a) (square b)))
(define (hooven i j k)
        (cond 
         ((and (<= i j) (<= i k) (sum-square j k)))
         ((<= j k) (sum-square i k))
         (else (sum-square i j))))

