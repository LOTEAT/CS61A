
(define-macro (def func args body)
    'MY-SOLUTION-HERE
    `(define ,(cons func args) ,body)  
)



(define (map-stream f s)
    (if (null? s)
    	nil
    	(cons-stream (f (car s)) (map-stream f (cdr-stream s)))))

(define all-three-multiples
  'MY-SOLUTION-HERE
  (map-stream (lambda (x) (+ 3 x)) (cons-stream 0 all-three-multiples))
)


(define (compose-all funcs)
  'MY-SOLUTION-HERE
  (if (null? funcs) (lambda (x) x)
      (lambda (x) ((compose-all (cdr funcs)) ((car funcs) x)))
  )
)

(define (helper cur_sum stream)
    (if (null? stream) nil
    (cons-stream (+ cur_sum (car stream)) (helper (+ cur_sum (car stream)) (cdr-stream stream)))
))

(define (partial-sums stream)
  'MY-SOLUTION-HERE
  (helper 0 stream)
)

