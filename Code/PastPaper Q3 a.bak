;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |PastPaper Q3 a|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
;; Define the Band struct
(define-struct band (name members))

;; Define the Soloist struct
(define-struct soloist (artist-name civil-name))

;; Define the Artist data type using a union
(define-struct artist (variant))

;; Example values
(define coldplay (make-band "Coldplay" (list "Chris Martin" "Jonny Buckland" "Guy Berryman" "Will Champion")))

;; Create an artist using the artist struct
(define coldplay-artist (make-artist coldplay))

;; Example values (after make-soloist definition)
(define beyonce (make-soloist "Beyoncé" "Beyoncé Giselle Knowles-Carter"))

;; Create another artist using the artist struct
(define beyonce-artist (make-artist beyonce))

;; Function to check if a name matches the artist or band members
(define (search-artist name artist)
  (cond
    [(band? (artist-variant artist))
     (or (string=? name (band-name (artist-variant artist)))
         (member name (band-members (artist-variant artist))))]
    [(soloist? (artist-variant artist))
     (string=? name (soloist-artist-name (artist-variant artist)))]
    [else #f]))

;; Example usage
(search-artist "Coldplay" coldplay-artist) ; Output: #t
(search-artist "Chris Martin" coldplay-artist) ; Output: #t
(search-artist "Beyoncé" coldplay-artist) ; Output: #f
(search-artist "Beyoncé" beyonce-artist) ; Output: #t
