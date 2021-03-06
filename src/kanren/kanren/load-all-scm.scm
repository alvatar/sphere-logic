; Load everything (for interactive use: SCM Scheme)
; $Id: load-all-scm.scm,v 4.50 2005/02/12 00:04:18 oleg Exp $

;---- No longer needed. KANREN now uses round parentheses only
; ; For historical reasons, KANREN code uses square brackets, which
; ; SCM does not understand, natively. So, we have to modify load
; ; to cope with them.
;
; (define load
;   (let ((original-load load)
; 	(translated-fname
; 	  (string-append "/tmp/translated-"
; 	    (number->string (current-time))
; 	    ".scm")))
;     (lambda (file-name)
;       (call-with-output-file translated-fname
; 	(lambda (oport)
; 	  (call-with-input-file file-name
; 	    (lambda (iport)
; 	      (do ((c (read-char iport) (read-char iport)))
; 		((eof-object? c))
; 		(write-char
; 		  (case c
; 		    ((#\[) #\( )
; 		    ((#\]) #\) )
; 		    (else c))
; 		  oport))))))
;       (original-load translated-fname))))


(load "lib/scm-specific.scm")
(load "lib/term.scm")
(load "lib/kanren.ss")
(load "examples/type-inference.scm")
(load "examples/typeclasses.scm")
(load "examples/zebra.scm")
(load "examples/mirror.scm")
(load "examples/mirror-equ.scm")
(load "examples/deduction.scm")
(load "examples/pure-bin-arithm.scm")
(load "benchmarks/nrev.scm")
(load "benchmarks/queens.scm")
