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
      08>|<doc-author|<author-data|<author-name|>>>|<doc-author|<author-data|<author-name|\<#6C88\>\<#6D6A\>\<#718A\>\<#732B\>\<#513F\>>>>|<doc-author|<author-data|<author-name|MathAgape>>>|<doc-subtitle|\<#6709\>\<#7406\>\<#6570\>\<#7684\>\<#6570\>\<#636E\>\<#62BD\>\<#8C61\>>>
    </slide>

    <\slide>
      <tit|\<#96F6\>\<#57FA\>\<#7840\>SICP\<#FF1A\>\<#7B2C\>8\<#8BFE\>>

      <\wide-tabular>
        <tformat|<cwith|2|-1|1|-1|cell-height|40px>|<cwith|2|-1|1|-1|cell-vmode|exact>|<table|<row|<\cell>
          <very-large|<\sectional-normal-bold>
            \<#6570\>\<#636E\>\<#62BD\>\<#8C61\>\<#5BFC\>\<#5F15\>
          </sectional-normal-bold>>
        </cell>|<\cell>
          <\very-large>
            <strong|Introduction to Data Abstraction>
          </very-large>
        </cell>>|<row|<\cell>
          \<#5B9E\>\<#4F8B\>\<#FF1A\>\<#6709\>\<#7406\>\<#6570\>\<#7684\>\<#7B97\>\<#672F\>\<#8FD0\>\<#7B97\>
        </cell>|<\cell>
          Example: Arithmetic Operations for Rational Numbers
        </cell>>|<row|<\cell>
          \<#62BD\>\<#8C61\>\<#5C42\>\<#7EA7\>
        </cell>|<\cell>
          Abstraction Barriers
        </cell>>|<row|<\cell>
          \<#6570\>\<#636E\>\<#610F\>\<#5473\>\<#7740\>\<#4EC0\>\<#4E48\>
        </cell>|<\cell>
          What Is Meant by Data?
        </cell>>>>
      </wide-tabular>

      \;

      <strong|\<#7F16\>\<#7A0B\>\<#7684\>\<#57FA\>\<#672C\>\<#539F\>\<#7406\>\<#662F\>\<#5BF9\>\<#6570\>\<#636E\>\<#548C\>\<#8BA1\>\<#7B97\>\<#7684\>\<#7EC4\>\<#5408\>\<#548C\>\<#62BD\>\<#8C61\>>

      \;

      \;

      \;
    </slide>

    <\slide>
      <tit|\<#6709\>\<#7406\>\<#6570\>\<#4E0E\>\<#5206\>\<#5F0F\>>

      \<#9884\>\<#5B9A\>\<#4E49\>\<#51FD\>\<#6570\>\<#FF1A\>\<#5206\>\<#5F0F\>\<#3001\>\<#5206\>\<#5F0F\>\<#663E\>\<#3001\>\<#5206\>\<#5B50\>\<#3001\>\<#5206\>\<#6BCD\>

      <\with|par-columns|2>
        <\session|scheme|default>
          <\folded-io|Scheme] >
            (define \<#4E8C\>\<#5206\>\<#4E4B\>\<#4E00\> (\<#5206\>\<#5F0F\>
            1 2))
          <|folded-io>
            (1 . 2)
          </folded-io>

          <\folded-io|Scheme] >
            (define \<#4E09\>\<#5206\>\<#4E4B\>\<#4E00\> (\<#5206\>\<#5F0F\>
            1 3))
          <|folded-io>
            (1 . 3)
          </folded-io>

          <\unfolded-io|Scheme] >
            (\<#5206\>\<#5B50\> \<#4E8C\>\<#5206\>\<#4E4B\>\<#4E00\>)
          <|unfolded-io>
            1
          </unfolded-io>

          <\unfolded-io|Scheme] >
            (\<#5206\>\<#6BCD\> \<#4E8C\>\<#5206\>\<#4E4B\>\<#4E00\>)
          <|unfolded-io>
            2
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

          <\input|Scheme] >
            \;
          </input>
        </session>
      </with>

      <\itemize>
        <item>\<#6784\>\<#9020\>\<#51FD\>\<#6570\>\<#FF1A\>\<#5206\>\<#5F0F\>

        <item>\<#9009\>\<#62E9\>\<#51FD\>\<#6570\>\<#FF1A\>\<#5206\>\<#5B50\>\<#3001\>\<#5206\>\<#6BCD\>

        <item>\<#663E\>\<#793A\>\<#51FD\>\<#6570\>\<#FF1A\>\<#5206\>\<#5F0F\>\<#663E\>
        \<#FF08\>\<#548C\>\<#4EBA\>\<#7C7B\>\<#505A\>\<#4EA4\>\<#4E92\>\<#FF09\>
      </itemize>
    </slide>

    <\slide>
      <tit|\<#6709\>\<#7406\>\<#6570\>\<#7684\>\<#7B97\>\<#672F\>\<#8FD0\>\<#7B97\>>

      <\with|par-columns|2>
        <\session|scheme|default>
          <\unfolded-io|Scheme] >
            (\<#5206\>\<#5F0F\>\<#663E\> (\<#5206\>\<#5F0F\>\<#52A0\>
            \<#4E8C\>\<#5206\>\<#4E4B\>\<#4E00\>
            \<#4E09\>\<#5206\>\<#4E4B\>\<#4E00\>))
          <|unfolded-io>
            <text|<frac|5|6>>
          </unfolded-io>

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
      </with>

      \<#7B97\>\<#672F\>\<#8FD0\>\<#7B97\>\<#51FD\>\<#6570\>\<#FF1A\>\<#5206\>\<#5F0F\>\<#52A0\>,\<#5206\>\<#5F0F\>\<#51CF\>,\<#5206\>\<#5F0F\>\<#4E58\>,\<#5206\>\<#5F0F\>\<#9664\>
    </slide>

    <\slide>
      <tit|\<#5206\>\<#5F0F\>\<#52A0\>>

      <\equation*>
        <frac|n<rsub|1>|d<rsub|1>>+<frac|n<rsub|<rsub|2>>|d<rsub|2>>=<frac|n<rsub|1>*d<rsub|2>+n<rsub|2>*d<rsub|1>|d<rsub|1>*d<rsub|2>>
      </equation*>

      <\session|scheme|default>
        <\unfolded-io|Scheme] >
          (define (\<#5206\>\<#5F0F\>\<#52A0\> x y)

          \ \ (let* ((n1 (\<#5206\>\<#5B50\> x))

          \ \ \ \ \ \ \ \ \ (d1 (\<#5206\>\<#6BCD\> x))

          \ \ \ \ \ \ \ \ \ (n2 (\<#5206\>\<#5B50\> y))

          \ \ \ \ \ \ \ \ \ (d2 (\<#5206\>\<#6BCD\> y)))

          \ \ \ \ (\<#5206\>\<#5F0F\> (+ (* n1 d2) (* n2 d1))

          \ \ \ \ \ \ \ \ \ \ (* d1 d2))))
        <|unfolded-io>
          \<#5206\>\<#5F0F\>\<#52A0\>
        </unfolded-io>

        <\folded-io|Scheme] >
          (\<#5206\>\<#5F0F\>\<#663E\> (\<#5206\>\<#5F0F\>\<#52A0\>
          (\<#5206\>\<#5F0F\> 1 2) (\<#5206\>\<#5F0F\> 1 4)))
        <|folded-io>
          <text|<frac|6|8>>
        </folded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>
    </slide>

    <\slide>
      <tit|\<#62BD\>\<#8C61\>\<#5C42\>\<#7EA7\>>

      <strong|\<#5C06\>\<#63A5\>\<#53E3\>\<#4E0E\>\<#5B9E\>\<#73B0\>\<#7684\>\<#9694\>\<#79BB\>>

      <\itemize>
        <item>\<#6709\>\<#7406\>\<#6570\>\<#7684\>\<#4F7F\>\<#7528\>\<#8005\>

        <\itemize>
          <item>\<#6709\>\<#7406\>\<#6570\>\<#7684\>\<#7B97\>\<#672F\>\<#8FD0\>\<#7B97\>
          \<#FF08\><with|color|#afa|\<#7528\>\<#6237\>\<#81EA\>\<#5B9A\>\<#4E49\>\<#7684\>\<#7B97\>\<#672F\>\<#8FD0\>\<#7B97\>>\<#FF09\>

          <\itemize>
            <item>\<#6709\>\<#7406\>\<#6570\>\<#7684\>\<#6784\>\<#9020\>\<#4E0E\>\<#9009\>\<#62E9\>
            \<#FF08\><with|color|green|\<#7528\>\<#6237\>\<#81EA\>\<#5B9A\>\<#4E49\>\<#7684\>\<#6570\>\<#636E\>\<#7ED3\>\<#6784\>>\<#FF09\>

            <\itemize>
              <item>\<#6709\>\<#5E8F\>\<#5BF9\> pair
              \<#FF08\><with|color|dark green|\<#7528\>\<#6237\>\<#81EA\>\<#5B9A\>\<#4E49\>\<#7684\>\<#6570\>\<#636E\>\<#7ED3\>\<#6784\>>\<#FF09\>

              <\itemize>
                <item>\<#57FA\>\<#7840\>\<#6570\>\<#636E\>\<#7ED3\>\<#6784\>\<#FF1A\>\<#94FE\>\<#8868\>\<#FF08\><strong|Scheme\<#8BED\>\<#8A00\>\<#5B9A\>\<#4E49\>>\<#FF09\>

                <\itemize>
                  <item><text-dots>

                  <\itemize>
                    <item>\<#5185\>\<#5B58\>\<#3001\>\<#5BC4\>\<#5B58\>\<#5668\>\<#3001\>\<#6307\>\<#4EE4\>\<#4E2D\>\<#7684\>\<#5B9E\>\<#73B0\>\<#FF08\><todo|Scheme\<#89E3\>\<#91CA\>\<#5668\>>\<#FF09\>
                  </itemize>
                </itemize>
              </itemize>
            </itemize>
          </itemize>
        </itemize>
      </itemize>

      <\itemize>
        <item>\<#86CB\>\<#631E\>\<#FF08\>\<#4E0D\>\<#7528\>\<#7BA1\>\<#73B0\>\<#6709\>\<#9E21\>\<#8FD8\>\<#662F\>\<#5148\>\<#6709\>\<#86CB\>\<#FF09\>

        <\itemize>
          <item>\<#9E21\>\<#3001\>\<#86CB\>
        </itemize>
      </itemize>

      \;
    </slide>

    <\slide>
      <tit|\<#6709\>\<#5E8F\>\<#5BF9\>\<#7684\>\<#62BD\>\<#8C61\>>

      <\description>
        <item*|pair>\<#6784\>\<#9020\>\<#5668\>\<#FF1A\>\<#63D0\>\<#4F9B\>\<#4E24\>\<#4E2A\>\<#53C2\>\<#6570\>\<#FF0C\>\<#6784\>\<#9020\>\<#4E00\>\<#4E2A\>\<#6709\>\<#5E8F\>\<#5BF9\>

        <item*|pair.x1>\<#9009\>\<#62E9\>\<#5668\>\<#FF1A\>\<#6709\>\<#5E8F\>\<#5BF9\>\<#4E2D\>\<#7684\>\<#7B2C\>\<#4E00\>\<#4E2A\>\<#5143\>\<#7D20\>

        <item*|pair.x2>\<#9009\>\<#62E9\>\<#5668\>\<#FF1A\>\<#6709\>\<#5E8F\>\<#5BF9\>\<#4E2D\>\<#7684\>\<#7B2C\>\<#4E8C\>\<#4E2A\>\<#5143\>\<#7D20\>
      </description>

      <\session|scheme|default>
        <\folded-io|Scheme] >
          (define (pair x1 x2) (cons x1 x2))
        <|folded-io>
          pair
        </folded-io>

        <\folded-io|Scheme] >
          (define (pair.x1 p) (car p))
        <|folded-io>
          pair.x1
        </folded-io>

        <\folded-io|Scheme] >
          (define (pair.x2 p) (cdr p))
        <|folded-io>
          pair.x2
        </folded-io>

        <\folded-io|Scheme] >
          (pair 1 2)
        <|folded-io>
          (1 . 2)
        </folded-io>

        <\folded-io|Scheme] >
          (pair.x1 (pair 3 4))
        <|folded-io>
          3
        </folded-io>

        <\folded-io|Scheme] >
          (pair.x2 (pair "\<#7236\>\<#4EB2\>" "\<#6BCD\>\<#4EB2\>"))
        <|folded-io>
          \<#6BCD\>\<#4EB2\>
        </folded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>
    </slide>

    <\slide>
      <tit|\<#57FA\>\<#7840\>\<#6570\>\<#636E\>\<#7ED3\>\<#6784\>\<#FF1A\>\<#94FE\>\<#8868\>>

      <\description>
        <item*|()>\<#6784\>\<#9020\>\<#5668\>\<#FF1A\>\<#8868\>\<#793A\>\<#7A7A\>\<#94FE\>\<#8868\>

        <item*|cons>\<#6784\>\<#9020\>\<#5668\>\<#FF1A\>\<#63D0\>\<#4F9B\>\<#4E00\>\<#4E2A\>\<#5143\>\<#7D20\>\<#548C\>\<#4E00\>\<#4E2A\>\<#94FE\>\<#8868\>\<#FF0C\>\<#5C06\>\<#4E24\>\<#8005\>\<#7EC4\>\<#5408\>\<#6210\>\<#94FE\>\<#8868\>\<#3002\>

        <item*|car>\<#9009\>\<#62E9\>\<#5668\>\<#FF1A\>\<#53D6\>\<#51FA\>\<#94FE\>\<#8868\>\<#5934\>\<#90E8\>\<#7684\>\<#5143\>\<#7D20\>\<#3002\>

        <item*|cdr>\<#9009\>\<#62E9\>\<#5668\>\<#FF1A\>\<#79FB\>\<#9664\>\<#94FE\>\<#8868\>\<#5934\>\<#90E8\>\<#4E4B\>\<#540E\>\<#FF0C\>\<#5269\>\<#4E0B\>\<#7684\>\<#5143\>\<#7D20\>\<#6309\>\<#7167\>\<#539F\>\<#6765\>\<#7684\>\<#987A\>\<#5E8F\>\<#7EC4\>\<#5408\>\<#6210\>\<#7684\>\<#94FE\>\<#8868\>\<#3002\>

        <item*|list>\<#6784\>\<#9020\>\<#5668\>\<#FF1A\>\<#63D0\>\<#4F9B\>\<#4E00\>\<#7EC4\>\<#5143\>\<#7D20\>\<#FF0C\>\<#53EF\>\<#4EE5\>\<#5C06\>\<#8FD9\>\<#4E00\>\<#7EC4\>\<#5143\>\<#7D20\>\<#7EC4\>\<#5408\>\<#6210\>\<#94FE\>\<#8868\>\<#3002\>
      </description>

      <\session|scheme|default>
        <\folded-io|Scheme] >
          (list 1 2 3 4) # (cons 1 (cons 2 (cons 3 (cons 4 ()))))
        <|folded-io>
          (1 2 3 4)
        </folded-io>

        <\folded-io|Scheme] >
          (car (list 1 2 3 4))
        <|folded-io>
          1
        </folded-io>

        <\folded-io|Scheme] >
          (cdr (list 1 2 3 4))
        <|folded-io>
          (2 3 4)
        </folded-io>

        <\folded-io|Scheme] >
          (car (list ))
        <|folded-io>
          <errput|car argument, (), is nil but should be a pair>
        </folded-io>

        <\folded-io|Scheme] >
          (eq? (list ) (list ))
        <|folded-io>
          #t
        </folded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>
    </slide>

    <\slide>
      <tit|\<#5B9A\>\<#4E49\>\<#6570\>\<#636E\>>

      \<#901A\>\<#8FC7\>\<#5B9A\>\<#4E49\>\<#4E00\>\<#7EC4\><strong|\<#903B\>\<#8F91\>\<#81EA\>\<#6D3D\>>\<#7684\>\<#9009\>\<#62E9\>\<#51FD\>\<#6570\>\<#548C\>\<#6784\>\<#9020\>\<#51FD\>\<#6570\>\<#FF0C\>\<#5B9A\>\<#4E49\>\<#6570\>\<#636E\>\<#3002\>

      \<#6BD4\>\<#5982\><person|Peano>\<#81EA\>\<#7136\>\<#6570\>\<#516C\>\<#7406\>\<#FF1A\>

      <\axiom>
        <label|axiom:zero><math|0\<in\>\<bbb-N\>>.
      </axiom>

      <\axiom>
        <label|axiom:successor is a function>\<#82E5\><math|x\<in\>\<bbb-N\>>\<#FF0C\>\<#5219\><math|x>\<#6709\>\<#4E14\>\<#53EA\>\<#6709\>\<#4E00\>\<#4E2A\>\<#540E\>\<#7EE7\><math|x<rsup|<rprime|'>>\<in\>\<bbb-N\>>.
      </axiom>

      <\axiom>
        <label|axiom:successor is non-zero>\<#5BF9\>\<#4EFB\>\<#610F\><math|x\<in\>\<bbb-N\>,x<rsup|<rprime|'>>\<neq\>0>.
      </axiom>

      <\axiom>
        <label|axiom:successor is injective>\<#5BF9\>\<#4EFB\>\<#610F\><math|x<rsub|1>,x<rsub|2>\<in\>\<bbb-N\>>\<#FF0C\>\<#82E5\><math|x<rsub|1>\<neq\>x<rsub|2>>\<#FF0C\>\<#5219\><math|x<rsub|1><rsup|<rprime|'>>\<neq\>x<rsub|2><rsup|<rprime|'>>>.
      </axiom>

      <\axiom>
        <label|axiom:induction>\<#8BBE\><math|\<bbb-M\>\<subseteq\>\<bbb-N\>>.
        \<#82E5\><math|0\<in\>\<bbb-M\>>\<#FF0C\>\<#4E14\>\<#5F53\><math|x\<in\>\<bbb-M\>>\<#65F6\>\<#4E5F\>\<#6709\><math|x<rsup|<rprime|'>>\<in\>\<bbb-M\>>\<#FF0C\>\<#5219\><math|\<bbb-M\>=\<bbb-N\>>.
      </axiom>
    </slide>

    <\slide>
      <tit|\<#5B9A\>\<#4E49\>\<#81EA\>\<#7136\>\<#6570\>\<#8FD9\>\<#79CD\>\<#6570\>\<#636E\>>

      <\session|scheme|default>
        <\unfolded-io|Scheme] >
          (define \<#96F6\> (list ))
        <|unfolded-io>
          ()
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (define (\<#540E\>\<#7EE7\> x) (cons (list ) x))\ 
        <|unfolded-io>
          \<#540E\>\<#7EE7\>
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (\<#540E\>\<#7EE7\> \<#96F6\>)
        <|unfolded-io>
          (())
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (\<#540E\>\<#7EE7\> (\<#540E\>\<#7EE7\> \<#96F6\>))
        <|unfolded-io>
          (() ())
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (\<#540E\>\<#7EE7\> (\<#540E\>\<#7EE7\> (\<#540E\>\<#7EE7\>
          \<#96F6\>)))
        <|unfolded-io>
          (() () ())
        </unfolded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>
    </slide>

    <\slide>
      <tit|cons/car/cdr\<#7684\>\<#5176\>\<#4E2D\>\<#4E00\>\<#79CD\>\<#5B9E\>\<#73B0\>>

      <\session|scheme|default>
        <\folded-io|Scheme] >
          (define (cons2 x y)

          \ \ (define (dispatch m)

          \ \ \ \ (cond ((= m 0) x)

          \ \ \ \ \ \ \ \ \ \ ((= m 1) y)

          \ \ \ \ \ \ \ \ \ \ (else (error "Argument not 0 or 1 -- CONS"
          m))))

          \ \ dispatch)
        <|folded-io>
          cons2
        </folded-io>

        <\folded-io|Scheme] >
          (define (car2 z) (z 0))
        <|folded-io>
          car2
        </folded-io>

        <\folded-io|Scheme] >
          (define (cdr2 z) (z 1))
        <|folded-io>
          cdr2
        </folded-io>

        <\folded-io|Scheme] >
          (car2 (cons2 1 2))
        <|folded-io>
          1
        </folded-io>

        <\folded-io|Scheme] >
          (cdr2 (cons2 1 2))
        <|folded-io>
          2
        </folded-io>

        <\folded-io|Scheme] >
          (car2 (cons2 1 (cons2 2 (cons2 3 ()))))
        <|folded-io>
          1
        </folded-io>

        <\folded-io|Scheme] >
          (car2 (cdr2 (cons2 1 (cons2 2 (cons2 3 ())))))
        <|folded-io>
          2
        </folded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>
    </slide>

    <\slide>
      <tit|\<#603B\>\<#7ED3\>>

      <\itemize>
        <item>\<#4E3A\>\<#4EC0\>\<#4E48\>\<#9700\>\<#8981\>\<#62BD\>\<#8C61\>\<#5C42\>\<#7EA7\>

        <item>\<#5982\>\<#4F55\>\<#5B9A\>\<#4E49\>\<#6570\>\<#636E\>

        <item>Schem\<#539F\>\<#8BED\> (R7RS small)

        <\itemize>
          <item>\<#94FE\>\<#8868\>

          <\itemize>
            <item>\<#6709\>\<#5E8F\>\<#5BF9\>

            <\itemize>
              <item>\<#5206\>\<#5F0F\>

              <\itemize>
                <item>\<#6709\>\<#7406\>\<#6570\>
              </itemize>
            </itemize>
          </itemize>
        </itemize>
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

<\references>
  <\collection>
    <associate|axiom:induction|<tuple|5|?|slide07.tm>>
    <associate|axiom:successor is a function|<tuple|2|?|slide07.tm>>
    <associate|axiom:successor is injective|<tuple|4|?|slide07.tm>>
    <associate|axiom:successor is non-zero|<tuple|3|?|slide07.tm>>
    <associate|axiom:zero|<tuple|1|?|slide07.tm>>
  </collection>
</references>