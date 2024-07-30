;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |PastPaper Q7.bak|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
(require rackunit)

;; Define the flatten function
(define (flatten lst)
  (cond
    ;; If lst is empty, return empty
    [(empty? lst) empty]
    
    ;; If the first element of lst is itself a list, flatten it and concatenate
    [(list? (first lst)) 
     (append (flatten (first lst)) (flatten (rest lst)))]
    
    ;; Otherwise, add the first element to the flattened rest of lst
    [else (cons (first lst) (flatten (rest lst)))]))

;; Test cases
(check-expect (flatten '(1 2 ((3 4) 5 (6 7)))) (list 1 2 3 4 5 6 7))
(check-expect (flatten empty) empty)