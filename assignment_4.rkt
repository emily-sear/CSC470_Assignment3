;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname assignment_4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define flatten
  (lambda (lst)
    (cond
      ((null? lst) '())
      ((list? (car lst)) (append (flatten(car lst)) (flatten(cdr lst))))
      (else (append (list (car lst)) (flatten (cdr lst)))))))

(flatten '((a) () (b ()) () (c)))

(define merge
  (lambda (loi1 loi2)
    (cond
      ((and(null? loi1) (null? loi2)) '())
      ((and (null? loi1) (not (null? loi2))) (append (list (car loi2)) (merge loi1 (cdr loi2))))
      ((and (not (null? loi1)) (null? loi2)) (append (list (car loi1)) (merge (cdr loi1) loi2)))
      ((> (car loi1) (car loi2)) (append (list (car loi2)) (merge loi1 (cdr loi2))))
      (else (append (list (car loi1)) (merge (cdr loi1) loi2))))))

(merge '(35 62 81 90 91) '(3 83 85 90))
      
      
