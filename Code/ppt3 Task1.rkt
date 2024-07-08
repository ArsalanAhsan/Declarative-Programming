;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ppt3 Task1|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
#| Task 1
What is the result of the following programs?
1. (define (g x y) (* (f x) (f y)))
(define (f x) (+ x 1))
(g 2 3)
a) 12
b) 5
c) A mistake
|#
(define (g x y) (* (f x) (f y)))
(define (f x) (+ x 1))
(g 2 3)
