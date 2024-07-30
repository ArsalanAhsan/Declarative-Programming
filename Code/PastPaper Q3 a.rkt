;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |PastPaper Q3 a|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
;; Define the struct for Band
(define-struct band [name members])

;; Define the struct for Soloist
(define-struct soloist [artist-name civil-name])

;; Example values
(define band-example (make-band "The Beatles" (list "John Lennon" "Paul McCartney" "George Harrison" "Ringo Starr")))
(define soloist-example (make-soloist "Adele" "Adele Laurie Blue Adkins"))

;; Function to check if a name matches any element in a list of names
(define (name-in-list? name lst)
  (cond
    [(empty? lst) #f]
    [(string=? name (first lst)) #t]
    [else (name-in-list? name (rest lst))]))

;; Function to match name with artist
(define (matches? artist name)
  (cond
    [(band? artist)
     (or (string=? name (band-name artist))
         (name-in-list? name (band-members artist)))]
    [(soloist? artist)
     (or (string=? name (soloist-artist-name artist))
         (string=? name (soloist-civil-name artist)))]))

;; Tests
(matches? band-example "The Beatles")  ; should return #t
(matches? band-example "John Lennon")  ; should return #t
(matches? band-example "Adele")        ; should return #f
(matches? soloist-example "Adele")     ; should return #t
(matches? soloist-example "Adele Laurie Blue Adkins") ; should return #t
(matches? soloist-example "John Lennon") ; should return #f
