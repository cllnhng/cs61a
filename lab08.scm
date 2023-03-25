(define (over-or-under num1 num2)
    (cond 
          ((< num1 num2) -1)
          ((= num1 num2) 0)
          ((> num1 num2) 1)))

(define (composed f g)
       (define (new x) (f(g x)))
        new )

    

(define (square n) (* n n))

(define (pow base exp) 
    (cond 
        ( (= 0 exp) 1)
        ((even? exp) (square (pow base (/ exp 2))))
        (else (* base  (pow base (- exp 1) )))
    )
)






(define (ascending? lst) 
    (cond
        ((null?(cdr lst))  #t )

        ( ( <= (car lst) (car (cdr lst) ) ) 
                (ascending? (cdr lst ) )   )    

        ( (> (car lst ) (car(cdr  lst )) )      
                #f              )
    )
)
