(define (my-filter func lst)
  (cond 
    ((null? lst)
     nil)
    ((func (car lst))
     (cons (car lst) (my-filter func (cdr lst))))
    (else
     (my-filter func (cdr lst)))))

(define (interleave s1 s2)
  (cond 
    ((null? s1)
     s2)
    ((null? s2)
     s1)
    (else
     (cons (car s1)
           (cons (car s2) (interleave (cdr s1) (cdr s2)))))))

(define (accumulate merger start n term)
  (cond 
    ((= n 1)
     1)
    (else
     (merger start
             (cond 
               ((= merger '*)
                (merger (term n)
                        (accumulate merger 1 (- n 1) term)))
               (else
                (merger (term n)
                        (accumulate merger 0 (- n 1) term))))))))

(define (no-repeats lst) 'YOUR-CODE-HERE)

(define (identity x) x)

(accumulate * 1 5 identity)
