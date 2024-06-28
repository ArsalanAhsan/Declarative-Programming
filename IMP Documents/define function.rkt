;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |define function|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "guess.rkt" "teachpack" "htdp")) #f)))


                ;;;;; Meaning of function definitions ;;;;;
;To define a function in DrRacket, you use the define keyword followed by the
; function name and its parameters. The body of the function contains the
; expressions that make up the function's behavior.

; Syntax
; (define (function-name param1 param2 ... paramN)
;  body-expressions)

(define (add a b)
  (+ a b))
(add 2 4)


(define (sub x y)
  (- x y))
(sub 2 4)


(define (my-square x)
  (* x x))
(my-square 2)




; Syntax
; (define variable-name value)

(define pie 3.14159)
(define radis