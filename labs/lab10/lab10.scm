(define (over-or-under num1 num2)
  'MY-SOLUTION-HERE
  (if (< num1 num2) -1
    (if (= num1 num2) 0 1)
  )
)

;;; Tests
(over-or-under 1 2)
; expect -1
(over-or-under 2 1)
; expect 1
(over-or-under 1 1)
; expect 0


(define (filter-lst fn lst)
  'MY-SOLUTION-HERE
  (if (null? lst) nil 
    (if (fn (car lst)) 
      (cons (car lst) (filter-lst fn (cdr lst)))
      (filter-lst fn (cdr lst))
    )
  )
)

;;; Tests
(define (even? x)
  (= (modulo x 2) 0))
(filter-lst even? '(0 1 1 2 3 5 8))
; expect (0 2 8)


(define (make-adder num)
  'MY-SOLUTION-HERE
  (define (adder x) (+ num x))
  adder
)

;;; Tests
(define adder (make-adder 5))
(adder 8)
; expect 13


(define lst
  'MY-SOLUTION-HERE
  '(cons (cons 1 nil) (cons 2 (cons (cons 3 (cons 4 nil)) (cons 5 nil))))
  '((1) 2 (3 4) 5)
)


(define (composed f g)
  'MY-SOLUTION-HERE
  (define (fg x)
    (define gx (g x))
    (f gx)
  )
  fg
)


(define (remove item lst)
  'MY-SOLUTION-HERE
  (if (null? lst) nil
    (if (= (car lst) item) 
      (remove item (cdr lst))
      (cons (car lst) (remove item (cdr lst)))
    )
  ) 
)


;;; Tests
(remove 3 nil)
; expect ()
(remove 3 '(1 3 5))
; expect (1 5)
(remove 5 '(5 3 5 5 1 4 5 4))
; expect (3 1 4 4)


(define (no-repeats s)
  'MY-SOLUTION-HERE
  (if (null? s) nil
		(cons (car s) (no-repeats (remove (car s) (cdr s)) ))
	)
)


(define (substitute s old new)
  'MY-SOLUTION-HERE
	(if (null? s) nil
		 (let ((head (car s)))
		 (if (pair? head)
		 	(cons (substitute head old new) (substitute (cdr s) old new))
		 	(if (eq? head old)
		 		(cons new (substitute (cdr s) old new))
		 		(cons head (substitute (cdr s) old new))
		 	)
		 )
		)
	)
)


(define (sub-all s olds news)
  'MY-SOLUTION-HERE
  (if (null? s) nil
		(if (null? olds) s
		(sub-all (substitute s (car olds) (car news)) (cdr olds) (cdr news))
		)
	)
)

