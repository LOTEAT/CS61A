(define (reverse lst)
    'MY-SOLUTION-HERE
    (if (null? lst) nil
    (append (reverse (cdr lst)) (list (car lst)))
))