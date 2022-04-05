(define (help head tail n)
    (if (null? tail) (cons head nil)
        (if (= n 0) (cons head tail)
            (help (append head (list (car tail))) (cdr tail) (- n 1))
        )
    )
)

(define (split-at lst n)
  'MY-SOLUTION-HERE
   (help nil lst n)
)


(define-macro (switch expr cases)
	 (cons 'cond 
	   (map (lambda (case) (cons (list 'eq? expr (car case)) (cdr case))) 
    			cases))
)

