<TeXmacs|2.1.2>

<style|<tuple|beamer|no-page-numbers|chinese|python>>

<\body>
  <\hide-preamble>
    <assign|dfn|<macro|x|<strong|<arg|x>>>>
  </hide-preamble>

  <\slideshow>
    <\slide>
      \;

      \;

      \;

      \;

      <doc-data|<doc-title|\<#96F6\>\<#57FA\>\<#7840\>SICP
      07>|<doc-author|<author-data|<author-name|>>>|<doc-author|<author-data|<author-name|\<#6C88\>\<#6D6A\>\<#718A\>\<#732B\>\<#513F\>>>>|<doc-author|<author-data|<author-name|MathAgape>>>|<doc-subtitle|\<#7528\>\<#9AD8\>\<#9636\>\<#51FD\>\<#6570\>\<#505A\>\<#62BD\>\<#8C61\>>>
    </slide>

    <\slide>
      <tit|\<#96F6\>\<#57FA\>\<#7840\>SICP\<#FF1A\>\<#7B2C\>7\<#8BFE\>>

      <\wide-tabular>
        <tformat|<cwith|2|-1|1|-1|cell-height|40px>|<cwith|2|-1|1|-1|cell-vmode|exact>|<table|<row|<\cell>
          <very-large|<\sectional-normal-bold>
            \<#7528\>\<#9AD8\>\<#9636\>\<#51FD\>\<#6570\>\<#505A\>\<#62BD\>\<#8C61\>
          </sectional-normal-bold>>
        </cell>|<\cell>
          <\very-large>
            <strong|Formulating Abstractions with Higher-Order Procedures>
          </very-large>
        </cell>>|<row|<\cell>
          \<#5728\>\<#53C2\>\<#6570\>\<#4E2D\>\<#4F20\>\<#9012\>\<#51FD\>\<#6570\>\<#503C\>
        </cell>|<\cell>
          Procedures as Arguments
        </cell>>|<row|<\cell>
          \<#7528\><scm|lambda>\<#6784\>\<#9020\>\<#533F\>\<#540D\>\<#51FD\>\<#6570\>
        </cell>|<\cell>
          Constructing Procedures Using <scm|lambda>
        </cell>>|<row|<\cell>
          \<#51FD\>\<#6570\>\<#4F5C\>\<#4E3A\>\<#4E00\>\<#822C\>\<#6027\>\<#7684\>\<#65B9\>\<#6CD5\>
        </cell>|<\cell>
          Procedures as General Methods
        </cell>>|<row|<\cell>
          \<#5728\>\<#51FD\>\<#6570\>\<#4E2D\>\<#8FD4\>\<#56DE\>\<#51FD\>\<#6570\>\<#503C\>
        </cell>|<\cell>
          Procedures as Returned Values
        </cell>>>>
      </wide-tabular>

      \;

      <strong|\<#7F16\>\<#7A0B\>\<#7684\>\<#57FA\>\<#672C\>\<#539F\>\<#7406\>\<#662F\>\<#5BF9\>\<#6570\>\<#636E\>\<#548C\>\<#8BA1\>\<#7B97\>\<#7684\>\<#7EC4\>\<#5408\>\<#548C\>\<#62BD\>\<#8C61\>>
    </slide>

    <\slide>
      <tit|\<#5728\>\<#53C2\>\<#6570\>\<#4E2D\>\<#4F20\>\<#9012\>\<#51FD\>\<#6570\>\<#503C\>>

      <\with|par-columns|2>
        <\equation*>
          <big|sum><rsub|i=a><rsup|b>f<around*|(|i|)>=f<around*|(|a|)>+\<cdots\>+f<around*|(|b|)>
        </equation*>

        <\equation*>
          <big|sum><rsup|100><rsub|i=1>i=1+2+\<cdots\>+100=5050<rsup|>
        </equation*>

        <\equation*>
          lim<rsub|n\<rightarrow\>+\<infty\>><big|sum><rsup|n><rsub|i=1><frac|1|n*<around*|(|n+2|)>>=<frac|\<pi\>|8>
        </equation*>

        <\session|scheme|default>
          <\folded-io|Scheme] >
            (define (sum f a next b)

            \ \ (if (\<gtr\> a b)

            \ \ \ \ \ \ 0

            \ \ \ \ \ \ (+ (f a)

            \ \ \ \ \ \ \ \ \ (sum f (next a) next b))))
          <|folded-io>
            sum
          </folded-io>

          <\folded-io|Scheme] >
            (define (inc n) (+ n 1))
          <|folded-io>
            inc
          </folded-io>

          <\folded-io|Scheme] >
            (define (same x) x)
          <|folded-io>
            same
          </folded-io>

          <\folded-io|Scheme] >
            \;
          <|folded-io>
            5050
          </folded-io>
        </session>
      </with>

      <\session|scheme|default>
        <\unfolded-io|Scheme] >
          (sum <with|color|red|same> 1 <with|color|red|inc> 100)
        <|unfolded-io>
          5050
        </unfolded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>

      \;
    </slide>

    <\slide>
      <tit|\<#7528\><scm|lambda>\<#6784\>\<#9020\>\<#533F\>\<#540D\>\<#51FD\>\<#6570\>>

      <\equation*>
        <big|sum><rsup|10><rsub|i=1>i<rsup|2>=1<rsup|2>+2<rsup|2>+\<cdots\>+10<rsup|2><rsup|>
      </equation*>

      \;

      <\session|scheme|default>
        <\folded-io|Scheme] >
          (sum (lambda (x) (* x x)) 1 <with|color|red|inc> 10)
        <|folded-io>
          385
        </folded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>

      \;

      <\equation*>
        1<rsup|2>+3<rsup|2>+5<rsup|2>+7<rsup|2>+9<rsup|2>
      </equation*>

      <\session|scheme|default>
        <\folded-io|Scheme] >
          (sum (lambda (x) (* x x)) 1 (lambda (x) (+ x 2)) 10)
        <|folded-io>
          165
        </folded-io>

        <\unfolded-io|Scheme] >
          (sum (lambda (x) (* x x)) 2 (lambda (x) (+ x 2)) 10)
        <|unfolded-io>
          220
        </unfolded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>
    </slide>

    <\slide>
      <tit|\<#7528\><scm|let>\<#521B\>\<#5EFA\>\<#5C40\>\<#90E8\>\<#53D8\>\<#91CF\>>

      <\session|scheme|default>
        <\unfolded-io|Scheme] >
          (define (fib-once pair)

          \ \ (let ((a (first pair))

          \ \ \ \ \ \ \ \ (b (second pair)))

          \ \ \ (list b (+ a b))))
        <|unfolded-io>
          fib-once
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (fib-once (fib-once (list 1 1)))
        <|unfolded-io>
          (2 3)
        </unfolded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>

      \;
    </slide>

    <\slide>
      <tit|\<#6848\>\<#4F8B\>\<#5206\>\<#6790\>\<#FF1A\>\<#533A\>\<#95F4\>\<#6298\>\<#534A\>\<#6CD5\>>

      <\gr-screen>
        <with|gr-mode|<tuple|edit|line>|gr-frame|<tuple|scale|1cm|<tuple|-0.119993gw|1gh>>|gr-geometry|<tuple|geometry|1gpar|1gpag|axis>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-color|magenta|<graphics||<spline|<point|4.4|-5.2>|<point|6.6|-4.0>|<point|7.8|-5.0>|<point|11.6|-1.0>|<point|12.4|0.0>>|<with|arrow-end|\<gtr\>|<line|<point|1|-3>|<point|13.3|-3.0>>>|<point|7|-4.00193>|<point|12|-0.521792>|<point|9.5|-3.4>|<math-at|A|<point|6.7|-4.4>>|<math-at|B|<point|12.4|-0.5>>|<math-at|F<rsub|1>|<point|9.5|-4>>|<point|10.7|-2.04495>|<math-at|F<rsub|2>|<point|11|-2.2>>|<point|10.2|-2.61703>|<math-at|F<rsub|3>|<point|9.8|-2.35403>>|<with|color|red|<line|<point|6.99434|-4>|<point|7.0|-3.0>>>|<with|color|red|<line|<point|12|-0.521792>|<point|12.0|-3.0>>>|<with|color|magenta|<line|<point|9.5|-3.4>|<point|9.5|-3.0>>>|<with|color|magenta|<line|<point|10.7|-2.04495>|<point|10.7|-3.0>>>>>
      </gr-screen>
    </slide>

    <\slide>
      <tit|\<#5B9E\>\<#73B0\>\<#FF1A\>\<#4E8C\>\<#5206\>\<#67E5\>\<#627E\>\<#6CD5\>>

      <\session|scheme|default>
        <\unfolded-io|Scheme] >
          (define (average x y) (/ (+ x y) 2))
        <|unfolded-io>
          average
        </unfolded-io>

        <\unfolded-io|Scheme] >
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
      </session>
    </slide>

    <\slide>
      <tit|\<#5B9E\>\<#73B0\>\<#FF1A\>\<#533A\>\<#95F4\>\<#6298\>\<#534A\>\<#6CD5\>>

      <\session|scheme|default>
        <\folded-io|Scheme] >
          (define (close-enough? x y)

          \ \ (\<less\> (abs (- x y)) 0.001))
        <|folded-io>
          close-enough?
        </folded-io>

        <\folded-io|Scheme] >
          (define (half-interval-method f a b)

          \ \ (let ((a-value (f a))

          \ \ \ \ \ \ \ \ (b-value (f b)))

          \ \ \ \ (cond ((and (negative? a-value) (positive? b-value))

          \ \ \ \ \ \ \ \ \ \ \ (search f a b))

          \ \ \ \ \ \ \ \ \ \ ((and (negative? b-value) (positive? a-value))

          \ \ \ \ \ \ \ \ \ \ \ (search f b a))

          \ \ \ \ \ \ \ \ \ \ (else

          \ \ \ \ \ \ \ \ \ \ \ (error "Values are not of opposite sign" a
          b)))))
        <|folded-io>
          half-interval-method
        </folded-io>

        <\unfolded-io|Scheme] >
          (half-interval-method sin 2.0 4.0)
        <|unfolded-io>
          3.14111328125
        </unfolded-io>
      </session>
    </slide>

    <\slide>
      <tit|\<#6848\>\<#4F8B\>\<#5206\>\<#6790\>\<#FF1A\>\<#5BFB\>\<#627E\>\<#4E0D\>\<#52A8\>\<#70B9\>>

      <\equation*>
        f<around*|(|x|)>,f<around*|(|f<around*|(|x|)>|)>,f<around*|(|f<around*|(|f<around*|(|x|)>|)>|)>,\<ldots\>
      </equation*>

      <\session|scheme|default>
        <\folded-io|Scheme] >
          (define tolerance 0.00001)
        <|folded-io>
          0.00001
        </folded-io>

        <\folded-io|Scheme] >
          (define (fixed-point f first-guess)

          \ \ (define (close-enough? v1 v2)

          \ \ \ \ (\<less\> (abs (- v1 v2)) tolerance))

          \ \ (define (try guess)

          \ \ \ \ (let ((next (f guess)))

          \ \ \ \ \ \ (if (close-enough? guess next)

          \ \ \ \ \ \ \ \ \ \ next

          \ \ \ \ \ \ \ \ \ \ (try next))))

          \ \ (try first-guess))
        <|folded-io>
          fixed-point
        </folded-io>

        <\folded-io|Scheme] >
          (fixed-point cos 1.0)
        <|folded-io>
          0.7390822985224024
        </folded-io>

        <\folded-io|Scheme] >
          (fixed-point (lambda (y) (+ (sin y) (cos y))) 1.0)
        <|folded-io>
          1.2587315962971173
        </folded-io>
      </session>
    </slide>

    <\slide>
      <tit|\<#603B\>\<#7ED3\>>

      \<#4EE3\>\<#7801\>\<#5373\>\<#6570\>\<#636E\>\<#FF0C\>\<#6570\>\<#636E\>\<#5373\>\<#4EE3\>\<#7801\>\<#3002\>

      \<#51FD\>\<#6570\>\<#503C\>\<#53EF\>\<#4EE5\>\<#50CF\>\<#6570\>\<#636E\>\<#4E00\>\<#6837\>\<#FF0C\>\<#4F5C\>\<#4E3A\>\<#53C2\>\<#6570\>\<#4F20\>\<#5165\>\<#51FD\>\<#6570\>\<#FF0C\>\<#4F5C\>\<#4E3A\>\<#8FD4\>\<#56DE\>\<#503C\>\<#4ECE\>\<#51FD\>\<#6570\>\<#4E2D\>\<#4F20\>\<#51FA\>\<#3002\>

      <scm|define>\<#FF0C\><scm|lambda>\<#FF0C\><scm|let>

      <\scm-code>
        (define (<with|color|red|\<langle\>\<#51FD\>\<#6570\>\<#540D\>\<rangle\>
        ><with|color|brown|\<langle\>\<#5F62\>\<#5F0F\>\<#53C2\>\<#6570\>\<#5217\>\<#8868\>\<rangle\>>)
        <with|color|dark cyan|\<langle\>\<#4E3B\>\<#4F53\>\<rangle\>>)

        (lambda (<with|color|brown|\<langle\>\<#5F62\>\<#5F0F\>\<#53C2\>\<#6570\>\<#5217\>\<#8868\>\<rangle\>>)
        <with|color|dark cyan|\<langle\>\<#4E3B\>\<#4F53\>\<rangle\>>)

        \;

        (let ((<with|color|red|\<less\>\<#53D8\>\<#91CF\>1\<gtr\>>
        <with|color|dark cyan|\<less\>\<#8868\>\<#8FBE\>\<#5F0F\>1\<gtr\>>)

        \ \ \ \ \ \ (<with|color|red|\<less\>\<#53D8\>\<#91CF\>2\<gtr\>>
        <with|color|dark cyan|\<less\>\<#8868\>\<#8FBE\>\<#5F0F\>2\<gtr\>>)

        \ \ \ \ \ \ ...

        \ \ \ \ \ \ (<with|color|red|\<less\>\<#53D8\>\<#91CF\>n\<gtr\>>
        <with|color|dark cyan|\<less\>\<#8868\>\<#8FBE\>\<#5F0F\>n\<gtr\>>))

        \ \ \ <with|color|dark cyan|\<langle\>\<#4E3B\>\<#4F53\>\<rangle\>>)
      </scm-code>
    </slide>
  </slideshow>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
    <associate|marked-color|pastel yellow>
    <associate|page-border|attached>
    <associate|page-medium|paper>
    <associate|page-offset|1>
    <associate|page-packet|2>
    <associate|page-screen-margin|false>
    <associate|par-columns|1>
    <associate|preamble|false>
  </collection>
</initial>