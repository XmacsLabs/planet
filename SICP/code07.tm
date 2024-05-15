<TeXmacs|2.1.2>

<style|<tuple|generic|no-page-numbers|chinese|s7>>

<\body>
  <subsection*|1.3.1>

  <\session|s7|default>
    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (cube x) (* x x x))
    <|unfolded-io>
      cube
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (sum-integers a b)

      \ \ (if (\<gtr\> a b)

      \ \ \ \ \ \ 0

      \ \ \ \ \ \ (+ a (sum-integers (+ a 1) b))))
    <|unfolded-io>
      sum-integers
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (sum-cubes a b)

      \ \ (if (\<gtr\> a b)

      \ \ \ \ \ \ 0

      \ \ \ \ \ \ (+ (cube a) (sum-cubes (+ a 1) b))))
    <|unfolded-io>
      sum-cubes
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (pi-sum a b)

      \ \ (if (\<gtr\> a b)

      \ \ \ \ \ \ 0

      \ \ \ \ \ \ (+ (/ 1.0 (* a (+ a 2))) (pi-sum (+ a 4) b))))
    <|unfolded-io>
      pi-sum
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (sum-integers 1 3)
    <|unfolded-io>
      6
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (sum-cubes 1 3)
    <|unfolded-io>
      36
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (pi-sum 1 3)
    <|unfolded-io>
      0.3333333333333333
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (sum term a next b)

      \ \ (if (\<gtr\> a b)

      \ \ \ \ \ \ 0

      \ \ \ \ \ \ (+ (term a)

      \ \ \ \ \ \ \ \ \ (sum term (next a) next b))))
    <|unfolded-io>
      sum
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (inc n) (+ n 1))
    <|unfolded-io>
      inc
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (sum-cubes-2 a b)

      \ \ (sum cube a inc b))
    <|unfolded-io>
      sum-cubes-2
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (sum-cubes-2 1 3)
    <|unfolded-io>
      36
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (identity x) x)
    <|unfolded-io>
      identity
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (sum-integers-2 a b)

      \ \ (sum identity a inc b))
    <|unfolded-io>
      sum-integers-2
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (sum-integers-2 1 10)
    <|unfolded-io>
      55
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (pi-sum-2 a b)

      \ \ (define (pi-term x)

      \ \ \ \ (/ 1.0 (* x (+ x 2))))

      \ \ (define (pi-next x)

      \ \ \ \ (+ x 4))

      \ \ (sum pi-term a pi-next b))
    <|unfolded-io>
      pi-sum-2
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (* 8 (pi-sum-2 1 1000))
    <|unfolded-io>
      3.139592655589783
    </unfolded-io>

    <\input>
      \<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <subsection*|1.3.2>

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
      ((lambda (x y z) (+ x y (square z))) 1 2 3)
    <|unfolded-io>
      12
    </unfolded-io>

    <\input>
      \<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <subsection*|1.3.3>

  <\session|s7|default>
    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (average x y) (/ (+ x y) 2))
    <|unfolded-io>
      average
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (search f neg-point pos-point)

      \ \ (let ((midpoint (average neg-point pos-point)))

      \ \ \ \ (if (close-enough? neg-point pos-point)

      \ \ \ \ \ \ \ \ midpoint

      \ \ \ \ \ \ \ \ (let ((test-value (f midpoint)))

      \ \ \ \ \ \ \ \ \ \ (cond ((positive? test-value)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (search f neg-point midpoint))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ((negative? test-value)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (search f midpoint pos-point))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (else midpoint))))))
    <|unfolded-io>
      search
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (close-enough? x y)

      \ \ (\<less\> (abs (- x y)) 0.001))
    <|unfolded-io>
      close-enough?
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (half-interval-method f a b)

      \ \ (let ((a-value (f a))

      \ \ \ \ \ \ \ \ (b-value (f b)))

      \ \ \ \ (cond ((and (negative? a-value) (positive? b-value))

      \ \ \ \ \ \ \ \ \ \ \ (search f a b))

      \ \ \ \ \ \ \ \ \ \ ((and (negative? b-value) (positive? a-value))

      \ \ \ \ \ \ \ \ \ \ \ (search f b a))

      \ \ \ \ \ \ \ \ \ \ (else

      \ \ \ \ \ \ \ \ \ \ \ (error "Values are not of opposite sign" a b)))))
    <|unfolded-io>
      half-interval-method
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (half-interval-method sin 2.0 4.0)
    <|unfolded-io>
      3.14111328125
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (half-interval-method (lambda (x) (- (* x x x) (* 2 x) 3))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 1.0

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2.0)
    <|unfolded-io>
      1.89306640625
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define tolerance 0.00001)
    <|unfolded-io>
      0.00001
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (fixed-point f first-guess)

      \ \ (define (close-enough? v1 v2)

      \ \ \ \ (\<less\> (abs (- v1 v2)) tolerance))

      \ \ (define (try guess)

      \ \ \ \ (let ((next (f guess)))

      \ \ \ \ \ \ (if (close-enough? guess next)

      \ \ \ \ \ \ \ \ \ \ next

      \ \ \ \ \ \ \ \ \ \ (try next))))

      \ \ (try first-guess))
    <|unfolded-io>
      fixed-point
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (fixed-point cos 1.0)
    <|unfolded-io>
      0.7390822985224024
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (fixed-point (lambda (y) (+ (sin y) (cos y)))

      \ \ \ \ \ \ \ \ \ \ \ \ \ 1.0)
    <|unfolded-io>
      1.2587315962971173
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
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|1tab>|1.3.1 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|1tab>|1.3.2 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.3.3 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>