<TeXmacs|2.1.2>

<style|<tuple|seminar|comment|chinese>>

<\body>
  <\hide-preamble>
    \;

    <assign|x_0|<macro|<math|x<rsub|0>>>>

    <assign|x_1|<math|x<rsub|1>>>

    <assign|dlink|<macro|name|<hlink|[<arg|name>]|<merge|<arg|name>|.tm>>>>
  </hide-preamble>

  <doc-data|<doc-title|Seminar X202309>|<doc-author|<author-data|<author-name|Da>>>>

  <section|Welcome>

  <\itemize>
    <item>\<#53F6\>\<#7530\>\<#946B\>\<#FF1A\>\<#4EE3\>\<#7801\>\<#7F3A\>\<#5C11\>\<#6CE8\>\<#91CA\>

    <item>\<#5F20\>\<#4F73\>\<#FF1A\>\<#9ED8\>\<#8BA4\>\<#5FEB\>\<#6377\>\<#952E\>\<#7ED1\>\<#5B9A\>\<#5230\>\<#5BF9\>\<#5E94\>\<#5E73\>\<#53F0\>
    1.2.0

    <item>\<#7CD6\>\<#8C46\>\<#513F\>\<#FF1A\>line break
  </itemize>

  <section|Topic: Scheme and Plotting>

  <subsection|<TeXmacs> graphics in Scheme>

  <\itemize>
    <item><hlink|Modular graphics with Scheme|https://texmacs.github.io/notes/docs/modular-scheme-graphics.html>

    <item><hlink|Composing TeXmacs graphics with
    Scheme|https://texmacs.github.io/notes/docs/scheme-graphics.html>

    <item><hlink|Embedding graphics composed with Scheme into
    documents|https://texmacs.github.io/notes/docs/scheme-graphics-embedding.html>
  </itemize>

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (define (plot l) (stree-\<gtr\>tree l))
    <|unfolded-io>
      plot
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (plot '(frac 1 2))
    <|unfolded-io>
      <text|<frac|1|2>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (point x y)

      \ \ `(point ,(number-\<gtr\>string x) ,(number-\<gtr\>string y)))
    <|unfolded-io>
      point
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (point 1 1)
    <|unfolded-io>
      (point "1" "1")
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (plot `(point "1" "1"))
    <|unfolded-io>
      <text|<point|1|1>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (plot (point 1 1))
    <|unfolded-io>
      <text|<point|1|1>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (point.x point)

      \ \ (string-\<gtr\>number (list-ref point 1)))
    <|unfolded-io>
      point.x
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (point.y point)

      \ \ (string-\<gtr\>number (list-ref point 2)))
    <|unfolded-io>
      point.y
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (point.y (point 1 2))
    <|unfolded-io>
      2
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (line . points)

      \ \ (cond ((nlist? points) `())

      \ \ \ \ \ \ \ \ ((== points '()) `())

      \ \ \ \ \ \ \ \ (else `(line ,@points))))
    <|unfolded-io>
      line
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (plot (line (point 0 0) (point 1 1)))
    <|unfolded-io>
      <text|<line|<point|0|0>|<point|1|1>>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (rectangle leftdown rightup)

      \ \ (let ((leftup (point (point.x leftdown) (point.y rightup)))

      \ \ \ \ \ \ \ \ (rightdown (point (point.x rightup) (point.y
      leftdown))))

      \ \ \ \ `(cline ,leftdown ,leftup ,rightup ,rightdown)))
    <|unfolded-io>
      rectangle
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (define (circle center radius)

      \ \ (let ((p1 (point (- (point.x center) radius) (point.y center)))

      \ \ \ \ \ \ \ \ (p2 (point (point.x center) (+ (point.y center)
      radius)))

      \ \ \ \ \ \ \ \ (p3 (point (+ (point.x center) radius) (point.y
      center))))

      \ \ \ \ `(carc ,p1 ,p2 ,p3)))
    <|unfolded-io>
      circle
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (plot (circle (point 0 0) 1))
    <|unfolded-io>
      <text|<carc|<point|-1|0>|<point|0|1>|<point|1|0>>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (circle (point 0 0) 1)
    <|unfolded-io>
      (carc (point "-1" "0") (point "0" "1") (point "1" "0"))
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <subsection|Foldable Scheme Session>

  <tree|frac|1|2>

  <\script-input|scheme|default>
    (begin

    \ \ (define (plot g) (stree-\<gtr\>tree g))

    \ \ (plot '(frac 1 2)))
  </script-input|<text|<frac|1|2>>>

  <tree|carc|<tree|point|-1|0>|<tree|point|0|1>|<tree|point|1|0>>

  <\script-input|scheme|default>
    (begin

    \ \ (define (plot g) (stree-\<gtr\>tree g))

    \ \ 

    \ \ (define (point x y)

    \ \ \ \ `(point ,(number-\<gtr\>string x) ,(number-\<gtr\>string y)))

    \ \ (define (point.x point)

    \ \ \ \ (string-\<gtr\>number (list-ref point 1)))

    \ \ (define (point.y point)

    \ \ \ \ (string-\<gtr\>number (list-ref point 2)))

    \ \ 

    \ \ (define (circle center radius)

    \ \ \ \ (let ((p1 (point (- (point.x center) radius) (point.y center)))

    \ \ \ \ \ \ \ \ (p2 (point (point.x center) (+ (point.y center) radius)))

    \ \ \ \ \ \ \ \ (p3 (point (+ (point.x center) radius) (point.y
    center))))

    \ \ \ \ \ \ `(graphics (carc ,p1 ,p2 ,p3))))

    \ \ 

    \ \ (plot (circle (point 0 0) 1)))
  </script-input|<text|<with|gr-mode|<tuple|group-edit|edit-props>|gr-arrow-end|\<gtr\>|<graphics|<carc|<point|-1|0>|<point|0|1>|<point|1|0>>|<line|<point|-6.1543|0.753175>|<point|-2.699877629316047|2.0231842836354015>>|<with|arrow-end|\<gtr\>|<line|<point|-5.15523|-0.144298>|<point|-2.3273415795740178|1.0071768752480488>>>>>>>

  \;

  <section|Discussion>

  <\itemize>
    <item>Eukleides syntax to stree

    <item>Use ChatGPT to generate the Eukleides syntax\ 
  </itemize>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|info-flag|detailed>
    <associate|page-medium|papyrus>
    <associate|preamble|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|2.1|2>>
    <associate|auto-4|<tuple|2.2|2>>
    <associate|auto-5|<tuple|3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Welcome>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Topic:
      Scheme and Plotting> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>T<rsub|<space|-0.4spc><move|<resize|<with|math-level|<quote|0>|E>||||0.5fn>|0fn|-0.1fn>><space|-0.4spc>X<rsub|<space|-0.4spc><move|<resize|M<space|-0.2spc>A<space|-0.4spc>CS||||0.5fn>|0fn|-0.1fn>>
      graphics in Scheme <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Foldable Scheme Session
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Discussion>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>