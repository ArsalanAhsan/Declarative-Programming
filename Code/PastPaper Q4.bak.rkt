;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |PastPaper Q4.bak|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
;4 b
#|
a) Recreate the functionality of (myFoldl f base l). Apart from append, only use the 5
above-mentioned higher-order functions and lambda expressions in your implementation.
1 ; [X Y] (X Y -> Y) Y (listof X) -> Y
2 ; Combines all elements of the list l by f. The
3 ; empty list is mapped to base, the elements
4 ; are run through from left to right.
5 (check-expect (myFoldl cons empty (list 1 2 3)) (list 3 2 1))
6 (define (myFoldl f base l)
|#


(define (myOrmap proc lst)
  (cond ((null? lst) #f) ; base case: empty list returns false
        ((proc (car lst)) #t) ; if proc applied to the first element is true, return true
        (else (myOrmap proc (cdr lst))))) ; otherwise recursively check the rest of the list


(check-expect (myOrmap negative '(-1 2 3)) true)
#|
Aufgabe 4: Higher-order lists and functions 11 Punkte
hint: You may use the following higher-order functions known from the lecture in task part a):
1 ; [X] (X -> Boolean) (listof X) -> (listof X)
2 ; Returns a list containing all elements from l
3 ; that fulfill the predicate p
4 (filter p l)
5
6 X Y] (X -> Y) (listof X) -> (listof Y)
7 ; Maps all elements from l with f and returns
8 ; the list of results.
9 (map f l)
10
11 ; [X Y] (X Y -> Y) Y (listof X) -> Y
12 ; Combines all elements of the list l by f. The
13 ; empty list is mapped to base, the elements
14 ; are run through from right to left.
15 (foldr f base l)
a) Recreate the functionality of (myFoldl f base l). Apart from append, only use the 5
above-mentioned higher-order functions and lambda expressions in your implementation.
1 ; [X Y] (X Y -> Y) Y (listof X) -> Y
2 ; Combines all elements of the list l by f. The
3 ; empty list is mapped to base, the elements
4 ; are run through from left to right.
5 (check-expect (myFoldl cons empty (list 1 2 3)) (list 3 2 1))
6 (define (myFoldl f base l)
|#
#|
(define (myFoldl f base l)
  (foldr (lambda (x acc)
           (cons x acc))   ;; Corrected: cons x acc instead of f acc x
         base
         (reverse l)))
|#

;; Explanation:
;; - We use foldr to process the list l from right to left.
;; - The lambda function (lambda (x acc) (lambda (ys) (acc (f ys x)))) accumulates the result.
;; - base is the starting value for the accumulation.

;; Example usage:
;;(check-expect (myFoldl cons empty (list 1 2 3)) (list 3 2 1))





