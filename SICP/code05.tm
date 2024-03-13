<TeXmacs|2.1.2>

<style|<tuple|generic|no-page-numbers|british|reduced-margins>>

<\body>
  <section*|Orders of Growth>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (define (expt-1 b n)

      \ \ (if (= n 0)

      \ \ \ \ \ \ 1

      \ \ \ \ \ \ (* b (expt-1 b (- n 1)))))
    <|unfolded-io>
      expt-1
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (expt-1 1 0)
    <|unfolded-io>
      1
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (expt-1 2 3)
    <|unfolded-io>
      8
    </unfolded-io>

    <\unfolded-io|Scheme] >
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

    <\unfolded-io|Scheme] >
      (expt-2 3 3)
    <|unfolded-io>
      27
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <section*|Exponentiation>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
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

    <\unfolded-io|Scheme] >
      (fast-expt 3 3)
    <|unfolded-io>
      27
    </unfolded-io>
  </session>

  <section*|Greatest Common Divisors>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (define (gcd a b)

      \ \ (if (= b 0)

      \ \ \ \ \ \ a

      \ \ \ \ \ \ (gcd b (remainder a b))))
    <|unfolded-io>
      gcd
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (gcd 10 20)
    <|unfolded-io>
      10
    </unfolded-io>
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