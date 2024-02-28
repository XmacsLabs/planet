<TeXmacs|2.1.2>

<style|<tuple|beamer|no-page-numbers|chinese|python>>

<\body>
  <\hide-preamble>
    <assign|dfn|<macro|x|<strong|<arg|x>>>>
  </hide-preamble>

  <screens|<\shown>
    <tit|\<#96F6\>\<#57FA\>\<#7840\>SICP\<#FF1A\>\<#7B2C\>3\<#8BFE\>>

    <\wide-tabular>
      <tformat|<cwith|2|-1|1|-1|cell-height|40px>|<cwith|2|-1|1|-1|cell-vmode|exact>|<table|<row|<\cell>
        <very-large|<\sectional-normal-bold>
          \<#7F16\>\<#7A0B\>\<#7684\>\<#57FA\>\<#672C\>\<#539F\>\<#7406\>
        </sectional-normal-bold>>
      </cell>|<\cell>
        <very-large|<\sectional-normal-bold>
          Elements of Programming
        </sectional-normal-bold>>
      </cell>>|<row|<\cell>
        \<#8868\>\<#8FBE\>\<#5F0F\>
      </cell>|<\cell>
        Expressions
      </cell>>|<row|<\cell>
        \<#547D\>\<#540D\>\<#4E0E\>\<#73AF\>\<#5883\>
      </cell>|<\cell>
        Naming and the Evironment
      </cell>>|<row|<\cell>
        \<#7EC4\>\<#5408\>\<#5F0F\>\<#7684\>\<#6C42\>\<#503C\>
      </cell>|<\cell>
        Evaluating Combinations
      </cell>>|<row|<\cell>
        \<#590D\>\<#5408\>\<#51FD\>\<#6570\>
      </cell>|<\cell>
        Compound Procedures
      </cell>>|<row|<\cell>
        \<#51FD\>\<#6570\>\<#5E94\>\<#7528\>\<#7684\>\<#4EE3\>\<#6362\>\<#6A21\>\<#578B\>
      </cell>|<\cell>
        The Subsitution Model for Procedure Application
      </cell>>|<row|<\cell>
        \<#6761\>\<#4EF6\>\<#8868\>\<#8FBE\>\<#5F0F\>\<#548C\>\<#8C13\>\<#8BCD\>
      </cell>|<\cell>
        Conditional Expressions and Predicates
      </cell>>|<row|<\cell>
        \;
      </cell>|<\cell>
        \;
      </cell>>|<row|<\cell>
        \<#7EBF\>\<#6027\>\<#9012\>\<#5F52\>\<#548C\>\<#8FED\>\<#4EE3\>
      </cell>|<\cell>
        Linear Recursion and Iteration
      </cell>>|<row|<\cell>
        \<#6811\>\<#5F62\>\<#9012\>\<#5F52\>
      </cell>|<\cell>
        Tree Recursion
      </cell>>>>
    </wide-tabular>
  </shown>|<\hidden>
    <tit|\<#6761\>\<#4EF6\>\<#8868\>\<#8FBE\>\<#5F0F\>\<#548C\>\<#8C13\>\<#8BCD\>\V\<#77ED\>\<#8DEF\>\<#8FD0\>\<#7B97\>>

    <\itemize>
      <item>\<#5E94\>\<#7528\>\<#5E8F\>\<#6C42\>\<#503C\>\<#FF08\>Scheme\<#4F7F\>\<#7528\>\<#7684\>\<#662F\>\<#5E94\>\<#7528\>\<#5E8F\>\<#6C42\>\<#503C\>\<#FF09\>

      <item>\<#6B63\>\<#5219\>\<#5E8F\>\<#6C42\>\<#503C\>
    </itemize>

    <subparagraph|\<#6848\>\<#4F8B\>\<#5206\>\<#6790\>\<#FF1A\>\<#5B9E\>\<#73B0\>\<#6C42\>\<#7EDD\>\<#5BF9\>\<#503C\>\<#7684\>\<#591A\>\<#79CD\>\<#65B9\>\<#5F0F\>>

    <\with|par-columns|2>
      <\equation*>
        <around|\||x|\|>=<around*|{|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|2|cell-halign|l>|<cwith|1|-1|3|3|cell-halign|l>|<table|<row|<cell|x>|<cell|<with|mode|text|if>>|<cell|x\<gtr\>0,>>|<row|<cell|0>|<cell|<with|mode|text|if>>|<cell|x=0,>>|<row|<cell|-x>|<cell|<with|mode|text|if>>|<cell|x\<less\>0.>>>>>|\<nobracket\>>
      </equation*>

      <\session|scheme|default>
        <\unfolded-io|Scheme] >
          (define (abs1 x)

          \ \ (cond ((\<gtr\> x 0) x)

          \ \ \ \ \ \ \ \ ((= x 0) 0)

          \ \ \ \ \ \ \ \ (else (- x))))
        <|unfolded-io>
          abs1
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (define (abs2 x)

          \ \ (if (\<gtr\> x 0)

          \ \ \ \ \ \ x

          \ \ \ \ \ \ (- x)))
        <|unfolded-io>
          abs2
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (define (abs3 x)

          \ \ (or (and (\<gtr\> x) x) (- x)))
        <|unfolded-io>
          abs3
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (abs1 1)
        <|unfolded-io>
          1
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (abs1 -1)
        <|unfolded-io>
          1
        </unfolded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>
    </with>

    <\folded>
      <\question>
        \<#4E3A\>\<#4EC0\>\<#4E48\><scm|if>\<#548C\><scm|cond>\<#662F\>\<#5FC5\>\<#987B\>\<#7684\>\<#FF1F\>
      </question>
    <|folded>
      <\exercise>
        \<#4F7F\>\<#7528\><scm|if>\<#5B9E\>\<#73B0\><scm|and>\<#548C\><scm|or>\<#3002\>
      </exercise>

      \<#53C2\>\<#8003\>\<#6587\>\<#6863\>\<#FF1A\><slink|https://www.scheme.com/tspl2d/grammar.html>
    </folded>

    \;
  </hidden>|<\hidden>
    <tit|\<#5FAA\>\<#73AF\>\<#FF1A\>\<#6C42\>\<#548C\>>

    <paragraph|\<#6848\>\<#4F8B\>\<#5206\>\<#6790\>\<#FF1A\>\<#6C42\>\<#548C\>>

    <\with|par-columns|2>
      <\equation*>
        <big|sum><rsub|i=1><rsup|n>i=1+2+\<cdots\>+n
      </equation*>

      \;

      <\render-code>
        result := 0

        <algo-for|i \<leftarrow\> 1 <render-to> n|result := result + i>
      </render-code>
    </with>

    <hrule>

    <\with|par-columns|2>
      <\session|scheme|default>
        <\folded-io|Scheme] >
          (define result 0)
        <|folded-io>
          0
        </folded-io>

        <\input|Scheme] >
          (for (x (list 1 2 3 4))

          \ \ (set! result (+ result x)))
        </input>

        <\folded-io|Scheme] >
          result
        <|folded-io>
          10
        </folded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>

      <\session|python|default>
        <\input>
          \<gtr\>\<gtr\>\<gtr\>\ 
        <|input>
          def sum_n(n):

          \ \ \ \ result= 0

          \ \ \ \ for i in range(n):

          \ \ \ \ \ \ \ \ result= result + (i + 1)

          \ \ \ \ return result
        </input>

        <\folded-io>
          \<gtr\>\<gtr\>\<gtr\>\ 
        <|folded-io>
          sum_n(3)
        <|folded-io>
          6
        </folded-io>

        <\folded-io>
          \<gtr\>\<gtr\>\<gtr\>\ 
        <|folded-io>
          list(range(3))
        <|folded-io>
          [0, 1, 2]
        </folded-io>

        <\input>
          \<gtr\>\<gtr\>\<gtr\>\ 
        <|input>
          \;
        </input>
      </session>
    </with>

    <\exercise>
      \<#4F7F\>\<#7528\>Scheme\<#5B9E\>\<#73B0\>range\<#3002\>
    </exercise>
  </hidden>|<\hidden>
    <tit|\<#7EBF\>\<#6027\>\<#9012\>\<#5F52\>\<#FF1A\>\<#6C42\>\<#548C\>>

    <\session|scheme|default>
      <\unfolded-io|Scheme] >
        (define (sum start end)

        \ \ (cond ((\<gtr\> start end) 0)

        \ \ \ \ \ \ \ \ ((= start end) end)

        \ \ \ \ \ \ \ \ (else (+ start (sum (+ start 1) end)))))

        \;
      <|unfolded-io>
        sum
      </unfolded-io>

      <\unfolded-io|Scheme] >
        (sum 2 3)
      <|unfolded-io>
        5
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <\with|par-columns|2|par-left|1fn|par-right|4fn|par-columns-sep|0fn>
      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsup|100><rsub|i=1>i>|<cell|=>|<cell|1+<big|sum><rsup|100><rsub|i=2>i>>|<row|<cell|>|<cell|=>|<cell|1+<around*|(|2+<big|sum><rsub|i=3><rsup|100>i|)>>>|<row|<cell|>|<cell|=>|<cell|1+<around*|(|2+<around*|(|3+<big|sum><rsub|i=4><rsup|100>i|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<ldots\>>>|<row|<cell|>|<cell|=>|<cell|<with|math-display|false|1+<around*|(|2+\<cdots\>+<around*|(|99+<big|sum><rsub|i=100><rsup|100>i|)>|)>>>>|<row|<cell|>|<cell|=>|<cell|1+<around*|(|2+<around*|(|3+\<cdots\>+<around*|(|99+100|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|1+<around*|(|2+<around*|(|3+\<cdots\>+<around*|(|98+199|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<ldots\>>>|<row|<cell|>|<cell|=>|<cell|1+5049>>|<row|<cell|>|<cell|=>|<cell|5050>>>>
      </eqnarray*>
    </with>

    \;
  </hidden>|<\hidden>
    <tit|\<#6811\>\<#5F62\>\<#9012\>\<#5F52\>\<#FF1A\>\<#6590\>\<#6CE2\>\<#90A3\>\<#5951\>\<#6570\>\<#5217\>>

    <\folded>
      <\equation*>
        <with|mode|text|Fib><around*|(|n|)>=<around*|{|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|2|2|cell-halign|l>|<table|<row|<cell|0>|<cell|<with|mode|text|if>
        n=0,>>|<row|<cell|1>|<cell|<with|mode|text|if>
        n=1,>>|<row|<cell|<with|mode|text|Fib><around*|(|n-1|)>+<with|mode|text|Fib><around*|(|n-2|)>>|<cell|<with|mode|text|otherwise>.>>>>>|\<nobracket\>>
      </equation*>
    <|folded>
      <scm|<\with|par-mode|center>
        <tree|fib 5|<tree|fib 4|<tree|fib 3|<tree|fib 2|<tree|fib
        1|1>|<tree|fib 0|0>>>|<tree|fib 2|<tree|fib 1|1>|<tree|fib
        0|0>>>|<tree|fib 3|<tree|fib 2|<tree|fib 1|1>|<tree|fib 0|0>>>>
      </with>>
    </folded>

    <\session|scheme|default>
      <\folded-io|Scheme] >
        (define (fib n)

        \ \ (cond ((= n 0) 0)

        \ \ \ \ \ \ \ \ ((= n 1) 1)

        \ \ \ \ \ \ \ \ (else (+ (fib (- n 1)) (fib (- n 2))))))
      <|folded-io>
        fib
      </folded-io>

      <\folded-io|Scheme] >
        (fib 2)
      <|folded-io>
        1
      </folded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>
  </hidden>|<\hidden>
    <tit|\<#6811\>\<#5F62\>\<#9012\>\<#5F52\>\<rightarrow\>\<#8FED\>\<#4EE3\>>

    <\equation*>
      <with|mode|text|Fib><around*|(|n|)>=<around*|{|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|2|2|cell-halign|l>|<table|<row|<cell|0>|<cell|<with|mode|text|if>
      n=0,>>|<row|<cell|1>|<cell|<with|mode|text|if>
      n=1,>>|<row|<cell|<with|mode|text|Fib><around*|(|n-1|)>+<with|mode|text|Fib><around*|(|n-2|)>>|<cell|<with|mode|text|otherwise>.>>>>>|\<nobracket\>>
    </equation*>

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>|<cell|\<ldots\>>|<cell|n-2>|<cell|n-1>|<cell|n>>|<row|<cell|0>|<cell|1>|<cell|2>|<cell|3>|<cell|5>|<cell|8>|<cell|\<ldots\>>|<cell|f<around*|(|n-2|)>>|<cell|f<around*|(|n-1|)>>|<cell|f<around*|(|n-1|)>+f<around*|(|n-2|)>>>|<row|<cell|a<rsub|0>=0>|<cell|b<rsub|0>=1>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|a<rsub|1>=1>|<cell|b<rsub|1>=2>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|a<rsub|2>=2>|<cell|b<rsub|2>=3>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|a<rsub|3>=b<rsub|2>>|<cell|b<rsub|3>=a<rsub|2>+b<rsub|2>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>
    </equation*>

    <\with|par-columns|2>
      <\algorithm>
        <\math>
          a<rsub|0>\<leftarrow\> 0

          b <rsub|0>\<leftarrow\> 1

          <\algo-for|i \<leftarrow\> 1 <render-to> n>
            a<rsub|i> \<leftarrow\> b<rsub|i-1>

            b <rsub|i>\<leftarrow\> a<rsub|i-1> + b<rsub|i-1>
          </algo-for>

          <render-result>b<rsub|n>
        </math>
      </algorithm>

      <\algorithm>
        a \<leftarrow\> 0

        b <math|\<leftarrow\>> 1

        <\algo-for|i \<leftarrow\> 1 <render-to> n>
          old_b \<leftarrow\> b

          b \<leftarrow\> a + b

          a \<leftarrow\> old_b
        </algo-for>

        <render-result> b
      </algorithm>
    </with>

    \;
  </hidden>|<\hidden>
    <tit|\<#5206\>\<#6CBB\>\<#6CD5\>\<#FF1A\>\<#627E\>\<#96F6\>\<#95EE\>\<#9898\>>

    <\itemize>
      <item>\<#65E0\>\<#9650\>\<#591A\>\<#4E00\>\<#5143\>\<#7EB8\>\<#5E01\>

      <item>\<#65E0\>\<#9650\>\<#591A\>\<#4E94\>\<#5143\>\<#7EB8\>\<#5E01\>

      <item>\<#65E0\>\<#9650\>\<#591A\>\<#5341\>\<#5143\>\<#7EB8\>\<#5E01\>

      <item>\<#65E0\>\<#9650\>\<#591A\>\<#4E94\>\<#5341\>\<#5143\>\<#7EB8\>\<#5E01\>
    </itemize>

    <\folded-documentation>
      <\question>
        \<yen\>6\<#6709\>\<#51E0\>\<#79CD\>\<#627E\>\<#96F6\>\<#65B9\>\<#5F0F\>\<#FF1F\>
      </question>
    <|folded-documentation>
      \<yen\>6=6\<times\>\<yen\>1, \<yen\>6=1\<times\>\<yen\>5+1
    </folded-documentation>

    <\folded-documentation>
      <\question>
        \<yen\>16\<#6709\>\<#51E0\>\<#79CD\>\<#627E\>\<#96F6\>\<#65B9\>\<#5F0F\>\<#FF1F\>
      </question>
    <|folded-documentation>
      \;
    </folded-documentation>

    <\folded-documentation>
      <\question>
        \<#5BF9\>\<#4E8E\>\<yen\>n\<#FF0C\>\<#4E00\>\<#5171\>\<#6709\>\<#591A\>\<#5C11\>\<#79CD\>\<#627E\>\<#96F6\>\<#65B9\>\<#5F0F\>\<#FF1F\>
      </question>
    <|folded-documentation>
      <\equation*>
        f<around*|(|n,<around*|[|1,5,10,50|]>|)>=f<around*|(|n,<around*|(|1|)>|)>+f<around*|(|n,<around*|(|5|)>|)>+f<around*|(|n,<around*|(|10|)>|)>+f<around*|(|n,<around*|(|50|)>|)>+f<around*|(|n,<around*|(|1,5|)>|)>+f<around*|(|n,<around*|(|1,10|)>|)>+f<around*|(|n,<around*|(|1,50|)>|)>+f<around*|(|n,<around*|(|5,10|)>|)>+f<around*|(|n,<around*|(|5,50|)>|)>+f<around*|(|n,<around*|(|10,50|)>|)>+f<around*|(|n,<around*|(|1,5,10|)>|)>+f<around*|(|n,<around*|(|1,5,50|)>|)>+f<around*|(|n,<around*|(|5,10,50|)>|)>+f<around*|(|n,<around*|(|1,5,10,50|)>|)>
      </equation*>

      <\equation*>
        f<around*|(|n,<around*|[|1,5,10,50|]>|)>=f<around*|(|n,<around*|[|5,10,50|]>|)>+f<around*|(|n-1,<around*|[|1,5,10,50|]>|)>
      </equation*>
    </folded-documentation>
  </hidden>|<\hidden>
    <tit|\<#603B\>\<#7ED3\>>

    <\itemize>
      <item>\<#56DE\>\<#987E\>\<#5E94\>\<#7528\>\<#5E8F\>\<#6C42\>\<#503C\>\<#548C\>\<#6B63\>\<#5219\>\<#5E8F\>\<#6C42\>\<#503C\>

      <item>\<#6DF1\>\<#5165\>\<#7406\>\<#89E3\><scm|if>\<#548C\><scm|cond>

      <item>\<#7F16\>\<#7A0B\>\<#4E2D\>\<#6700\>\<#57FA\>\<#7840\>\<#7684\>\<#6982\>\<#5FF5\>\<#4E4B\>\<#4E00\>\<#FF1A\>\<#5FAA\>\<#73AF\>

      <item>\<#4F7F\>\<#7528\>\<#9012\>\<#5F52\>\<#5B9E\>\<#73B0\>\<#5FAA\>\<#73AF\>\<#FF0C\>\<#57FA\>\<#4E8E\>\<#5FAA\>\<#73AF\>\<#7406\>\<#89E3\>\<#9012\>\<#5F52\>

      <item>\<#5B9E\>\<#6218\>\<#FF1A\>\<#7EBF\>\<#6027\>\<#9012\>\<#5F52\>\<#548C\>\<#6811\>\<#5F62\>\<#9012\>\<#5F52\>

      <item>\<#6280\>\<#5DE7\>\<#FF1A\>\<#5C06\>\<#9012\>\<#5F52\>\<#5B9E\>\<#73B0\>\<#6539\>\<#4E3A\>\<#8FED\>\<#4EE3\>\<#5B9E\>\<#73B0\>

      <item>\<#62BD\>\<#8C61\>\<#FF1A\>\<#5229\>\<#7528\>\<#9012\>\<#5F52\>\<#89E3\>\<#51B3\>\<#73B0\>\<#5B9E\>\<#4E2D\>\<#7684\>\<#627E\>\<#96F6\>\<#95EE\>\<#9898\>
    </itemize>
  </hidden>>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
    <associate|marked-color|pastel yellow>
    <associate|page-medium|beamer>
    <associate|page-screen-margin|false>
    <associate|par-columns|1>
    <associate|preamble|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|4tab>|\<#6848\>\<#4F8B\>\<#5206\>\<#6790\>\<#FF1A\>\<#5B9E\>\<#73B0\>\<#6C42\>\<#7EDD\>\<#5BF9\>\<#503C\>\<#7684\>\<#591A\>\<#79CD\>\<#65B9\>\<#5F0F\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|3tab>|\<#6848\>\<#4F8B\>\<#5206\>\<#6790\>\<#FF1A\>\<#6C42\>\<#548C\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>
    </associate>
  </collection>
</auxiliary>