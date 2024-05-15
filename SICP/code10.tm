<TeXmacs|2.1.2>

<style|<tuple|generic|no-page-numbers|british|s7>>

<\body>
  <section*|Representing Sequences>

  <\session|s7|default>
    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define one-through-four (list 1 2 3 4))
    <|unfolded-io>
      (1 2 3 4)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (car one-through-four)
    <|unfolded-io>
      1
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (cdr one-through-four)
    <|unfolded-io>
      (2 3 4)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (car (cdr one-through-four))
    <|unfolded-io>
      2
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (cons 10 one-through-four)
    <|unfolded-io>
      (10 1 2 3 4)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (cons 5 one-through-four)
    <|unfolded-io>
      (5 1 2 3 4)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (list-ref items n)

      \ \ (if (= n 0)

      \ \ \ \ \ \ (car items)

      \ \ \ \ \ \ (list-ref (cdr items) (- n 1))))
    <|unfolded-io>
      list-ref
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define squares (list 1 4 9 16 25))
    <|unfolded-io>
      (1 4 9 16 25)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (list-ref squares 3)
    <|unfolded-io>
      16
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (length items)

      \ \ (if (null? items)

      \ \ \ \ \ \ 0

      \ \ \ \ \ \ (+ 1 (length (cdr items)))))
    <|unfolded-io>
      length
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define odds (list 1 3 5 7))
    <|unfolded-io>
      (1 3 5 7)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (length odds)
    <|unfolded-io>
      4
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (append squares odds)
    <|unfolded-io>
      (1 4 9 16 25 1 3 5 7)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (append odds squares)
    <|unfolded-io>
      (1 3 5 7 1 4 9 16 25)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (scale-list items factor)

      \ \ (if (null? items)

      \ \ \ \ \ \ ()

      \ \ \ \ \ \ (cons (* (car items) factor)

      \ \ \ \ \ \ \ \ \ \ \ \ (scale-list (cdr items) factor))))
    <|unfolded-io>
      scale-list
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (scale-list (list 1 2 3 4 5) 10)
    <|unfolded-io>
      (10 20 30 40 50)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (map abs (list -10 2.5 -11.6 17))
    <|unfolded-io>
      (10 2.5 11.6 17)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (map (lambda (x) (* x x))

      \ \ \ \ \ (list 1 2 3 4))
    <|unfolded-io>
      (1 4 9 16)
    </unfolded-io>

    <\input>
      \<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <section*|Hierarchical Structures>

  <\session|s7|default>
    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (count-leaves x)

      \ \ (cond ((null? x) 0) \ 

      \ \ \ \ \ \ \ \ ((not (pair? x)) 1)

      \ \ \ \ \ \ \ \ (else (+ (count-leaves (car x))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (count-leaves (cdr x))))))
    <|unfolded-io>
      count-leaves
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define x (cons (list 1 2) (list 3 4)))
    <|unfolded-io>
      ((1 2) 3 4)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (length x)
    <|unfolded-io>
      3
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (count-leaves x)
    <|unfolded-io>
      4
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (list x x)
    <|unfolded-io>
      (((1 2) 3 4) ((1 2) 3 4))
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (length (list x x))
    <|unfolded-io>
      2
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (count-leaves (list x x))
    <|unfolded-io>
      8
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (scale-tree tree factor)

      \ \ (cond ((null? tree) ())

      \ \ \ \ \ \ \ \ ((not (pair? tree)) (* tree factor))

      \ \ \ \ \ \ \ \ (else (cons (scale-tree (car tree) factor)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (scale-tree (cdr tree)
      factor)))))
    <|unfolded-io>
      scale-tree
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (scale-tree (list 1 (list 2 (list 3 4) 5) (list 6 7))

      \ \ \ \ \ \ \ \ \ \ \ \ 10)
    <|unfolded-io>
      (10 (20 (30 40) 50) (60 70))
    </unfolded-io>

    <\input>
      \<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <section*|Sequences as Conventional Interfaces>

  <subsection*|Sequence Operations>

  <\session|s7|default>
    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (square x) (* x x))
    <|unfolded-io>
      square
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (map square (list 1 2 3 4 5))
    <|unfolded-io>
      (1 4 9 16 25)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (filter predicate sequence)

      \ \ (cond ((null? sequence) ())

      \ \ \ \ \ \ \ \ ((predicate (car sequence))

      \ \ \ \ \ \ \ \ \ (cons (car sequence)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (filter predicate (cdr sequence))))

      \ \ \ \ \ \ \ \ (else (filter predicate (cdr sequence)))))
    <|unfolded-io>
      filter
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (filter odd? (list 1 2 3 4 5))
    <|unfolded-io>
      (1 3 5)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (accumulate op initial sequence)

      \ \ (if (null? sequence)

      \ \ \ \ \ \ initial

      \ \ \ \ \ \ (op (car sequence)

      \ \ \ \ \ \ \ \ \ \ (accumulate op initial (cdr sequence)))))
    <|unfolded-io>
      accumulate
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (accumulate + 0 (list 1 2 3 4 5))
    <|unfolded-io>
      15
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (accumulate * 1 (list 1 2 3 4 5))
    <|unfolded-io>
      120
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (accumulate cons () (list 1 2 3 4 5))
    <|unfolded-io>
      (1 2 3 4 5)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (enumerate-interval low high)

      \ \ (if (\<gtr\> low high)

      \ \ \ \ \ \ ()

      \ \ \ \ \ \ (cons low (enumerate-interval (+ low 1) high))))
    <|unfolded-io>
      enumerate-interval
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (enumerate-interval 2 7)
    <|unfolded-io>
      (2 3 4 5 6 7)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (enumerate-tree tree)

      \ \ (cond ((null? tree) ())

      \ \ \ \ \ \ \ \ ((not (pair? tree)) (list tree))

      \ \ \ \ \ \ \ \ (else (append (enumerate-tree (car tree))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-tree (cdr
      tree))))))
    <|unfolded-io>
      enumerate-tree
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (enumerate-tree (list 1 (list 2 (list 3 4)) 5))
    <|unfolded-io>
      (1 2 3 4 5)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (fib n)

      \ \ (cond ((= n 0) 0)

      \ \ \ \ \ \ \ \ ((= n 1) 1)

      \ \ \ \ \ \ \ \ (else (+ (fib (- n 1))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (fib (- n 2))))))
    <|unfolded-io>
      fib
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (list-fib-squares n)

      \ \ (accumulate cons

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ ()

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map square

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map <hlink|fib|#define_fib>

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-interval 0
      n)))))
    <|unfolded-io>
      list-fib-squares
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (list-fib-squares 10)
    <|unfolded-io>
      (0 1 1 4 9 25 64 169 441 1156 3025)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (product-of-squares-of-odd-elements sequence)

      \ \ (accumulate *

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ 1

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map <hlink|square|#define_square>

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (filter odd? sequence))))
    <|unfolded-io>
      product-of-squares-of-odd-elements
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (product-of-squares-of-odd-elements (list 1 2 3 4 5))
    <|unfolded-io>
      225
    </unfolded-io>

    <\input>
      \<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <subsection*|Nested Mappings>

  <\session|s7|default>
    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (square x) (* x x))
    <|unfolded-io>
      square
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (smallest-divisor n)

      \ \ (find-divisor n 2))
    <|unfolded-io>
      smallest-divisor
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (find-divisor n test-divisor)

      \ \ (cond ((\<gtr\> (square test-divisor) n) n)

      \ \ \ \ \ \ \ \ ((divides? test-divisor n) test-divisor)

      \ \ \ \ \ \ \ \ (else (find-divisor n (+ test-divisor 1)))))
    <|unfolded-io>
      find-divisor
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (divides? a b)

      \ \ (= (remainder b a) 0))
    <|unfolded-io>
      divides?
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (prime? n)

      \ \ (= n (smallest-divisor n)))
    <|unfolded-io>
      prime?
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (flatmap proc seq)

      \ \ (accumulate append () (map proc seq)))
    <|unfolded-io>
      flatmap
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (prime-sum? pair)

      \ \ (prime? (+ (car pair) (cadr pair))))
    <|unfolded-io>
      prime-sum?
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (make-pair-sum pair)

      \ \ (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))
    <|unfolded-io>
      make-pair-sum
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (prime-sum-pairs n)

      \ \ (map make-pair-sum

      \ \ \ \ \ \ \ (filter prime-sum?

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (flatmap

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (lambda (i)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map (lambda (j) (list i j))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-interval 1 (-
      i 1))))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (enumerate-interval 1 n)))))
    <|unfolded-io>
      prime-sum-pairs
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (prime-sum-pairs 4)
    <|unfolded-io>
      ((2 1 3) (3 2 5) (4 1 5) (4 3 7))
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (remove item sequence)

      \ \ (filter (lambda (x) (not (= x item)))

      \ \ \ \ \ \ \ \ \ \ sequence))
    <|unfolded-io>
      remove
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (permutations s)

      \ \ (if (null? s) \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ; empty set?

      \ \ \ \ \ \ (list ()) \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ; sequence
      containing empty set

      \ \ \ \ \ \ (flatmap (lambda (x)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map (lambda (p) (cons x p))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (permutations (remove x
      s))))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ s)))
    <|unfolded-io>
      permutations
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (permutations (list 1 2 3))
    <|unfolded-io>
      ((1 2 3) (1 3 2) (2 1 3) (2 3 1) (3 1 2) (3 2 1))
    </unfolded-io>

    <\input>
      \<gtr\>\ 
    <|input>
      \;
    </input>
  </session>
</body>

<\initial>
  <\collection>
    <associate|page-medium|papyrus>
    <associate|page-screen-margin|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?>>
    <associate|auto-2|<tuple|?|?>>
    <associate|auto-3|<tuple|?|?>>
    <associate|auto-4|<tuple|?|?>>
    <associate|auto-5|<tuple|?|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Representing
      Sequences> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Hierarchical
      Structures> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Sequences
      as Conventional Interfaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Sequence Operations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|Nested Mappings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>