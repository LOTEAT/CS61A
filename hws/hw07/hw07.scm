(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  'MY-SOLUTION-HERE
  (car (cdr s))
)

(define (caddr s)
  'MY-SOLUTION-HERE
  (car (cdr (cdr s)))
)


(define (sign num)
  'MY-SOLUTION-HERE
  (cond ((< num 0) -1) ((= num 0) 0) (else 1))
)


(define (square x) (* x x))

(define (pow x y) 
    'MY-SOLUTION-HERE
    (if (= y 1) x
        (if (even? y) 
            (square (pow x (/ y 2)))
            (* x (square (pow x (floor (/ y 2)))))
        )
    )
)



(define (unique s)
  'MY-SOLUTION-HERE
  (if (null? s) nil
    (cons (car s) (unique (filter (lambda (x) (not (eq? x (car s)))) (cdr s)))))
)


(define (replicate x n)
  'MY-SOLUTION-HERE
  (define (rep_helper x n s)
        (if (= n 0) s
            (rep_helper x (- n 1) (cons x s))
        )
    )
    (rep_helper x n nil)
  )


(define (accumulate combiner start n term)
  'YOUR-SOLUTION-HERE
  (define (accumulate_helper combiner i term)
    (if (= i n) (term n)
      (combiner (term i) (accumulate_helper combiner (+ i 1) term))
    ))
  (combiner start (accumulate_helper combiner 1 term))
)

(define (accumulate-tail combiner start n term)
  'NY-SOLUTION-HERE
  (define (accumulate_helper number result)
    (if (> number n)
      result
      (accumulate_helper (+ number 1) (combiner (term number) result))
    )
  )
  (accumulate_helper 1 start)
)


(define-macro (list-of map-expr for var in lst if filter-expr)
  'MY-SOLUTION-HERE
  `(map (lambda (,var) ,map-expr) (filter (lambda (,var) ,filter-expr) ,lst))
)

