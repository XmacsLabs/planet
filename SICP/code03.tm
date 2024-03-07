<TeXmacs|2.1.2>

<style|<tuple|generic|no-page-numbers|chinese>>

<\body>
  <section*|Slide 2>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (+ 1 1)
    <|unfolded-io>
      2
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (begin

      \ \ (+ 1 1)

      \ \ (+ 1 3))
    <|unfolded-io>
      4
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (and (begin

      \ \ \ \ \ \ \ (debug-message "std" "branch 1\\n")

      \ \ \ \ \ \ \ #t)

      \ \ \ \ \ (begin

      \ \ \ \ \ \ \ (debug-message "std" "branch 2\\n")

      \ \ \ \ \ \ \ #t))
    <|unfolded-io>
      #t
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (or (begin

      \ \ \ \ \ \ \ (debug-message "std" "branch 1\\n")

      \ \ \ \ \ \ \ #t)

      \ \ \ \ \ (begin

      \ \ \ \ \ \ \ (debug-message "std" "branch 2\\n")

      \ \ \ \ \ \ \ #f))
    <|unfolded-io>
      #t
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <section*|Slide 3>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (define result 0)
    <|unfolded-io>
      0
    </unfolded-io>

    <\input|Scheme] >
      (for (x (list 1 2 3 4))

      \ \ (set! result (+ result x)))
    </input>

    <\unfolded-io|Scheme] >
      result
    <|unfolded-io>
      10
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (range n)

      \ \ (if (\<less\>= n 0)

      \ \ \ \ \ \ (list )

      \ \ \ \ \ \ (append (range (- n 1)) (list n))))
    <|unfolded-io>
      range
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (range 5)
    <|unfolded-io>
      (1 2 3 4 5)
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (sigma1 n)

      \ \ (define result1 0)

      \ \ (for (i (range n))

      \ \ \ \ (set! result1 (+ result1 i)))

      \ \ result1)
    <|unfolded-io>
      sigma1
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (sigma1 100)
    <|unfolded-io>
      5050
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (define (sigma2 n)

      \ \ (if (= n 0)

      \ \ \ \ \ \ 0

      \ \ \ \ \ \ (+ n (sigma2 (- n 1))))); tail recursive
    <|unfolded-io>
      sigma2
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (sigma2 100)
    <|unfolded-io>
      5050
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <section*|Slide 4>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (define (sum start end)

      \ \ (cond ((\<gtr\> start end) 0)

      \ \ \ \ \ \ \ \ ((= start end) end)

      \ \ \ \ \ \ \ \ (else (+ start

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (sum (+ start 1) end)))))
    <|unfolded-io>
      sum
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (sum 2 100)
    <|unfolded-io>
      5049
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <section*|Slide 5>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (define (fib n)

      \ \ (cond ((= n 0) 0)

      \ \ \ \ \ \ \ \ ((= n 1) 1)

      \ \ \ \ \ \ \ \ (else (+ (fib (- n 1))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (fib (- n 2))))))
    <|unfolded-io>
      fib
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (fib 2)
    <|unfolded-io>
      1
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (fib 4)
    <|unfolded-io>
      3
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (stree-\<gtr\>tree

      \ '(tree "fib 2"

      \ \ \ \ \ \ \ \ (tree "fib 1" (tree 1))

      \ \ \ \ \ \ \ \ (tree "fib 0" (tree 0))))
    <|unfolded-io>
      <text|<tree|fib 2|<tree|fib 1|<tree|1>>|<tree|fib 0|<tree|0>>>>
    </unfolded-io>

    <\input|Scheme] ;>
      scheme tree \<#2018\>'
    </input>
  </session>

  \;

  <tree|f 5|f 4|f 3>

  <section*|Slide 6>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (define (fib2 n)

      \ \ (define a 0)

      \ \ (define b 1)

      \ \ (define old_b 0)

      \ \ (for (i (range n))

      \ \ \ \ (set! old_b b)

      \ \ \ \ (set! b (+ a b))

      \ \ \ \ (set! a old_b))

      \ \ a)
    <|unfolded-io>
      fib2
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (fib2 2)
    <|unfolded-io>
      1
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (define (fib3 n)

      \ \ (define (fib_ab n a b)

      \ \ \ \ (if (\<less\>= n 0)

      \ \ \ \ \ \ \ \ a

      \ \ \ \ \ \ \ \ (fib_ab (- n 1) b (+ a b))))

      \ \ (fib_ab n 0 1))
    <|unfolded-io>
      fib3
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (fib3 -1)
    <|unfolded-io>
      0
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|8>
    <associate|page-screen-margin|true>
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
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Slide
      2> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Slide
      3> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Slide
      4> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Slide
      5> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Slide
      6> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>