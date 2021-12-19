;; -*- lexical-binding: t; -*-

;; Reason why ceil, floor, round and trunc result is not Int.
;; https://github.com/purescript/purescript-math/issues/7
;;
;; Since Emacs has bignum, added ToInt variable of these functions.

(defvar Math.abs
  (symbol-function 'abs))

(defvar Math.acos
  (symbol-function 'acos))

(defvar Math.asin
  (symbol-function 'asin))

(defvar Math.atan
  (symbol-function 'atan))

(defvar Math.atan2
  (lambda (y)
    (lambda (x)
      (atan y x))))

(defvar Math.ceil
  (lambda (x)
    (float (ceiling x))))

(defvar Math.ceilToInt
  (lambda (x)
    (ceiling x)))

(defvar Math.cos
  (symbol-function 'cos))

(defvar Math.exp
  (symbol-function 'exp))

(defvar Math.floor
  (lambda (x)
    (float (floor x))))

(defvar Math.floorToInt
  (lambda (x)
    (floor x)))

;; https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/imul
;; We are probably not going to need this one.
(defvar Math.imul
  (lambda (a)
    (lambda (b)
      (psel/unrecoverable-error "Math.imul not supported"))))

(defvar Math.log
  (symbol-function 'log))

(defvar Math.max
  (lambda (a)
    (lambda (b)
      (max a b))))

(defvar Math.min
  (lambda (a)
    (lambda (b)
      (min a b))))

(defvar Math.pow
  (lambda (n)
    (lambda (p)
      (expt n p))))

(defvar Math.round
  (lambda (x)
    (float (round x))))

(defvar Math.roundToInt
  (lambda (x)
    (round x)))

(defvar Math.sin
  (symbol-function 'sin))

(defvar Math.sqrt
  (symbol-function 'sqrt))

(defvar Math.tan
  (symbol-function 'tan))

(defvar Math.trunc
  (lambda (n)
    (if (< n 0)
        (float (ceiling n))
      (float (floor n)))))

(defvar Math.truncToInt
  (lambda (n)
    (if (< n 0)
        (ceiling n)
      (floor n))))

(defvar Math.remainder
  (lambda (n)
    (lambda (m)
      (mod n m))))

(defvar Math.e float-e)

(defvar Math.ln2 (log 2))

(defvar Math.ln10 (log 10))

(defvar Math.log2e (log float-e 2))

(defvar Math.log10e (log float-e 10))

(defvar Math.pi float-pi)

(defvar Math.tau (* 2 float-pi))

(defvar Math.sqrt1_2 (sqrt 0.5))

(defvar Math.sqrt2 (sqrt 2))
