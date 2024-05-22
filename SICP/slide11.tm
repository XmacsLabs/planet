<TeXmacs|2.1.2>

<style|<tuple|beamer|no-page-numbers|chinese|python|s7|maxima>>

<\body>
  <\hide-preamble>
    <assign|dfn|<macro|x|<strong|<arg|x>>>>
  </hide-preamble>

  <\slideshow>
    <\slide>
      \;

      \;

      \;

      <doc-data|<doc-title|\<#96F6\>\<#57FA\>\<#7840\>SICP
      11>|<doc-author|<author-data|<author-name|>>>|<doc-author|<author-data|<author-name|\<#6C88\>\<#6D6A\>\<#718A\>\<#732B\>\<#513F\>>>>|<doc-author|<author-data|<author-name|MathAgape>|<\author-affiliation>
        \;

        \;

        \;

        \;

        \;

        \;

        \;
      </author-affiliation>>>|<doc-subtitle|\<#7B26\>\<#53F7\>\<#6570\>\<#636E\>\<#548C\>\<#7B26\>\<#53F7\>\<#6C42\>\<#5BFC\>>>
    </slide>

    <\slide>
      <tit|\<#96F6\>\<#57FA\>\<#7840\>SICP\<#FF1A\>\<#7B2C\>11\<#8BFE\>>

      <\wide-tabular>
        <tformat|<cwith|2|-1|1|-1|cell-height|40px>|<cwith|2|-1|1|-1|cell-vmode|exact>|<table|<row|<\cell>
          <\large>
            <strong|\<#6570\>\<#636E\>\<#62BD\>\<#8C61\>\<#5BFC\>\<#5F15\>>
          </large>
        </cell>|<\cell>
          <\large>
            <strong|Introduction to Data Abstraction>
          </large>
        </cell>>|<row|<\cell>
          \;
        </cell>|<\cell>
          \;
        </cell>>|<row|<\cell>
          <large|<strong|\<#5C42\>\<#6B21\>\<#6027\>\<#6570\>\<#636E\>\<#548C\>\<#95ED\>\<#5305\>\<#6027\>\<#8D28\>>>
        </cell>|<\cell>
          <large|<strong|Hierarchical Data and the Closure Property>>
        </cell>>|<row|<\cell>
          \;
        </cell>|<\cell>
          \;
        </cell>>|<row|<\cell>
          <large|<strong|\<#7B26\>\<#53F7\>\<#6570\>\<#636E\>>>
        </cell>|<\cell>
          <large|<strong|Symbolic Data>>
        </cell>>|<row|<\cell>
          \<#5F15\>\<#53F7\>
        </cell>|<\cell>
          Quotation
        </cell>>|<row|<\cell>
          \<#5B9E\>\<#4F8B\>\<#FF1A\>\<#7B26\>\<#53F7\>\<#6C42\>\<#5BFC\>
        </cell>|<\cell>
          Example: Symbolic Differentiation
        </cell>>>>
      </wide-tabular>

      \;

      \<#56DE\>\<#987E\>\<#FF1A\>\<#901A\>\<#8FC7\>\<#5B9A\>\<#4E49\>\<#4E00\>\<#7EC4\><strong|\<#903B\>\<#8F91\>\<#81EA\>\<#6D3D\>>\<#7684\>\<#9009\>\<#62E9\>\<#51FD\>\<#6570\>\<#548C\>\<#6784\>\<#9020\>\<#51FD\>\<#6570\>\<#FF0C\>\<#5B9A\>\<#4E49\>\<#6570\>\<#636E\>\<#3002\>

      \;
    </slide>

    <\slide>
      <tit|\<#56DE\>\<#987E\>\<#FF1A\>\<#8BED\>\<#6CD5\>\<#7CD6\>\<#8863\>>

      \<#7279\>\<#6B8A\>\<#5F62\>\<#5F0F\>\<#4E0D\>\<#7B26\>\<#5408\>\<#5E94\>\<#7528\>\<#5E8F\>\<#6C42\>\<#503C\>\<#FF0C\>\<#6BD4\>\<#5982\><scm|define>\<#FF0C\><scm|cond>\<#FF0C\><scm|if>\<#FF08\>\<#96F6\>\<#57FA\>\<#7840\>SICP\<#7B2C\>\<#4E00\>\<#8BB2\>\<#7684\>\<#5185\>\<#5BB9\>\<#FF09\>

      <\session|s7|default>
        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define (myabs x) (if (\<gtr\> x 0) x (- x)))
        <|folded-io>
          myabs
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (myabs -1)
        <|folded-io>
          1
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          ((lambda (x) (if (\<gtr\> x 0) x (- x))) -1)
        <|folded-io>
          1
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          -1
        <|folded-io>
          -1
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (- 1)
        <|folded-io>
          -1
        </folded-io>

        <\input>
          \<gtr\>\ 
        <|input>
          (list? )
        </input>
      </session>

      \<#5373\>\<#4F7F\>\<#6211\>\<#4EEC\>\<#7684\>Scheme\<#89E3\>\<#91CA\>\<#5668\>\<#4E0D\>\<#652F\>\<#6301\><scm|-1>\<#FF0C\><scm|define>\<#FF0C\>\<#6211\>\<#4EEC\>\<#4E5F\>\<#53EF\>\<#4EE5\>\<#4F7F\>\<#7528\>\<#66F4\>\<#52A0\>\<#7E41\>\<#7410\>\<#7684\>\<#8BED\>\<#6CD5\>\<#6765\>\<#8868\>\<#793A\>\<#540C\>\<#6837\>\<#7684\>\<#542B\>\<#4E49\>\<#3002\>\<#8BED\>\<#6CD5\>\<#7CD6\>\<#8863\>\<#5E76\>\<#6CA1\>\<#6709\>\<#7ED9\>\<#6211\>\<#4EEC\>\<#5E26\>\<#6765\>\<#65B0\>\<#7684\>\<#80FD\>\<#529B\>\<#FF0C\>\<#4F46\>\<#80FD\>\<#5E2E\>\<#52A9\>\<#6211\>\<#4EEC\>\<#7B80\>\<#5316\>\<#4EE3\>\<#7801\>\<#3002\>

      \<#5229\>\<#7528\>\<#5B8F\>\<#7F16\>\<#7A0B\>\<#7684\>\<#7279\>\<#6027\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#53EF\>\<#4EE5\>\<#81EA\>\<#5B9A\>\<#4E49\>\<#8BED\>\<#6CD5\>\<#7CD6\>\<#8863\>\<#3002\>
    </slide>

    <\slide>
      <tit|\<#5B9A\>\<#4E49\>\<#7B26\>\<#53F7\>\<#6570\>\<#636E\>\V\<#6784\>\<#9020\>\<#51FD\>\<#6570\>quote>

      <marked|<scm|'>>\<#662F\>\<#4E00\>\<#79CD\>\<#8BED\>\<#6CD5\>\<#7CD6\>\<#8863\>\<#FF0C\>\<#5982\>\<#679C\>\<#6CA1\>\<#6709\><marked|<scm|'>>\<#FF0C\>\<#4E5F\>\<#53EF\>\<#4EE5\>\<#4F7F\>\<#7528\><scm|quote>\<#3002\>Scala\<#91CC\>\<#9762\>\<#4E5F\>\<#6709\>\<#7B26\>\<#53F7\>\<#6570\>\<#636E\>\<#3002\>SRFI-1
      List

      <\with|par-columns|2>
        <\session|s7|default>
          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            'a
          <|folded-io>
            a
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (quote a)
          <|folded-io>
            a
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            ''a
          <|folded-io>
            'a
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (quote (quote a))
          <|folded-io>
            'a
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            '1
          <|folded-io>
            1
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (eq? 1 (quote 1))
          <|folded-io>
            #f
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            '#t
          <|folded-io>
            #t
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (eq? #t `#t)
          <|folded-io>
            #t
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            '+
          <|folded-io>
            +
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (eq? + '+)
          <|folded-io>
            #f
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            ''
          <|folded-io>
            #\<eof\>
          </folded-io>

          <\input>
            \<gtr\>\ 
          <|input>
            \;
          </input>
        </session>
      </with>

      \<#5B57\>\<#9762\>\<#91CF\>\<#FF08\>literally\<#FF09\>\<#5728\>\<#5F15\>\<#7528\>\<#FF08\>\<#4E24\>\<#6B21\>\<#5F15\>\<#7528\>\<#FF1F\>\<#FF09\>\<#4E4B\>\<#540E\>\<#FF0C\>\<#8FD8\>\<#662F\>\<#5B57\>\<#9762\>\<#91CF\>\<#3002\>\<#7B26\>\<#53F7\>\<#5728\>\<#5F15\>\<#7528\>\<#4E4B\>\<#540E\>\<#FF0C\>\<#5219\>\<#53D8\>\<#6210\>\<#4E86\>\<#7B26\>\<#53F7\>\<#6570\>\<#636E\>\<#3002\>

      \;
    </slide>

    <\slide>
      <tit|\<#5B9A\>\<#4E49\>\<#7B26\>\<#53F7\>\<#6570\>\<#636E\>\V\<#9009\>\<#62E9\>\<#51FD\>\<#6570\>unquote>

      <marked|<scm|,>>\<#662F\>\<#4E00\>\<#79CD\>\<#8BED\>\<#6CD5\>\<#7CD6\>\<#8863\>\<#FF0C\>\<#5982\>\<#679C\>\<#6CA1\>\<#6709\><marked|<scm|,>>\<#FF0C\>\<#4E5F\>\<#53EF\>\<#4EE5\>\<#4F7F\>\<#7528\><scm|unquote>\<#3002\>unquote\<#53EA\>\<#80FD\>\<#5728\><marked|<scm|`>>\<#FF08\>quasiquote\<#FF09\>\<#4E0B\>\<#4F7F\>\<#7528\>\<#3002\>

      <\session|s7|default>
        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define a 1)
        <|folded-io>
          1
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          a
        <|folded-io>
          1
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          'a
        <|folded-io>
          a
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (quote a)
        <|folded-io>
          a
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          `,a
        <|folded-io>
          1
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (quasiquote (unquote a))
        <|folded-io>
          1
        </folded-io>
      </session>

      \<#8BD5\>\<#8BD1\>\<#FF1A\>quote\<#4E3A\>\<#5F15\>\<#7528\>\<#FF0C\>unquote\<#4E3A\>\<#89E3\>\<#5F15\>\<#7528\>\<#FF0C\>quasiquote\<#4E3A\>\<#51C6\>\<#5F15\>\<#7528\>\<#3002\><marked|<scm|'>>
      \<#662F\>\<#5F15\>\<#53F7\>\<#FF0C\><marked|<scm|,>>
      \<#662F\>\<#89E3\>\<#5F15\>\<#53F7\>\<#FF0C\><marked|<scm|`>>
      \<#662F\>\<#51C6\>\<#5F15\>\<#53F7\>\<#3002\>
    </slide>

    <\slide>
      <tit|\<#5B9A\>\<#4E49\>\<#7B26\>\<#53F7\>\<#6570\>\<#636E\>\V\<#53C2\>\<#6570\>\<#4E3A\>\<#5217\>\<#8868\>\<#7684\>\<#6784\>\<#9020\>\<#51FD\>\<#6570\>>

      <\session|s7|default>
        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          '(a b c)
        <|folded-io>
          (a b c)
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (list 'a 'b 'c)
        <|folded-io>
          (a b c)
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          '(a b (c d))
        <|folded-io>
          (a b (c d))
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (list 'a 'b (list 'c 'd))
        <|folded-io>
          (a b (c d))
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          '(+ 1 2)
        <|folded-io>
          (+ 1 2)
        </folded-io>

        <\input>
          \<gtr\>\ 
        <|input>
          \;
        </input>
      </session>

      <\scm-code>
        ' ; quote

        ` ; quasiquote

        , ; unquote
      </scm-code>
    </slide>

    <\slide>
      <tit|\<#5B9A\>\<#4E49\>\<#7B26\>\<#53F7\>\<#6570\>\<#636E\>\V\<#5728\>\<#5217\>\<#8868\>\<#4E2D\>\<#7406\>\<#89E3\>\<#9009\>\<#62E9\>\<#51FD\>\<#6570\>>

      <\with|par-columns|2>
        <\session|s7|default>
          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            '(+ a 1)
          <|folded-io>
            (+ a 1)
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (define a 4)
          <|folded-io>
            4
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            `(+ ,(+ a 1) 1)
          <|folded-io>
            (+ 5 1)
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            `(+ ,a 1)
          <|folded-io>
            (+ 4 1)
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (eval `(+ ,a 1))
          <|folded-io>
            5
          </folded-io>
        </session>

        <\equation*>
          <frac|5+4+0*<around*|(|2-<around*|(|3-<around*|(|6+<frac|4|5>|)>|)>|)>|3<around*|(|6-2|)><around*|(|2-7|)>>
        </equation*>
      </with>

      \<#7528\>\<#7B26\>\<#53F7\>\<#6570\>\<#636E\>\<#53EF\>\<#4EE5\>\<#5EF6\>\<#8FDF\>\<#8BA1\>\<#7B97\>\<#8FC7\>\<#7A0B\>\<#3002\>\<#5EF6\>\<#8FDF\>\<#8BA1\>\<#7B97\>\<#8FC7\>\<#7A0B\>\<#FF0C\>\<#53EF\>\<#4EE5\>\<#907F\>\<#514D\>\<#65E0\>\<#6548\>\<#8BA1\>\<#7B97\>\<#548C\>\<#91CD\>\<#590D\>\<#8BA1\>\<#7B97\>\<#3002\>

      <\session|s7|default>
        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define \<#5206\>\<#5B50\> `(+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))))
        <|folded-io>
          (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define \<#5206\>\<#6BCD\> `(* 3 (- 6 2) (- 2 7)))
        <|folded-io>
          (* 3 (- 6 2) (- 2 7))
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          `(/ ,\<#5206\>\<#5B50\> ,\<#5206\>\<#6BCD\>)
        <|folded-io>
          (/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (eval `(/ ,\<#5206\>\<#5B50\> ,\<#5206\>\<#6BCD\>))
        <|folded-io>
          -37/150
        </folded-io>
      </session>

      \<#FF08\>\<#8FD9\>\<#4E2A\>\<#4F8B\>\<#5B50\>\<#6765\>\<#81EA\>\<#4E8E\>\<#300A\>\<#96F6\>\<#57FA\>\<#7840\>SICP\<#300B\>\<#7B2C\>2.1\<#8BFE\>
      00:12:00\<#FF09\>
    </slide>

    <\slide>
      <tit|\<#7B26\>\<#53F7\>\<#6C42\>\<#5BFC\>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|\<mathd\>c|\<mathd\>x>>|<cell|=>|<cell|0>>|<row|<cell|<frac|\<mathd\>x|\<mathd\>x>>|<cell|=>|<cell|1>>|<row|<cell|<frac|d<around*|(|u+v|)>|\<mathd\>x>>|<cell|=>|<cell|<frac|\<mathd\>u|\<mathd\>x>+<frac|\<mathd\>v|\<mathd\>x>>>|<row|<cell|<frac|\<mathd\><around*|(|u*v|)>|\<mathd\>x>>|<cell|=>|<cell|u*<frac|\<mathd\>v|\<mathd\>x>+v*<frac|\<mathd\>u|\<mathd\>x>>>>>
      </eqnarray*>

      <\remark*>
        <math|c>\<#662F\>\<#4E00\>\<#4E2A\>\<#5E38\>\<#6570\>\<#6216\>\<#8005\>\<#662F\>\<#4E00\>\<#4E2A\>\<#548C\><math|x>\<#65E0\>\<#5173\>\<#7684\>\<#53D8\>\<#91CF\>\<#3002\>
      </remark*>
    </slide>

    <\slide>
      <tit|\<#7B26\>\<#53F7\>\<#6C42\>\<#5BFC\>\V\<#5E94\>\<#7528\>>

      <\session|s7|default>
        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (deriv '(+ x 3) 'x)
        <|folded-io>
          (+ 1 0)
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (deriv '(* x y) 'x)
        <|folded-io>
          (+ (* x 0) (* 1 y))
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (deriv '(* (* x y) (+ x 3)) 'x)
        <|folded-io>
          (+ (* (* x y) (+ 1 0)) (* (+ (* x 0) (* 1 y)) (+ x 3)))
        </folded-io>
      </session>

      <\session|maxima|default>
        <\output>
          Maxima 5.46.0 https://maxima.sourceforge.io

          using Lisp GNU Common Lisp (GCL) GCL 2.6.14 git tag
          Version_2_6_15pre3

          Distributed under the GNU Public License. See the file COPYING.

          Dedicated to the memory of William Schelter.

          The function bug_report() provides bug reporting information.
        </output>

        <\folded-io>
          <with|color|red|(<with|math-font-family|rm|%i>4) >
        <|folded-io>
          diff(<math|x+3>)
        <|folded-io>
          <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
          >>d*x>>
        </folded-io>

        <\folded-io>
          <with|color|red|(<with|math-font-family|rm|%i>5) >
        <|folded-io>
          diff(<math|x*y>,x)
        <|folded-io>
          <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
          >>y>>
        </folded-io>

        <\folded-io>
          <with|color|red|(<with|math-font-family|rm|%i>6) >
        <|folded-io>
          diff(<math|x*y*<around*|(|x+3|)>>,x)
        <|folded-io>
          <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
          >><around*|(|x+3|)>*y+x*y>>
        </folded-io>

        <\input>
          <with|color|red|(<with|math-font-family|rm|%i>7) >
        <|input>
          \;
        </input>
      </session>
    </slide>

    <\slide>
      <tit|\<#7B26\>\<#53F7\>\<#6C42\>\<#5BFC\>\V\<#5B9E\>\<#73B0\>>

      <\session|s7|default>
        <\unfolded-io>
          \<gtr\>\ 
        <|unfolded-io>
          (define (deriv exp var)

          \ \ (cond ((number? exp) 0)

          \ \ \ \ \ \ \ \ ((variable? exp)

          \ \ \ \ \ \ \ \ \ (if (same-variable? exp var) 1 0))

          \ \ \ \ \ \ \ \ ((sum? exp)

          \ \ \ \ \ \ \ \ \ (make-sum (deriv (addend exp) var)

          \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (deriv (augend exp) var)))

          \ \ \ \ \ \ \ \ ((product? exp)

          \ \ \ \ \ \ \ \ \ (make-sum

          \ \ \ \ \ \ \ \ \ \ \ (make-product (multiplier exp)

          \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (deriv
          (multiplicand exp) var))

          \ \ \ \ \ \ \ \ \ \ \ (make-product (deriv (multiplier exp) var)

          \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (multiplicand
          exp))))

          \ \ \ \ \ \ \ \ (else

          \ \ \ \ \ \ \ \ \ (error "unknown expression type -- DERIV" exp))))
        <|unfolded-io>
          deriv
        </unfolded-io>
      </session>
    </slide>

    <\slide>
      <tit|\<#7B26\>\<#53F7\>\<#6C42\>\<#5BFC\>\V\<#57FA\>\<#7840\>\<#51FD\>\<#6570\>>

      <\session|s7|default>
        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define (variable? x) (symbol? x)) ;
          \<#5224\>\<#65AD\>x\<#662F\>\<#4E0D\>\<#662F\>\<#53D8\>\<#91CF\>
        <|folded-io>
          variable?
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define (same-variable? v1 v2) ;
          v1\<#548C\>v2\<#662F\>\<#4E0D\>\<#662F\>\<#540C\>\<#4E00\>\<#4E2A\>\<#53D8\>\<#91CF\>

          \ \ (and (variable? v1) (variable? v2) (eq? v1 v2)))
        <|folded-io>
          same-variable?
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define (make-sum a1 a2) (list '+ a1 a2)) ;\ 
        <|folded-io>
          make-sum
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define (make-product m1 m2) (list '* m1 m2))
        <|folded-io>
          make-product
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define (sum? x) (and (pair? x) (eq? (car x) '+))) ;
          x\<#662F\>\<#548C\>\<#5F0F\>\<#4E48\>\<#FF1F\>
        <|folded-io>
          sum?
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define (addend s) (cadr s)) ; s\<#7684\>\<#88AB\>\<#52A0\>\<#6570\>\<#FF08\>\<#52A0\>\<#53F7\>\<#5DE6\>\<#8FB9\>\<#90A3\>\<#4E2A\>\<#6570\>\<#FF09\>
        <|folded-io>
          addend
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define (augend s) (caddr s)) ;
          s\<#7684\>\<#52A0\>\<#6570\>\<#FF08\>\<#52A0\>\<#53F7\>\<#53F3\>\<#8FB9\>\<#90A3\>\<#4E2A\>\<#6570\>\<#FF09\>
        <|folded-io>
          augend
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define (product? x) ; x\<#662F\>\<#5426\>\<#662F\>\<#4E00\>\<#4E2A\>\<#4E58\>\<#5F0F\>

          \ \ (and (pair? x) (eq? (car x) '*)))
        <|folded-io>
          product?
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define (multiplier p) (cadr p)) ;
          p\<#7684\>\<#88AB\>\<#4E58\>\<#6570\>\<#FF08\>\<#4E58\>\<#53F7\>\<#5DE6\>\<#8FB9\>\<#FF09\>
        <|folded-io>
          multiplier
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define (multiplicand p) (caddr p)) ;
          p\<#7684\>\<#4E58\>\<#6570\>\<#FF08\>\<#4E58\>\<#53F7\>\<#53F3\>\<#8FB9\>\<#FF09\>
        <|folded-io>
          multiplicand
        </folded-io>
      </session>
    </slide>

    <\slide>
      <tit|\<#5C0F\>\<#7ED3\>>

      <\itemize>
        <item>\<#56DE\>\<#987E\>\<#8BED\>\<#6CD5\>\<#7CD6\>\<#8863\>\<#8FD9\>\<#4E2A\>\<#6982\>\<#5FF5\>

        <item>\<#9488\>\<#5BF9\>\<#539F\>\<#8BED\>\<#8868\>\<#8FBE\>\<#5F0F\>\<#5B9A\>\<#4E49\>\<#7B26\>\<#53F7\>\<#6570\>\<#636E\>

        <item>\<#9488\>\<#5BF9\>\<#590D\>\<#5408\>\<#8868\>\<#8FBE\>\<#5F0F\>\<#5B9A\>\<#4E49\>\<#7B26\>\<#53F7\>\<#6570\>\<#636E\>

        <item>\<#7406\>\<#89E3\>\<#7B26\>\<#53F7\>\<#6570\>\<#636E\>\<#FF1A\>\<#5B9E\>\<#73B0\>\<#5EF6\>\<#8FDF\>\<#8BA1\>\<#7B97\>

        <item>\<#5E94\>\<#7528\>\<#7B26\>\<#53F7\>\<#6570\>\<#636E\>\<#FF1A\>\<#7B26\>\<#53F7\>\<#6C42\>\<#5BFC\>
      </itemize>
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