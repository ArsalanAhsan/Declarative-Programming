;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Arithmetic, Nonarithmetic and Boolean expressions1|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "web-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "web-io.rkt" "teachpack" "2htdp")) #f)))

                                ;* Arithmetic with numeric values *; 
#|
; Addition
"Addition"  (+ 3 5) ; => 8


; Subtraction
"Subtraction" (- 10 4) ; => 6


; Multiplication
"Multiplication" (* 2 3) ; => 6


; Division
"Division" (/ 15 3) ; => 5


; Exponentiation (raising to a power)
" Exponentiation (raising to a power)" (expt 2 3) ; => 8 (2^3) ==> 2*2*2;


; Modulus (remainder of division)
"Modulus (remainder of division)" (modulo 10 3) ; => 1 (10 % 3)==> 10/3 => 1 is the rest Number


; Absolute value
; The absolute value (or modulus) | x | of a real number x is the non-negative value of x
; without regard to its sign. For example, the absolute value of 5 is 5,
; and the absolute value of -5 is also 5.
"Absolute value" (abs -7) ; => 7


; Nested expressions
; You can nest expressions by placing other expressions inside an expression.
; Nesting is a good way to simplify the creation of complex expressions.
"Nested expressions" (+ (* 2 3) (/ 10 2)) ; => 11 ((2 * 3) + (10 / 2))


; Using variables in arithmetic expressions
"Using variables in arithmetic expressions" (define x 5)  ; x value => 5
(define y 10)    ; Y value => 10;
(+ x y) ; => 15    (+ 5 10) 

; Incrementing a value
"Incrementing a value" (+ x 1) ; => 6  x is already declared x = 5, so incre (+ xValue 1)

; Decrementing a value
"Decrementing a value" (- y 15) ; => 9  y is already declared y = 10, so decre (- yValue 1)

; Square root
"Square Root" (sqrt 4)

; trigonometric
; will go through next time, didn't understand the value 
"trigonometric"
(cos pi) ; => i-1.0   it is the the cosine of π (pi)
(sin 90)
(cos 90)

  |#


                         ;* Arithmetic with non Numeric values *;
#|

; String Operations

; String concatenation   it is used to add strings value in dr we use string-append
"concatenation/append a value"
(define str1 "Hello, ")
(define str2 "world!")
(string-append str1 str2) ; => "Hello, world!"

; Finding the length of a string
"length of String"
(string-length str1) ; => 7
(string-length "Sajid") ; => 5
(string-length "(+ 21 21)") ; 9 
; Converting a number to a string
"convert from number to String"
(number->string 123) ; => "123"

; Converting a string to a number
"convert from sting to number"
(string->number "456") ; => 456
(string->number "21 21") ; false no space is allowed in dr racket

; Accessing a character in a string by index
"accessing the ref of String value"
(string-ref "Racket" 1) ; => #\a

;replicate a value
"replicating the String value"
(replicate 3 "Sajid ")


"Question 1"
; Program an expression that generates the string "The average is...". Instead of the three dots,
; the average of the numbers 3, 5, 19 and 32.Use the expression that calculates this
; average as a subexpression.


; Define the numbers
(define num1 3)
(define num2 5)
(define num3 19)
(define num4 32)

; Calculate the sum of the numbers
(define sum (+ num1 num2 num3 num4))

; Count the numbers
(define countElement 4)

; Calculate the average
(define average (/ sum countElement))

; Create the result string
(define result (string-append "The average is " (number->string average)))

; calling result
result         ; output "The average is 59/4"

                  ;   OR

(define sum1 (+ 3 5 19 32))
(define average1 (/ sum1 4))

(define str4 (number->string average1))
(define test (string-append "The average is " str4 ))
; calling result 
test       ; output "The average is 59/4"


                   ;  OR

; Define the numbers
(define numm1 3)
(define numm2 5)
(define numm3 19)
(define numm4 32)

; Calculate the sum of the numbers
(define summ (+ numm1 numm2 numm3 numm4))

; Count the numbers
(define count 4)

; Calculate the average as an inexact number
(define average2 (exact->inexact (/ summ count)))

; Create the result string
(define resultt (string-append "The average is " (number->string average2)))

; Output the result
resultt

               ;  OR

(define summ1 (+ 3 5 19 32))

(define average3 (exact->inexact (/ summ1 4)))
(define test12 (string-append "The average is " (number->string average3)))
; calling result 
test12





"Question 2"
; There are programming languages that support automatic conversions
; between numbers and strings that represent numbers.
; This does not change the fact that numbers and strings that can be read as numbers
; are very different things.



; Define a number
(define num 42)

; Define a string that represents a number
(define str "42")

; Convert the number to a string
(define num-to-str (number->string num))

; Convert the string to a number
(define str-to-num (string->number str))

; Check the types
(define num-type (number? num))         ; => #t
(define str-type (string? str))         ; => #t
(define num-to-str-type (string? num-to-str)) ; => #t
(define str-to-num-type (number? str-to-num)) ; => #t

; Output results
(list "Number: " num)
(list "String: " str)
(list "Number to String: " num-to-str)
(list "String to Number: " str-to-num)
(list "Is num a number? " num-type)
(list "Is str a string? " str-type)
(list "Is num-to-str a string? " num-to-str-type)
(list "Is str-to-num a number? " str-to-num-type)

; Perform arithmetic operations
(define num-result (+ num 8))               ; => 50
(define str-to-num-result (+ str-to-num 8)) ; => 50

(list "Arithmetic operation on number: " num-result)
(list "Arithmetic operation on converted string to number: " str-to-num-result)

#|
In Racket, the list function creates a list of elements. Each element in the list can be
of any type, such as numbers, strings, or other lists. The list function simply packages
its arguments into a list without evaluating them as a single expression.
|#





; Symbol Operations

; Defining symbols
(define sym1 'hello)
(define sym2 'world)

; Checking if two symbols are equal
(eq? sym1 sym2) ; => #f

; Converting a symbol to a string
(symbol->string sym1) ; => "hello"

; Converting a string to a symbol
(string->symbol "world") ; => 'world

|#





                          ;* Boolean *;

#|

(> 9 10)  ; => false (9 > 10)
(< 9 10)  ; => true  (9 < 10)
(< -1 0)  ; => true
(= 10 20) ; => false
(string=? "hello" "World") ; => false
; Nested expression
; Check if the length of "hello world" is equal to the number 11,
; or if the string "hello world" is equal to "good morning".
"Nested expression in Boolean"
(and (or
       ; Compare the length of the string "hello world" with the number 11.
      (= (string-length "hello world")
            (string->number "11"))
      ; Check if the string "hello world" is equal to "good morning".
         (string=? "hello world" "good morning"))
      ; Check if the length of "hello world" plus 60 is less than or equal to 80.
     (<= (+ (string-length "hello world") 60) 80))   ; true

"logical Operator"

; Logical AND
(and #t #f) ; => #f

; Logical OR
(or #t #f) ; => #t

; Logical NOT
(not #t) ; => #f

; Comparing numbers (less than)
(< 3 5) ; => #t

; Comparing numbers (equal)
(= 3 3) ; => #t

; Comparing strings (lexicographical order)
(string<? "apple" "banana") ; => #t


|#




