;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ppt3 Task2|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
#| Task 2
(define (g x y) (* (f x) (f y)))
(define (f x) (g x 1))
(define (h x) (/ x 2))
(h 6)
a) 12
b) 3
c) A mistake
|#
(define (g x y) (* (f x) (f y)))
(define (f x) (g x 1))
(define (h x) (/ x 2))
(h 6)
#|
However, let's take a closer look at the functions f and g:

f(x) calls g with x and 1.
g(x, 1) multiplies the results of f(x) and f(1).
This creates a recursive loop because f(x) calls g, which in turn calls f again. This will continue indefinitely because there's no base case to stop the recursion.

So, if you tried to call (f x) or (g x y), you would run into an infinite loop and it would never finish calculating.
|#