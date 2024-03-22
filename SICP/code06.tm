<TeXmacs|2.1.2>

<style|<tuple|generic|no-page-numbers|british|reduced-margins>>

<\body>
  <section*|\<#7ED8\>\<#56FE\>>

  <\session|scheme|default>
    <\folded-io|Scheme] >
      (define (plot l) (stree-\<gtr\>tree l))
    <|folded-io>
      plot
    </folded-io>

    <\folded-io|Scheme] >
      (plot `(frac 1 2))
    <|folded-io>
      <text|<frac|1|2>>
    </folded-io>

    <\folded-io|Scheme] >
      (plot `(point 0 0))
    <|folded-io>
      <text|<point|0|0>>
    </folded-io>

    <\folded-io|Scheme] >
      (plot `(graphics (point "-5" "-5") (point "5" "5"))) ; quasiquote `
    <|folded-io>
      <text|<graphics|<point|-5|-5>|<point|5|5>>>
    </folded-io>

    <\folded-io|Scheme] >
      (plot `(graphics (point ,(number-\<gtr\>string (+ 1 2))
      ,(number-\<gtr\>string (+ 1 3))) (point 0 0)))
    <|folded-io>
      <text|<with|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|<graphics|<point|3|4>|<point|0|0>>>>
    </folded-io>

    <\folded-io|Scheme] >
      (plot `(graphics (point "0" "0") (point "1" "1") (line (point "0" "0")
      (point "1" "1")))))
    <|folded-io>
      <text|<graphics|<point|0|0>|<point|1|1>|<line|<point|0|0>|<point|1|1>>>>
    </folded-io>

    <\folded-io|Scheme] >
      (plot `(cline (point 0 0) (point 3 0) (point 0 4)))
    <|folded-io>
      <text|<cline|<point|0|0>|<point|3|0>|<point|0|4>>>
    </folded-io>

    <\folded-io|Scheme] >
      (kbd-map ("d i a n var" (insert (utf8-\<gtr\>cork "\<#70B9\>"))))
    <|folded-io>
      ("d i a n tab")
    </folded-io>

    <\folded-io|Scheme] >
      (kbd-map ("h t var" (insert (utf8-\<gtr\>cork "\<#7ED8\>\<#56FE\>"))))
    <|folded-io>
      ("h t tab")
    </folded-io>

    <\folded-io|Scheme] >
      (kbd-map ("t u var" (insert (utf8-\<gtr\>cork "\<#56FE\>"))))
    <|folded-io>
      ("t u tab")
    </folded-io>

    <\folded-io|Scheme] >
      (kbd-map ("s j x var" (insert (utf8-\<gtr\>cork
      "\<#4E09\>\<#89D2\>\<#5F62\>"))))
    <|folded-io>
      ("s j x tab")
    </folded-io>

    <\folded-io|Scheme] >
      (kbd-map ("z s j x var" (insert (utf8-\<gtr\>cork
      "\<#6B63\>\<#4E09\>\<#89D2\>\<#5F62\>"))))
    <|folded-io>
      ("z s j x tab")
    </folded-io>

    <\folded-io|Scheme] >
      (define (scm2stm x)

      \ \ (define (x-\<gtr\>string x)

      \ \ \ \ (cond ((number? x) (number-\<gtr\>string x))

      \ \ \ \ \ \ \ \ \ \ ((list? x) (scm2stm x))

      \ \ \ \ \ \ \ \ \ \ (else x)))

      \ \ (if (eq? () x)

      \ \ \ \ \ \ ()

      \ \ \ \ \ \ (cons (x-\<gtr\>string (car x))

      \ \ \ \ \ \ \ \ \ \ \ \ (scm2stm (cdr x))))))
    <|folded-io>
      scm2stm
    </folded-io>

    <\unfolded-io|Scheme] >
      (define (\<#7ED8\>\<#56FE\> x)

      \ \ (stree-\<gtr\>tree (scm2stm x)))
    <|unfolded-io>
      \<#7ED8\>\<#56FE\>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (\<#70B9\> x y) `(point ,x ,y))
    <|unfolded-io>
      \<#70B9\>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (\<#56FE\> . objects)

      \ \ (cond ((nlist? objects) '(graphics "" ""))

      \ \ \ \ \ \ \ \ ((== objects '()) '(graphics "" ""))

      \ \ \ \ \ \ \ \ (else `(graphics "" ,@objects))))
    <|unfolded-io>
      \<#56FE\>
    </unfolded-io>

    <\folded-io|Scheme] >
      (\<#7ED8\>\<#56FE\> (\<#56FE\> (\<#70B9\> 1 1) (\<#70B9\> 2 2)))
    <|folded-io>
      <text|<graphics||<point|1|1>|<point|2|2>>>
    </folded-io>

    <\unfolded-io|Scheme] >
      (define (triangle x y z)

      \ \ `(cline ,x ,y ,z))
    <|unfolded-io>
      triangle
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (\<#4E09\>\<#89D2\>\<#5F62\> x y z) (triangle x y z))
    <|unfolded-io>
      \<#4E09\>\<#89D2\>\<#5F62\>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (\<#7ED8\>\<#56FE\> (\<#4E09\>\<#89D2\>\<#5F62\> (\<#70B9\> 0 0 )
      (\<#70B9\> 0 3) (\<#70B9\> 4 0)))
    <|unfolded-io>
      <text|<cline|<point|0|0>|<point|0|3>|<point|4|0>>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (car (cdr (cdr (\<#70B9\> 1 2)))) ; third
    <|unfolded-io>
      2
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (car (cdr (\<#70B9\> 1 2))) ; second
    <|unfolded-io>
      1
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (list-ref (list 1 2 3 4 5) 1)
    <|unfolded-io>
      2
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (\<#6B63\>\<#4E09\>\<#89D2\>\<#5F62\> A a)

      \ \ (\<#4E09\>\<#89D2\>\<#5F62\>

      \ \ \ \ \ \ \ A

      \ \ \ \ \ \ \ (\<#70B9\> (+ a (second A))

      \ \ \ \ \ \ \ \ \ \ \ (third A))

      \ \ \ \ \ \ \ (\<#70B9\> (+ (* 0.5 a) (second A))

      \ \ \ \ \ \ \ \ \ \ \ (+ (third A) (* (sqrt 0.75) a))))))
    <|unfolded-io>
      \<#6B63\>\<#4E09\>\<#89D2\>\<#5F62\>
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>

    <\unfolded-io|Scheme] >
      (scm2stm (\<#6B63\>\<#4E09\>\<#89D2\>\<#5F62\> (\<#70B9\> 0 0) 3))
    <|unfolded-io>
      (cline (point "0" "0") (point "3" "0") (point "1.5"
      "2.598076211353316"))
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (\<#7ED8\>\<#56FE\> (\<#6B63\>\<#4E09\>\<#89D2\>\<#5F62\> (\<#70B9\> 0
      0) 3))
    <|unfolded-io>
      <text|<cline|<point|0|0>|<point|3|0>|<point|1.5|2.598076211353316>>>
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <section*|\<#5BFB\>\<#627E\>\<#8D28\>\<#6570\>>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (define (square x) (* x x))
    <|unfolded-io>
      square
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (smallest-divisor n)

      \ \ (find-divisor n 2))
    <|unfolded-io>
      smallest-divisor
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (find-divisor n test-divisor)

      \ \ (cond ((\<gtr\> (square test-divisor) n) n)

      \ \ \ \ \ \ \ \ ((divides? test-divisor n) test-divisor)

      \ \ \ \ \ \ \ \ (else (find-divisor n (+ test-divisor 1)))))
    <|unfolded-io>
      find-divisor
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (divides? a b)

      \ \ (= (remainder b a) 0))
    <|unfolded-io>
      divides?
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (prime? n)

      \ \ (= n (smallest-divisor n)))
    <|unfolded-io>
      prime?
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (prime? 7)
    <|unfolded-io>
      #t
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  \<#58A8\>\<#8005\>\<#767E\>\<#79D1\>\<#FF1A\><slink|https://gitee.com/XmacsLabs/tmmlwiki/raw/main/\<#6570\>\<#5B66\>/\<#8D39\>\<#9A6C\>\<#5C0F\>\<#5B9A\>\<#7406\>.tm>
</body>

<\initial>
  <\collection>
    <associate|page-screen-margin|true>
    <associate|preamble|false>
    <associate|src-style|scheme>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?>>
    <associate|auto-2|<tuple|?|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|\<#7ED8\>\<#56FE\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>