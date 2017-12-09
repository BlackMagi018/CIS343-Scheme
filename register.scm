(define tax-rate 0.065)

(define (trans total input)
    (cond
        ((= input 0) 
	(display "Subtotal: $")(display total)(newline)
    	(display "Tax: $")(display (* total tax-rate))(newline)
    	(display "Total: $")(display (+ total (* total tax-rate)))
	)
    (else (display "Enter Value: $")
	(let ((inpt (read)))
	(display "$")(display (+ total inpt))(newline)(newline)
	(trans ( + total inpt) inpt))
    )
    )
)

(define (start-prog)
    	(newline)
	(display "Jeremiah's Scheme Register")(newline)
	(display "Start Transaction (exit with 0):")
	(newline)(newline)
	(trans 0 1)
)

(start-prog)