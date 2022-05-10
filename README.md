# guile-borrow

*guile-borrow* is a Guile library that borrows syntax and features from
other Lisps, namely Racket and Clojure. The main purpose of this
collection is to make Guile more familiar to other lisp programmers.

*guile-borrow* is primarily a collection of features which are typically
implemented using Macros but since not all syntactic constructs can be
built as macros, more complicated borrowed features will be implemented 
in forms of *Guile* extensions.


# Examples
```scheme

;; A clojure-like let
(define-syntax let1
  (syntax-rules ()
    ((_ (var val) exp exp* ...)
     (let ((var val)) exp exp* ...))))

;; If test is true, evaluates then with binding-form bound to the
;; value of test, if not, yields else
(define-syntax if-let
  (syntax-rules ()
    ((_ (binding value) then else)
     (let1 (binding value)
           (if binding then else)))))

;; When test is true evaluates body with binding-form bound to the
;; value of test
(define-syntax when-let
  (syntax-rules ()
    ((_ (binding value) body ...)
     (let1 (binding value)
           (when binding body ...)))))

;; a short-hand to (if (not something) ...)
(define-syntax if-not
  (syntax-rules ()
    ((_ test then else)
     (if (not test) then else))))

;; Like when but reversed
(define-syntax when-not
  (syntax-rules ()
    ((_ test body ...)
     (when (not test) body ...))))

```
