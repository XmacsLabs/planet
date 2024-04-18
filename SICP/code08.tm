<TeXmacs|2.1.2>

<style|<tuple|generic|no-page-numbers|chinese>>

<\body>
  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (define (make-rat n d) (cons n d))
    <|unfolded-io>
      make-rat
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (numer x) (car x))
    <|unfolded-io>
      numer
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (denom x) (cdr x))
    <|unfolded-io>
      denom
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (\<#5206\>\<#5F0F\> n d) (make-rat n d))
    <|unfolded-io>
      \<#5206\>\<#5F0F\>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (\<#5206\>\<#5B50\> x) (numer x))
    <|unfolded-io>
      \<#5206\>\<#5B50\>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (\<#5206\>\<#6BCD\> x) (denom x))
    <|unfolded-io>
      \<#5206\>\<#6BCD\>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (kbd-map ("f z var" (insert (utf8-\<gtr\>cork "\<#5206\>\<#5B50\>"))))
    <|unfolded-io>
      ("f z tab")
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (kbd-map ("f s var" (insert (utf8-\<gtr\>cork "\<#5206\>\<#5F0F\>"))))
    <|unfolded-io>
      ("f s tab")
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (kbd-map ("f m var" (insert (utf8-\<gtr\>cork "\<#5206\>\<#6BCD\>"))))
    <|unfolded-io>
      ("f m tab")
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      <\with|prog-scripts|scheme>
        (define (add-rat x y)

        \ \ (make-rat (+ (* (numer x) (denom y))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (* (numer y) (denom x)))

        \ \ \ \ \ \ \ \ \ \ \ \ (* (denom x) (denom y))))
      </with>
    <|unfolded-io>
      add-rat
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (sub-rat x y)

      \ \ (make-rat (- (* (numer x) (denom y))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (* (numer y) (denom x)))

      \ \ \ \ \ \ \ \ \ \ \ \ (* (denom x) (denom y))))
    <|unfolded-io>
      sub-rat
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (mul-rat x y)

      \ \ (make-rat (* (numer x) (numer y))

      \ \ \ \ \ \ \ \ \ \ \ \ (* (denom x) (denom y))))
    <|unfolded-io>
      mul-rat
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (div-rat x y)

      \ \ (make-rat (* (numer x) (denom y))

      \ \ \ \ \ \ \ \ \ \ \ \ (* (denom x) (numer y))))
    <|unfolded-io>
      div-rat
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (equal-rat? x y)

      \ \ (= (* (numer x) (denom y))

      \ \ \ \ \ (* (numer y) (denom x))))
    <|unfolded-io>
      equal-rat?
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (kbd-map ("f s + var" (insert (utf8-\<gtr\>cork
      "\<#5206\>\<#5F0F\>\<#52A0\>"))))
    <|unfolded-io>
      ("f s + tab")
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (kbd-map ("f s - var" (insert (utf8-\<gtr\>cork
      "\<#5206\>\<#5F0F\>\<#51CF\>"))))
    <|unfolded-io>
      ("f s - tab")
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (kbd-map ("f s * var" (insert (utf8-\<gtr\>cork
      "\<#5206\>\<#5F0F\>\<#4E58\>"))))
    <|unfolded-io>
      ("f s * tab")
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (kbd-map ("f s / var" (insert (utf8-\<gtr\>cork
      "\<#5206\>\<#5F0F\>\<#9664\>"))))
    <|unfolded-io>
      ("f s / tab")
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (kbd-map ("f s x var" (insert (utf8-\<gtr\>cork
      "\<#5206\>\<#5F0F\>\<#663E\>"))))
    <|unfolded-io>
      ("f s x tab")
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (\<#5206\>\<#5F0F\>\<#52A0\> x y) (add-rat x y))
    <|unfolded-io>
      \<#5206\>\<#5F0F\>\<#52A0\>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (\<#5206\>\<#5F0F\>\<#51CF\> x y) (sub-rat x y))
    <|unfolded-io>
      \<#5206\>\<#5F0F\>\<#51CF\>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (\<#5206\>\<#5F0F\>\<#4E58\> x y) (mul-rat x y))
    <|unfolded-io>
      \<#5206\>\<#5F0F\>\<#4E58\>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (\<#5206\>\<#5F0F\>\<#9664\> x y) (div-rat x y))
    <|unfolded-io>
      \<#5206\>\<#5F0F\>\<#9664\>
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (define x (cons 1 2))
    <|unfolded-io>
      (1 . 2)
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (car x)
    <|unfolded-io>
      1
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (cdr x)
    <|unfolded-io>
      2
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (define x (cons 1 2))
    <|unfolded-io>
      (1 . 2)
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define y (cons 3 4))
    <|unfolded-io>
      (3 . 4)
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define z (cons x y))
    <|unfolded-io>
      ((1 . 2) 3 . 4)
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (car (car z))
    <|unfolded-io>
      1
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  \;

  <\session|scheme|default>
    <\input|Scheme] >
      (define (print-rat x)

      \ \ (newline)

      \ \ (display (numer x))

      \ \ (display "/")

      \ \ (display (denom x)))
    </input>

    <\unfolded-io|Scheme] >
      (define (\<#5206\>\<#5F0F\>\<#663E\> x)

      \ \ (stree-\<gtr\>tree `(frac ,(\<#5206\>\<#5B50\> x)
      ,(\<#5206\>\<#6BCD\> x))))
    <|unfolded-io>
      \<#5206\>\<#5F0F\>\<#663E\>
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (define \<#4E8C\>\<#5206\>\<#4E4B\>\<#4E00\> (\<#5206\>\<#5F0F\> 1 2))
    <|unfolded-io>
      (1 . 2)
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define \<#4E09\>\<#5206\>\<#4E4B\>\<#4E00\> (\<#5206\>\<#5F0F\> 1 3))
    <|unfolded-io>
      (1 . 3)
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (\<#5206\>\<#5F0F\>\<#663E\> \<#4E09\>\<#5206\>\<#4E4B\>\<#4E00\>)
    <|unfolded-io>
      <text|<frac|1|3>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (\<#5206\>\<#5F0F\>\<#663E\> \<#4E8C\>\<#5206\>\<#4E4B\>\<#4E00\>)
    <|unfolded-io>
      <text|<frac|1|2>>
    </unfolded-io>

    <\folded-io|Scheme] >
      (\<#5206\>\<#5F0F\>\<#663E\> (\<#5206\>\<#5F0F\>\<#52A0\>
      \<#4E8C\>\<#5206\>\<#4E4B\>\<#4E00\>
      \<#4E09\>\<#5206\>\<#4E4B\>\<#4E00\>))
    <|folded-io>
      <text|<frac|5|6>>
    </folded-io>

    <\unfolded-io|Scheme] >
      (\<#5206\>\<#5F0F\>\<#663E\> (\<#5206\>\<#5F0F\>\<#51CF\>
      \<#4E8C\>\<#5206\>\<#4E4B\>\<#4E00\>
      \<#4E09\>\<#5206\>\<#4E4B\>\<#4E00\>))
    <|unfolded-io>
      <text|<frac|1|6>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (\<#5206\>\<#5F0F\>\<#663E\> (\<#5206\>\<#5F0F\>\<#4E58\>
      \<#4E8C\>\<#5206\>\<#4E4B\>\<#4E00\>
      \<#4E09\>\<#5206\>\<#4E4B\>\<#4E00\>))
    <|unfolded-io>
      <text|<frac|1|6>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (\<#5206\>\<#5F0F\>\<#663E\> (\<#5206\>\<#5F0F\>\<#9664\>
      \<#4E8C\>\<#5206\>\<#4E4B\>\<#4E00\>
      \<#4E09\>\<#5206\>\<#4E4B\>\<#4E00\>))
    <|unfolded-io>
      <text|<frac|3|2>>
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <\session|scheme|default>
    <\input>
      Scheme]\ 
    <|input>
      (define (make-rat n d)

      \ \ (let ((g (gcd n d)))

      \ \ \ \ (cons (/ n g) (/ d g))))
    </input>
  </session>

  <\session|scheme|default>
    <\input|Scheme] >
      (print-rat (add-rat one-third one-third))
    </input>

    <\input|Scheme] >
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
    <associate|auto-1|<tuple|?|?|code07.tm>>
    <associate|auto-2|<tuple|?|?|code07.tm>>
    <associate|auto-3|<tuple|?|?|code07.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|1tab>|2.1.1 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|1tab>|2.1.2 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|2.1.3 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>