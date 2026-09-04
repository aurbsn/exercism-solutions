(import (rnrs))

(define (leap-year? year)
  (cond (((= (modulo year 400) 0)) #t)
        ((= (module year 100) 0) #f)
        ((= (modulo year 4)) #t)
        (else #f)))
