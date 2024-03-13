<TeXmacs|2.1.2>

<style|<tuple|beamer|no-page-numbers|chinese|python>>

<\body>
  <\hide-preamble>
    <assign|dfn|<macro|x|<strong|<arg|x>>>>
  </hide-preamble>

  <\slideshow>
    <\slide>
      <tit|\<#96F6\>\<#57FA\>\<#7840\>SICP\<#FF1A\>\<#7B2C\>5\<#8BFE\>>

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
          \<#7EBF\>\<#6027\>\<#9012\>\<#5F52\>\<#548C\>\<#8FED\>\<#4EE3\>
        </cell>|<\cell>
          Linear Recursion and Iteration
        </cell>>|<row|<\cell>
          \<#6811\>\<#5F62\>\<#9012\>\<#5F52\>
        </cell>|<\cell>
          Tree Recursion
        </cell>>|<row|<\cell>
          \<#589E\>\<#957F\>\<#7684\>\<#9636\>
        </cell>|<\cell>
          Orders of Growth
        </cell>>|<row|<\cell>
          \<#6C42\>\<#5E42\>
        </cell>|<\cell>
          Exponentiation
        </cell>>|<row|<\cell>
          \<#6700\>\<#5927\>\<#516C\>\<#7EA6\>\<#6570\>
        </cell>|<\cell>
          Greatest Common Divisors
        </cell>>>>
      </wide-tabular>
    </slide>

    <\slide>
      <tit|\<#672F\>\<#8BED\>\<#56DE\>\<#987E\>>

      <\itemize>
        <item>\<#5E94\>\<#7528\>\<#4E00\>\<#4E2A\>\<#51FD\>\<#6570\>\<#7684\>\<#4EE3\>\<#6362\>\<#6A21\>\<#578B\>\<#FF1A\>

        <\itemize>
          <item>\<#5E94\>\<#7528\>\<#5E8F\>\<#6C42\>\<#503C\>

          <item>\<#6B63\>\<#5219\>\<#5E8F\>\<#6C42\>\<#503C\>
        </itemize>

        <item>\<#9012\>\<#5F52\>\<#7684\>\<#8BA1\>\<#7B97\>\<#8FC7\>\<#7A0B\>

        <item>\<#8FED\>\<#4EE3\>\<#7684\>\<#8BA1\>\<#7B97\>\<#8FC7\>\<#7A0B\>

        <item>\<#9012\>\<#5F52\>\<#51FD\>\<#6570\>\<#7684\>\<#8BA1\>\<#7B97\>\<#8FC7\>\<#7A0B\>\<#4E0D\>\<#4E00\>\<#5B9A\>\<#662F\>\<#9012\>\<#5F52\>\<#7684\>\<#FF0C\>\<#4E5F\>\<#6709\>\<#53EF\>\<#80FD\>\<#662F\>\<#8FED\>\<#4EE3\>\<#7684\>\<#3002\>
      </itemize>

      \;

      <\quote-env>
        <hlink|\<#77E5\>\<#4E4E\>\<#7528\>\<#6237\>\<#9AD8\>\<#82F1\>\<#607A\>|https://www.zhihu.com/question/21056295/answer/17030255>\<#FF1A\>

        \<#6B63\>\<#5219\>\<#7684\>\<#82F1\>\<#8BED\>\<#539F\>\<#6587\>\<#662F\>regular\<#FF0C\>\<#53EF\>\<#4EE5\>\<#7406\>\<#89E3\>\<#4E3A\>\<#6709\>\<#89C4\>\<#5F8B\>\<#7684\>\<#FF0C\>\<#6709\>\<#89C4\>\<#5219\>\<#7684\>\<#3002\>\<#5728\>\<#82F1\>\<#8BED\>\<#91CC\>\<#9762\>\<#88AB\>\<#63CF\>\<#8FF0\>\<#4E3A\>regular\<#7684\>\<#5BF9\>\<#8C61\>\<#5176\>\<#5B9E\>\<#662F\>\<#6BD4\>\<#8F83\>\<#7B80\>\<#5355\>\<#7684\>\<#FF0C\>\<#5BB9\>\<#6613\>\<#638C\>\<#63E1\>\<#7684\>\<#5BF9\>\<#8C61\>\<#3002\>\<#6BD4\>\<#5982\>\<#8BF4\>\<#6B63\>\<#5219\>\<#8BED\>\<#8A00\>\<#53EA\>\<#6709\>\<#51E0\>\<#6761\>\<#7B80\>\<#5355\>\<#7684\>\<#5B9A\>\<#4E49\>\<#FF0C\>\<#9664\>\<#4E86\>\<#539F\>\<#5B50\>\<#FF08\>atom\<#FF09\>\<#7684\>\<#5B9A\>\<#4E49\>\<#5C31\>\<#662F\>\<#5404\>\<#79CD\>\<#8FDE\>\<#63A5\>\<#FF08\>concatenation\<#FF09\>\<#548C\>\<#6C42\>\<#5E76\>\<#FF08\>union\<#FF09\>\<#FF0C\>\<#5E76\>\<#4E14\>\<#53EF\>\<#4EE5\>\<#7B80\>\<#5355\>\<#7684\>\<#7528\>\<#786E\>\<#5B9A\>\<#72B6\>\<#6001\>\<#6709\>\<#9650\>\<#81EA\>\<#52A8\>\<#673A\>\<#8868\>\<#8FBE\>\<#FF1B\>\<#76F8\>\<#5BF9\>\<#800C\>\<#8A00\>\<#FF0C\>\<#4E0A\>\<#4E0B\>\<#6587\>\<#65E0\>\<#5173\>\<#4EE5\>\<#53CA\>\<#4E0A\>\<#4E0B\>\<#6587\>\<#76F8\>\<#5173\>\<#8BED\>\<#8A00\>\<#5C31\>\<#8981\>\<#590D\>\<#6742\>\<#7684\>\<#591A\>\<#4E86\>\<#FF0C\>\<#9700\>\<#8981\>\<#4E0B\>\<#63A8\>\<#81EA\>\<#52A8\>\<#673A\>\<#548C\>\<#7EBF\>\<#6027\>\<#6709\>\<#9650\>\<#81EA\>\<#52A8\>\<#673A\>\<#6765\>\<#8868\>\<#793A\>\<#4E86\>\<#3002\>
      </quote-env>
    </slide>

    <\slide>
      <tit|\<#589E\>\<#957F\>\<#7684\>\<#9636\>\V<math|\<Theta\>>\<#8BB0\>\<#6CD5\>>

      <\definition>
        \<#4EE4\>n\<#662F\>\<#4E00\>\<#4E2A\>\<#53C2\>\<#6570\>\<#FF0C\>\<#4F5C\>\<#4E3A\>\<#95EE\>\<#9898\>\<#89C4\>\<#6A21\>\<#7684\>\<#4E00\>\<#79CD\>\<#5EA6\>\<#91CF\>\<#FF0C\>\<#4EE4\><math|R<around*|(|n|)>>\<#662F\>\<#4E00\>\<#4E2A\>\<#8BA1\>\<#7B97\>\<#8FC7\>\<#7A0B\>\<#5728\>\<#5904\>\<#7406\>\<#89C4\>\<#6A21\>\<#4E3A\>n\<#7684\>\<#95EE\>\<#9898\>\<#6240\>\<#9700\>\<#8981\>\<#7684\>\<#8D44\>\<#6E90\>\<#91CF\>\<#3002\>\<#5982\>\<#679C\>\<#5B58\>\<#5728\>\<#4E0E\><math|n>\<#65E0\>\<#5173\>\<#7684\>\<#6574\>\<#6570\><math|k<rsub|1>>\<#548C\><math|k<rsub|2>>\<#FF0C\>\<#4F7F\>\<#5F97\>

        <\equation*>
          k<rsub|1>*f<around*|(|n|)>\<leqslant\>R<around*|(|n|)>\<leqslant\>k<rsub|2>*f<around*|(|n|)>
        </equation*>

        \<#5BF9\>\<#4EFB\>\<#4F55\>\<#8DB3\>\<#591F\>\<#5927\>\<#7684\><math|n>\<#503C\>\<#90FD\>\<#6210\>\<#7ACB\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#79F0\><math|R<around*|(|n|)>>\<#5177\>\<#6709\><math|\<Theta\><around*|(|f<around*|(|n|)>|)>>\<#7684\><dfn|\<#589E\>\<#957F\>\<#9636\>>\<#3002\>
      </definition>

      <\example>
        \<#67D0\>\<#67D0\>\<#7B97\>\<#6CD5\>\<#7684\>\<#65F6\>\<#95F4\>\<#590D\>\<#6742\>\<#5EA6\>\<#4E3A\><math|\<Theta\><around*|(|n<rsup|2>|)>>
      </example>

      <\equation*>
        <tabular*|<tformat|<table|<row|<cell|\<#8BA1\>\<#7B97\>\<#8FC7\>\<#7A0B\>\<#6240\>\<#9700\>\<#7684\>\<#6B65\>\<#9AA4\>\<#6570\>>|<cell|>|<cell|\<#589E\>\<#957F\>\<#9636\>>>|<row|<cell|n<rsup|2>>|<cell|>|<cell|>>|<row|<cell|1000n<rsup|2>>|<cell|\<Rightarrow\>>|<cell|\<Theta\><around*|(|n<rsup|2>|)>>>|<row|<cell|3*n<rsup|2>+10*n+17>|<cell|>|<cell|>>>>>
      </equation*>

      \;

      \;
    </slide>

    <\slide>
      <tit|\<#7B97\>\<#6CD5\>\<#5BFC\>\<#8BBA\>\<#5BF9\><math|\<Theta\>>\<#8BB0\>\<#53F7\>\<#7684\>\<#5B9A\>\<#4E49\>>

      <\definition>
        For a given function <math|g<around*|(|n|)>>, we denote <samp|the set
        of funtions> by <math|\<Theta\><around*|(|g<around*|(|n|)>|)>>

        <\equation*>
          \<Theta\><around*|(|g<around*|(|n|)>|)>=<around*|{|f<around*|(|n|)>:
          \<exists\>c<rsub|1>\<gtr\>0,c<rsub|2>\<gtr\>0,n<rsub|0>,\<forall\>n\<geqslant\>n<rsub|0>,0\<leqslant\>c<rsub|1>*g<around*|(|n|)>\<leqslant\>f<around*|(|n|)>\<leqslant\>c<rsub|2>*g<around*|(|n|)>|}>
        </equation*>
      </definition>

      <\definition>
        For a given function <math|g<around*|(|n|)>>, we denote the set of
        funtions by <math|O<around*|(|g<around*|(|n|)>|)>>

        <\equation*>
          O<around*|(|g<around*|(|n|)>|)>=<around*|{|f<around*|(|n|)>:\<exists\>c,n<rsub|0>,\<forall\>n\<gtr\>n<rsub|0>,0\<leqslant\>f<around*|(|n|)>\<leqslant\>c*g<around*|(|n|)>|}>
        </equation*>
      </definition>

      <\definition>
        For a given function <math|g(n)>, we denote the set of fuctions by
        <math|\<Omega\><around*|(|g<around*|(|n|)>|)>>

        <\equation*>
          \<Omega\><around*|(|g<around*|(|n|)>|)>=<around*|{|f<around*|(|n|)>:\<exists\>c,n<rsub|0>,\<forall\>n\<geqslant\>n<rsub|0>,0\<leqslant\>c*g<around*|(|n|)>\<leqslant\>f<around*|(|n|)>|}>
        </equation*>
      </definition>
    </slide>

    <\slide>
      <tit|\<#94FE\>\<#8868\>\<#7684\>\<#5B9A\>\<#4E49\>>

      <with|gr-mode|<tuple|group-edit|edit-props>|gr-frame|<tuple|scale|0.707097cm|<tuple|0.420873gw|0.443453gh>>|gr-geometry|<tuple|geometry|0.986667par|0.6par|center>|gr-grid|<tuple|empty>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-arrow-end|\<gtr\>|gr-auto-crop|true|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-transformation|<tuple|<tuple|0.9950041652780258|0.0|-0.09983341664682815|0.0>|<tuple|0.0|1.0|0.0|0.0>|<tuple|0.09983341664682815|0.0|0.9950041652780258|0.0>|<tuple|0.0|0.0|0.0|1.0>>|magnify|0.840896415|gr-snap|<tuple|control
      point|grid point|grid curve point|curve-grid
      intersection>|<graphics||<with|magnify|0.8408964147443614|line-width|2ln|<cline|<point|-4|3>|<point|-4.0|2.0>|<point|-3.0|2.0>|<point|-3.0|3.0>>>|<with|magnify|0.8408964147443614|line-width|2ln|<cline|<point|-3|3>|<point|-2.0|3.0>|<point|-2.0|2.0>|<point|-3.0|2.0>>>|<with|magnify|0.8408964147443614|point-size|4ln|<point|-3.50102|2.52259>>|<with|magnify|0.8408964147443614|point-size|4ln|<point|-2.5|2.5>>|<with|magnify|0.8408964147443614|line-width|2ln|<cline|<point|-4|1>|<point|-4.0|0.0>|<point|-3.0|0.0>|<point|-3.0|1.0>>>|<with|magnify|0.8408964147443614|line-width|2ln|<cline|<point|-1|3>|<point|-1.0|2.0>|<point|0.0|2.0>|<point|0.0|3.0>>>|<with|magnify|0.8408964147443614|line-width|2ln|<cline|<point|0|3>|<point|0.0|2.0>|<point|1.0|2.0>|<point|1.0|3.0>>>|<with|magnify|0.8408964147443614|point-size|4ln|<point|-0.5|2.5>>|<with|magnify|0.8408964147443614|point-size|4ln|<point|0.5|2.5>>|<with|magnify|0.8408964147443614|point-size|4ln|<point|3.5|2.5>>|<with|magnify|0.8408964147443614|line-width|2ln|<cline|<point|3.0|3.0>|<point|3.9999999999999987|3.0>|<point|3.9999999999999987|2.0>|<point|3.0|2.0>>>|<with|magnify|0.8408964147443614|point-size|4ln|<point|2.5|2.5>>|<with|magnify|0.8408964147443614|line-width|2ln|<cline|<point|1.9999999999999996|3.0>|<point|1.9999999999999996|2.0>|<point|3.0|2.0>|<point|3.0|3.0>>>|<with|magnify|0.8408964147443614|line-width|2ln|<cline|<point|5.999999999999999|3.0000000000000004>|<point|6.999999999999997|3.0000000000000004>|<point|6.999999999999997|2.0>|<point|5.999999999999999|2.0>>>|<with|magnify|0.8408964147443614|point-size|4ln|<point|5.499999999999999|2.5000000000000004>>|<with|magnify|0.8408964147443614|line-width|2ln|<cline|<point|4.999999999999998|3.0000000000000004>|<point|4.999999999999998|2.0>|<point|5.999999999999999|2.0>|<point|5.999999999999999|3.0000000000000004>>>|<with|magnify|0.8408964147443614|<cline|<point|-1.0000000000000004|1.0>|<point|-1.0000000000000004|-5.551115123125784e-17>|<point|4.579669976578771e-16|-5.551115123125784e-17>|<point|4.579669976578771e-16|1.0>>>|<with|magnify|0.8408964147443614|line-width|2ln|<cline|<point|-1.0000000000000004|1.0>|<point|-1.0000000000000004|-5.551115123125784e-17>|<point|4.579669976578771e-16|-5.551115123125784e-17>|<point|4.579669976578771e-16|1.0>>>|<with|magnify|0.8408964147443614|line-width|2ln|<cline|<point|2.0|1.0>|<point|2.0|-3.885780586188048e-16>|<point|3.0|-3.885780586188048e-16>|<point|3.0|1.0>>>|<with|magnify|0.8408964147443614|<cline|<point|5.0|1.0>|<point|5.0|-8.326672684688674e-17>|<point|6.000000000000001|-8.326672684688674e-17>|<point|6.000000000000001|1.0>>>|<with|magnify|0.8408964147443614|line-width|2ln|<cline|<point|5.0|1.0>|<point|5.0|-8.326672684688674e-17>|<point|6.000000000000001|-8.326672684688674e-17>|<point|6.000000000000001|1.0>>>|<with|magnify|0.8408964147443614|<text-at|<with|font-base-size|14|1>|<point|-3.593097631961901|0.3682762270141557>>>|<with|magnify|0.8408964147443614|<text-at|<with|font-base-size|14|2>|<point|-0.6449913157577223|0.3075032520986105>>>|<with|magnify|0.8408964147443614|<text-at|<with|font-base-size|14|3>|<point|2.348511608144202|0.3075048443957941>>>|<with|magnify|0.8408964147443614|<text-at|<with|font-base-size|14|4>|<point|5.342030339128242|0.2775770710333033>>>|<with|arrow-end|\<gtr\>|magnify|0.8408964147443614|line-width|2ln|<line|<point|-3.501024677268475|2.5225909878829595>|<point|-3.501024677268475|1.0225909878829582>>>|<with|arrow-end|\<gtr\>|magnify|0.8408964147443614|line-width|2ln|<line|<point|-0.48894846585593915|2.561781411894845>|<point|-0.48894846585593915|1.061781411894845>>>|<with|arrow-end|\<gtr\>|magnify|0.8408964147443614|line-width|2ln|<line|<point|2.495524431244153|2.5459183332822795>|<point|2.495524431244153|1.0459183332822821>>>|<with|arrow-end|\<gtr\>|magnify|0.8408964147443614|line-width|2ln|<line|<point|5.5123046324007365|2.5369012998207285>|<point|5.5123046324007365|1.0369012998207283>>>|<with|arrow-end|\<gtr\>|magnify|0.8408964147443614|line-width|2ln|<line|<point|-2.5203512558408128|2.51236>|<point|-1.020351255840812|2.51236>>>|<with|arrow-end|\<gtr\>|magnify|0.8408964147443614|line-width|2ln|<line|<point|0.4725050759228232|2.48776>|<point|1.9725050759228244|2.48776>>>|<with|arrow-end|\<gtr\>|magnify|0.8408964147443614|line-width|2ln|<line|<point|3.464129235987035|2.51236>|<point|4.964129235987034|2.51236>>>|<with|arrow-end|\<gtr\>|magnify|0.8408964147443614|line-width|2ln|<line|<point|-5|2.5>|<point|-4.0|2.5>>>|<with|arrow-end|\<gtr\>|magnify|0.8408964147443614|line-width|2ln|<line|<point|7|3>|<point|6.0|2.0>>>>>

      <\scm-code>
        (cons 1 (cons 2 (cons 3 (cons 4 ()))))
      </scm-code>

      <slink|https://srfi.schemers.org/srfi-1/srfi-1.html>

      <\session|scheme|default>
        <\unfolded-io|Scheme] >
          ()
        <|unfolded-io>
          ()
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (list 1 2 3 4)
        <|unfolded-io>
          (1 2 3 4)
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (cons 0 (list 1 2 3 4 5))
        <|unfolded-io>
          (0 1 2 3 4 5)
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (cdr (list 1 2 3 4 5))
        <|unfolded-io>
          (2 3 4 5)
        </unfolded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>
    </slide>

    <\slide>
      <tit|\<#6C42\>\<#94FE\>\<#8868\>\<#957F\>\<#5EA6\>\<#7684\>\<#65F6\>\<#95F4\>\<#590D\>\<#6742\>\<#5EA6\>>

      <\session|scheme|default>
        <\unfolded-io|Scheme] >
          (eq? () (list ))
        <|unfolded-io>
          #t
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (define (list-length l)

          \ \ (if (eq? () l)

          \ \ \ \ \ \ 0

          \ \ \ \ \ \ (+ 1 (list-length (cdr l)))))
        <|unfolded-io>
          list-length
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (list-length (list 1 2 3 4))
        <|unfolded-io>
          4
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (define (list-min l)

          \ \ (if (= (list-length l) 1)

          \ \ \ \ \ \ (car l)

          \ \ \ \ \ \ (min (car l) (list-min (cdr l)))))
        <|unfolded-io>
          list-min
        </unfolded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>

      <\equation*>
        \<Theta\><around*|(|n|)>
      </equation*>

      <\equation*>
        O<around*|(|c*n|)>
      </equation*>
    </slide>

    <\slide>
      <tit|<scm|range(n)>\<#7684\>\<#65F6\>\<#95F4\>\<#590D\>\<#6742\>\<#5EA6\>>

      <\session|scheme|default>
        <\unfolded-io|Scheme] >
          (define (range n)

          \ \ (define (range-iter k n)

          \ \ \ \ (if (= k n)

          \ \ \ \ \ \ \ \ (list n)

          \ \ \ \ \ \ \ \ (cons k (range-iter (+ k 1) n))))

          \ \ (range-iter 1 n))
        <|unfolded-io>
          range
        </unfolded-io>

        <\unfolded-io|Scheme] >
          (range 3)
        <|unfolded-io>
          (1 2 3)
        </unfolded-io>

        <\input|Scheme] >
          (define (range n)

          \ \ (append (range (- n 1) (list n))))
        </input>
      </session>
    </slide>

    <\slide>
      <tit|\<#6C42\>\<#5E42\>>

      <\equation*>
        b<rsup|n>=<choice|<tformat|<table|<row|<cell|b\<cdot\>b<rsup|n-1>>|<cell|,n\<gtr\>1>>|<row|<cell|b<rsup|0>>|<cell|,n=0>>>>>
      </equation*>

      \;
    </slide>

    <\slide>
      <tit|\<#6700\>\<#5927\>\<#516C\>\<#7EA6\>\<#6570\>>

      <\session|scheme|default>
        <\input>
          Scheme]\ 
        <|input>
          (define (gcd a b)

          \ \ (if (= b 0)

          \ \ \ \ \ \ a

          \ \ \ \ \ \ (gcd b (remainder a b))))
        </input>
      </session>

      \<#8FD9\>\<#4E2A\>\<#4F8B\>\<#5B50\>\<#7684\>\<#7279\>\<#70B9\>\<#5728\>\<#4E8E\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#4E0D\>\<#77E5\>\<#9053\>\<#6C42\>\<#4E24\>\<#4E2A\>\<#6570\>\<#7684\>\<#6700\>\<#5927\>\<#516C\>\<#7EA6\>\<#6570\>\<#FF0C\>\<#5230\>\<#5E95\>\<#9700\>\<#8981\>\<#51E0\>\<#4E2A\>\<#8FED\>\<#4EE3\>\<#6B65\>\<#9AA4\>\<#3002\>

      <\exercise>
        \<#7ED3\>\<#5408\>\<#4E66\>\<#672C\>\<#4E0A\>\<#7684\>\<#8BB2\>\<#89E3\>\<#FF0C\>\<#81EA\>\<#5DF1\>\<#6574\>\<#7406\>\<#4E00\>\<#4E0B\>\<#6B27\>\<#51E0\>\<#91CC\>\<#5F97\>\<#7B97\>\<#6CD5\>\<#7684\>\<#589E\>\<#957F\>\<#9636\>\<#4E3A\><math|\<Theta\><around*|(|log
        n|)>>\<#7684\>\<#8BC1\>\<#660E\>\<#3002\>
      </exercise>
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