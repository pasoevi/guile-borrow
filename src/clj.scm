;; Provide a few clojure-inspired ideas to guile.

(define-module (borrow clj)
  #:export (if-let
            when-let
            if-not
            when-not))

;; A clojure-like let
(define-syntax let1
  (syntax-rules ()
    ((_ (var val) exp exp* ...)
     (let ((var val)) exp exp* ...))))

;; If test is true, evaluates then with binding-form bound to the
;; value of
test, if not, yields else
(define-syntax if-let
  (syntax-rules ()
    ((_ (binding value) then else)
     (let1 (binding value)
           (if binding then else)))))

(if-let (x #t)
        (display x)
        #f)


(define when-let 0)
(define if-not 0)
(define when-not 0)
