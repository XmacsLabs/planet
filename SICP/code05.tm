<TeXmacs|2.1.2>

<style|<tuple|generic|no-page-numbers|british|reduced-margins|s7>>

<\body>
  <section*|Orders of Growth>

  <\session|s7|default>
    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (expt-1 b n)

      \ \ (if (= n 0)

      \ \ \ \ \ \ 1

      \ \ \ \ \ \ (* b (expt-1 b (- n 1)))))
    <|unfolded-io>
      expt-1
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (expt-1 1 0)
    <|unfolded-io>
      1
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (expt-1 2 3)
    <|unfolded-io>
      8
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (expt-2 b n)

      \ \ (define (expt-iter b counter product)

      \ \ \ \ (if (= counter 0)

      \ \ \ \ \ \ \ \ product

      \ \ \ \ \ \ \ \ (expt-iter b

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (- counter 1)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (* b product))))

      \ \ 

      \ \ (expt-iter b n 1))
    <|unfolded-io>
      expt-2
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (expt-2 3 3)
    <|unfolded-io>
      27
    </unfolded-io>

    <\input>
      \<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <section*|Exponentiation>

  <\session|s7|default>
    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (fast-expt b n)

      \ \ (define (even? n)

      \ \ \ \ (= (remainder n 2) 0))

      \ \ (define (square x) (* x x))

      \ \ 

      \ \ (cond ((= n 0) 1)

      \ \ \ \ \ \ \ \ ((even? n) (square (fast-expt b (/ n 2))))

      \ \ \ \ \ \ \ \ (else (* b (fast-expt b (- n 1))))))
    <|unfolded-io>
      fast-expt
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (fast-expt 3 3)
    <|unfolded-io>
      27
    </unfolded-io>

    <\input>
      \<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  <section*|Greatest Common Divisors>

  <\session|s7|default>
    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (define (gcd a b)

      \ \ (if (= b 0)

      \ \ \ \ \ \ a

      \ \ \ \ \ \ (gcd b (remainder a b))))
    <|unfolded-io>
      gcd
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\ 
    <|unfolded-io>
      (gcd 10 20)
    <|unfolded-io>
      10
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
    <associate|page-screen-margin|true>
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
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Orders
      of Growth> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Exponentiation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Greatest
      Common Divisors> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>