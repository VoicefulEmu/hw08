(define (my-filter func lst)
  (cond 
    ((null? (car lst))
     nil)
    ((null? (cdr lst))
     (if (func (car lst))
         (car lst)))
    (else
     (list (cond 
             ((func (car lst))
              (list (car lst) (my-filter func (cdr lst))))
             (else
              (my-filter func (cdr lst))))))))

(define (interleave s1 s2) 'YOUR-CODE-HERE)

(define (accumulate merger start n term)
  'YOUR-CODE-HERE)

(define (no-repeats lst) 'YOUR-CODE-HERE)

(my-filter even? '(1 2 3 4))
