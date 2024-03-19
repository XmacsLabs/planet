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
      (plot `(graphics (point -5 -5) (point 5 5))) ; quasiquote `
    <|folded-io>
      <text|<graphics|<point|-5|-5>|<point|5|5>>>
    </folded-io>

    <\folded-io|Scheme] >
      (plot `(graphics (point ,(+ 1 2) ,(+ 1 3)) (point 0 0)))
    <|folded-io>
      <text|<with|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|<graphics|<point|3|4>|<point|0|0>>>>
    </folded-io>

    <\folded-io|Scheme] >
      (plot `(graphics (point 0 0) (point 1 1) (line (point 0 0) (point 1
      1)))))
    <|folded-io>
      <text|<graphics|<point|0|0>|<point|1|1>|<line|<point|0|0>|<point|1|1>>>>
    </folded-io>

    <\unfolded-io|Scheme] >
      (plot `(cline (point 0 0) (point 3 0) (point 0 4)))
    <|unfolded-io>
      <text|<cline|<point|0|0>|<point|3|0>|<point|0|4>>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (kbd-map ("d i a n var" (insert (utf8-\<gtr\>cork "\<#70B9\>"))))
    <|unfolded-io>
      ("d i a n tab")
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (kbd-map ("h t var" (insert (utf8-\<gtr\>cork "\<#7ED8\>\<#56FE\>"))))
    <|unfolded-io>
      ("h t tab")
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (kbd-map ("t u var" (insert (utf8-\<gtr\>cork "\<#56FE\>"))))
    <|unfolded-io>
      ("t u tab")
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (kbd-map ("s j x var" (insert (utf8-\<gtr\>cork
      "\<#4E09\>\<#89D2\>\<#5F62\>"))))
    <|unfolded-io>
      ("s j x tab")
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (kbd-map ("z s j x var" (insert (utf8-\<gtr\>cork
      "\<#6B63\>\<#4E09\>\<#89D2\>\<#5F62\>"))))
    <|unfolded-io>
      ("z s j x tab")
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (\<#7ED8\>\<#56FE\> l) (stree-\<gtr\>tree l))
    <|unfolded-io>
      \<#7ED8\>\<#56FE\>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (\<#70B9\> x y) `(point ,x ,y))
    <|unfolded-io>
      \<#70B9\>
    </unfolded-io>

    <\folded-io|Scheme] >
      (define (\<#56FE\> . objects)

      \ \ (cond ((nlist? objects) '(graphics "" ""))

      \ \ \ \ \ \ \ \ ((== objects '()) '(graphics "" ""))

      \ \ \ \ \ \ \ \ (else `(graphics "" ,@objects))))
    <|folded-io>
      \<#56FE\>
    </folded-io>

    <\folded-io|Scheme] >
      (\<#7ED8\>\<#56FE\> (\<#56FE\> (\<#70B9\> 1 1) (\<#70B9\> 2 2)))
    <|folded-io>
      <text|<with|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-frame|<tuple|scale|3cm|<tuple|0.5gw|0.5gh>>|magnify|3.0|<graphics||<point|1|1>|<point|2|2>>>>
    </folded-io>

    <\unfolded-io|Scheme] >
      (define (triangle x y z)

      \ \ `(cline ,x ,y ,z))
    <|unfolded-io>
      \<#4E09\>\<#89D2\>\<#5F62\>
    </unfolded-io>

    <\input|Scheme] >
      (define (\<#4E09\>\<#89D2\>\<#5F62\> x y z) (triangle x y z))
    </input>

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
      (define (\<#6B63\>\<#4E09\>\<#89D2\>\<#5F62\> A \<#8FB9\>\<#957F\>)

      \ \ (\<#4E09\>\<#89D2\>\<#5F62\>

      \ \ \ \ \ \ \ A

      \ \ \ \ \ \ \ (\<#70B9\> (+ \<#8FB9\>\<#957F\> (second A)))

      \ \ \ \ \ \ \ \ \ \ \ (third A))

      \ \ \ \ \ \ \ (\<#70B9\> (+ (* 0.5 \<#8FB9\>\<#957F\>)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ (second A))

      \ \ \ \ \ \ \ \ \ \ \ (+ (third A) (* (sqrt 0.75)
      \<#8FB9\>\<#957F\>))))))
    <|unfolded-io>
      \<#6B63\>\<#4E09\>\<#89D2\>\<#5F62\>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (\<#7ED8\>\<#56FE\> (\<#6B63\>\<#4E09\>\<#89D2\>\<#5F62\> (\<#70B9\> 0
      0) 3))
    <|unfolded-io>
      <errput|(symbol "ç\\x82;¹"): not enough arguments: ((lambda (x y) ...)
      3)>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (point x y) `(point ,x ,y))
    <|unfolded-io>
      point
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (point 1 2) =\<gtr\> (point "1" "2")
    <|unfolded-io>
      (point 1 2)
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (number? 1)
    <|unfolded-io>
      #t
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (number-\<gtr\>string 1)
    <|unfolded-io>
      (number-\<gtr\>string 1)
    </unfolded-io>

    <\unfolded-io|Scheme] >
      \;
    <|unfolded-io>
      x-\<gtr\>string
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (draw x)

      \ \ (define (x-\<gtr\>string x)

      \ \ \ \ \ \ (if (number? x)

      \ \ \ \ \ \ \ \ (number-\<gtr\>string x)

      \ \ \ \ \ \ \ \ x))

      \ \ (define (draw-inner x)

      \ \ \ \ (if (eq? () x) ()

      \ \ \ \ \ \ (cons (x-\<gtr\>string (car x))

      \ \ \ \ \ \ \ \ \ \ \ \ (draw-inner (cdr x)))))

      \ \ (stree-\<gtr\>tree (draw-inner x)))
    <|unfolded-io>
      draw
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (draw `(point 1 1))
    <|unfolded-io>
      <text|<point|1|1>>
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>
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