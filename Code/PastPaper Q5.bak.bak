;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |PastPaper Q5.bak|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
(define (myFilter proc lst)
  (foldr (lambda (element acc)
           (if (proc element)
               (cons element acc)
               acc))
         '()
         lst))



(myFilter even? '(1 2 3 4 5)) ; Output: '(2 4)
