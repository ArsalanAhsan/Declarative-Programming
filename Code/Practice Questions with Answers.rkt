;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Practice Questions with Answers|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
"Question 1"
Program an expression that generates the string "The average is...". Instead of the three dots,
the average of the numbers 3, 5, 19 and 32.Use the expression that calculates this
average as a subexpression.
|#


(define Q1 
  (string-append "The average is " 
                 (number->string (/ (+ 3 5 19 32) 4))))

#| Result
output "The average is 59/4"
|#

Q1       