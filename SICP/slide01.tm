<TeXmacs|2.1.2>

<style|<tuple|beamer|no-page-numbers|chinese>>

<\body>
  <\hide-preamble>
    <assign|dfn|<macro|x|<strong|<arg|x>>>>
  </hide-preamble>

  <screens|<\shown>
    <tit|\<#96F6\>\<#57FA\>\<#7840\>SICP\<#FF1A\>\<#7B2C\>1\<#8BFE\>>

    \;

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
      </cell>>>>
    </wide-tabular>

    \;

    \;
  </shown>|<\hidden>
    <tit|\<#7F16\>\<#7A0B\>\<#7684\>\<#57FA\>\<#672C\>\<#539F\>\<#7406\>>

    \;

    \;

    \;

    \;

    \;

    <\folded-documentation>
      \<#7F16\>\<#7A0B\>\<#FF08\>\<#7A0B\>\<#5E8F\>\<#8BBE\>\<#8BA1\>\<#FF09\>\<#7684\>\<#57FA\>\<#672C\>\<#539F\>\<#7406\><with|color|red|\<#662F\>>\<#4EC0\>\<#4E48\>
    <|folded-documentation>
      <\with|color|dark cyan|par-mode|center>
        <huge|\<#5BF9\>\<#6570\>\<#636E\>\<#548C\>\<#8BA1\>\<#7B97\>\<#7684\>\<#7EC4\>\<#5408\>\<#548C\>\<#62BD\>\<#8C61\>>
      </with>
    </folded-documentation>
  </hidden>|<\hidden>
    <tit|\<#7F16\>\<#7A0B\>\<#7684\>\<#57FA\>\<#672C\>\<#539F\>\<#7406\>>

    <\folded-documentation>
      \<#57FA\>\<#672C\>\<#6982\>\<#5FF5\>
    <|folded-documentation>
      <\folded-std>
        \<#539F\>\<#8BED\><glossary-explain|primitive|\<#539F\>\<#8BED\>>
      <|folded-std>
        <\itemize>
          <item>\<#6570\>\<#636E\>\<#539F\>\<#8BED\>

          <item>\<#51FD\>\<#6570\>\<#539F\>\<#8BED\>
        </itemize>
      </folded-std>

      <\folded-std>
        \<#8868\>\<#8FBE\>\<#5F0F\><glossary-explain|expression|\<#8868\>\<#8FBE\>\<#5F0F\>>
      <|folded-std>
        \<#539F\>\<#8BED\>\<#6216\>\<#8005\>\<#7EC4\>\<#5408\>\<#5F0F\>
      </folded-std>

      <\folded-std>
        \<#51FD\>\<#6570\>
      <|folded-std>
        <\definition>
          \<#64CD\>\<#7EB5\>\<#6570\>\<#636E\>\<#FF08\>\<#8BA1\>\<#7B97\>\<#FF09\>\<#7684\>\<#89C4\>\<#5219\>\<#7684\>\<#63CF\>\<#8FF0\>\<#FF0C\>\<#79F0\>\<#4E3A\><dfn|\<#51FD\>\<#6570\>><glossary-explain|procedure|\<#51FD\>\<#6570\>>\<#3002\>\<#51FD\>\<#6570\>\<#5206\>\<#4E3A\>\<#539F\>\<#8BED\>\<#51FD\>\<#6570\>\<#548C\>\<#590D\>\<#5408\>\<#51FD\>\<#6570\>\<#3002\>
        </definition>
      </folded-std>

      <\folded-std>
        \<#7EC4\>\<#5408\><glossary-explain|combination|\<#7EC4\>\<#5408\>>
      <|folded-std>
        \<#505A\>\<#7EC4\>\<#5408\>
      </folded-std>

      <\folded-std>
        \<#62BD\>\<#8C61\><glossary-explain|abstraction|\<#62BD\>\<#8C61\>>
        \<#FF08\>\<#505A\>\<#62BD\>\<#8C61\>\<#FF09\>
      <|folded-std>
        \<#505A\>\<#62BD\>\<#8C61\>
      </folded-std>
    </folded-documentation>

    <\folded-documentation>
      \<#57FA\>\<#672C\>\<#6982\>\<#5FF5\>\<#7684\>\<#56FE\>\<#793A\>
    <|folded-documentation>
      <tree|\<#8868\>\<#8FBE\>\<#5F0F\>|<tree|\<#539F\>\<#8BED\>|\<#6570\>\<#636E\>\<#539F\>\<#8BED\>|\<#51FD\>\<#6570\>\<#539F\>\<#8BED\>>|<tree|\<#7EC4\>\<#5408\>\<#5F0F\>|(\<#8868\>\<#8FBE\>\<#5F0F\>0
      \<#8868\>\<#8FBE\>\<#5F0F\>1 \<#8868\>\<#8FBE\>\<#5F0F\>2 <text-dots>
      \<#8868\>\<#8FBE\>\<#5F0F\>N)>>
    </folded-documentation>

    \;

    \;
  </hidden>|<\hidden>
    <tit|\<#8868\>\<#8FBE\>\<#5F0F\>>

    <\definition>
      \<#5728\>Scheme\<#8BED\>\<#8A00\>\<#4E2D\>\<#FF0C\>\<#5C06\>\<#4E00\>\<#7EC4\>\<#8868\>\<#8FBE\>\<#5F0F\>\<#653E\>\<#5728\>\<#5C0F\>\<#62EC\>\<#53F7\>\<#91CC\>\<#9762\>\<#5F62\>\<#6210\>\<#4E00\>\<#4E2A\>\<#65B0\>\<#7684\>\<#8868\>\<#8FBE\>\<#5F0F\>\<#4EE5\>\<#8868\>\<#793A\>\<#5E94\>\<#7528\>\<#4E00\>\<#4E2A\>\<#51FD\>\<#6570\>\<#FF0C\>\<#79F0\>\<#4E3A\><dfn|\<#505A\>\<#7EC4\>\<#5408\>>\<#6216\>\<#8005\><dfn|\<#7EC4\>\<#5408\>>\<#FF0C\>\<#800C\>\<#8FD9\>\<#7C7B\>\<#65B0\>\<#7684\>\<#8868\>\<#8FBE\>\<#5F0F\>\<#79F0\>\<#4E3A\><dfn|\<#7EC4\>\<#5408\>\<#5F0F\>><glossary-explain|combinations|\<#7EC4\>\<#5408\>\<#5F0F\>>\<#3002\>\<#7EC4\>\<#5408\>\<#5F0F\>\<#4E2D\>\<#6700\>\<#5DE6\>\<#8FB9\>\<#7684\>\<#5143\>\<#7D20\>\<#79F0\>\<#4E3A\><dfn|\<#64CD\>\<#4F5C\>\<#7B26\>>\<#FF0C\>\<#5269\>\<#4E0B\>\<#7684\>\<#5143\>\<#7D20\>\<#662F\><dfn|\<#64CD\>\<#4F5C\>\<#6570\>>\<#3002\>
    </definition>

    REPL\<#FF1A\><verbatim|Read-Eval-Print> Loop
    \<#8BFB\>\<#53D6\>\<rightarrow\>\<#6C42\>\<#503C\>\<rightarrow\>\<#6253\>\<#5370\>
    \<#5FAA\>\<#73AF\> \<#FF08\>\<#4E3B\>\<#4F53\>\<#FF1A\>Scheme\<#89E3\>\<#91CA\>\<#5668\>\<#FF09\>

    <\session|scheme|default>
      <\folded-io|Scheme] >
        486 ; \<#5341\>\<#8FDB\>\<#5236\>
      <|folded-io>
        486
      </folded-io>

      <\folded-io|Scheme] >
        (+ 137 349) ; \<#52A0\>\<#6CD5\>
      <|folded-io>
        486
      </folded-io>

      <\folded-io|Scheme] >
        (* 1 2 3)
      <|folded-io>
        6
      </folded-io>

      <\folded-io|Scheme] >
        (/ 3.0 2)
      <|folded-io>
        1.5
      </folded-io>

      <\folded-io|Scheme] >
        (+ (+ 1 3) (/ 3.0 2))
      <|folded-io>
        5.5
      </folded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <small-figure|<tree|\<#64CD\>\<#4F5C\>\<#7B26\>|\<#7B2C\>1\<#4E2A\>\<#64CD\>\<#4F5C\>\<#6570\>|\<#7B2C\>2\<#64CD\>\<#4F5C\>\<#6570\>|<text-dots>|\<#7B2C\>N\<#4E2A\>\<#64CD\>\<#4F5C\>\<#6570\>>|\<#64CD\>\<#4F5C\>\<#7B26\>\<#548C\>\<#64CD\>\<#4F5C\>\<#6570\>><small-figure|<tree|+|137|349>|\<#4E00\>\<#4E2A\>\<#5177\>\<#4F53\>\<#7684\>\<#4F8B\>\<#5B50\>>

    \;

    \;
  </hidden>|<\hidden>
    <tit|\<#547D\>\<#540D\>\<#4E0E\>\<#73AF\>\<#5883\>>

    <\session|scheme|default>
      <\folded-io|Scheme] >
        (define pi 3.14159)
      <|folded-io>
        <errput|define: pi is immutable>
      </folded-io>

      <\folded-io|Scheme] >
        (define \<#534A\>\<#5F84\> 1)
      <|folded-io>
        1
      </folded-io>

      <\folded-io|Scheme] >
        (* pi (* \<#534A\>\<#5F84\> \<#534A\>\<#5F84\>))\ 
      <|folded-io>
        3.141592653589793
      </folded-io>

      <\folded-io|Scheme] >
        (define \<#5468\>\<#957F\> (* 2 (* pi \<#534A\>\<#5F84\>)))
      <|folded-io>
        6.283185307179586
      </folded-io>

      <\folded-io|Scheme] >
        \<#5468\>\<#957F\>
      <|folded-io>
        6.283185307179586
      </folded-io>
    </session>

    \;

    <\with|par-columns|2>
      <with|gr-mode|<tuple|edit|text-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-auto-crop|true|<graphics||<circle|<point|0|0>|<point|2.0|0.0>>|<with|arrow-end|\<gtr\>|<line|<point|0|0>|<point|2.0|0.0>>>|<text-at|O|<point|-0.2|-0.3>>|<text-at|r|<point|0.8|0.2>>|<text-at|C|<point|-1.8|1.6>>>>

      <\equation*>
        C=2*\<pi\>*r
      </equation*>

      <\equation*>
        S=\<pi\>*r<rsup|2>
      </equation*>
    </with>
  </hidden>|<\hidden>
    <tit|\<#7EC4\>\<#5408\>\<#5F0F\>\<#7684\>\<#6C42\>\<#503C\>>

    <\render-code>
      \<#5BF9\>\<#7EC4\>\<#5408\>\<#5F0F\>\<#6C42\>\<#503C\>\<#FF08\>\<#9012\>\<#5F52\>\<#FF09\>

      \<#7B2C\>\<#4E00\>\<#6B65\>\<#FF1A\>\<#5BF9\>\<#7EC4\>\<#5408\>\<#5F0F\>\<#7684\>\<#5B50\>\<#8868\>\<#8FBE\>\<#5F0F\>\<#6C42\>\<#503C\>

      \<#7B2C\>\<#4E8C\>\<#6B65\>\<#FF1A\>\<#5BF9\>\<#53C2\>\<#6570\>\<#5E94\>\<#7528\>\<#51FD\>\<#6570\>
    </render-code>

    <\with|par-columns|2>
      <\session|scheme|default>
        <\folded-io|Scheme] >
          (* (+ 2 (* 4 6))

          \ \ \ (+ 3 5 7)) ; \<#7EC4\>\<#5408\>\<#5F0F\>
        <|folded-io>
          390
        </folded-io>

        <\input|Scheme] >
          (* <with|color|red|(+ 2 (* 4 6))>

          \ \ \ (+ 3 5 7))
        </input>

        <\input|Scheme] >
          (* (+ 2 <with|color|red|(* 4 6)>)

          \ \ \ (+ 3 5 7))
        </input>

        <\input|Scheme] >
          (* (+ 2 24)

          \ \ \ (+ 3 5 7))
        </input>

        <\input|Scheme] >
          (* <with|color|red|(+ 2 24)>

          \ \ \ (+ 3 5 7))
        </input>

        <\input|Scheme] >
          (* 26

          \ \ \ (+ 3 5 7))
        </input>

        <\input|Scheme] >
          (* 26

          \ \ \ <with|color|red|(+ 3 5 7)>)
        </input>

        <\folded-io|Scheme] >
          (* 26 15) ; \<#7B2C\>\<#4E00\>\<#6B65\>\<#5DF2\>\<#5B8C\>\<#6210\>
        <|folded-io>
          390
        </folded-io>

        <\input|Scheme] >
          390 ; \<#7B2C\>\<#4E8C\>\<#6B65\>\<#5DF2\>\<#5B8C\>\<#6210\>
        </input>
      </session>
    </with>

    <tree|390|*|<tree|26|+|2|<tree|24|*|4|6>>|<tree|15|+|3|5|7>>
  </hidden>|<\hidden>
    <tit|\<#590D\>\<#5408\>\<#51FD\>\<#6570\><glossary-explain|compound
    procedure|\<#590D\>\<#5408\>\<#51FD\>\<#6570\>>>

    \<#51FD\>\<#6570\>\<#5206\>\<#4E3A\>\<#4E24\>\<#79CD\>\<#FF0C\>\<#539F\>\<#8BED\>\<#51FD\>\<#6570\>\<#548C\>\<#590D\>\<#5408\>\<#51FD\>\<#6570\>\<#3002\>\<#6BD4\>\<#5982\>\<#52A0\>\<#51CF\>\<#4E58\>\<#9664\>\<#5C31\>\<#662F\>\<#539F\>\<#8BED\>\<#51FD\>\<#6570\>\<#3002\>\<#7531\>\<#7528\>\<#6237\>\<#81EA\>\<#5B9A\>\<#4E49\>\<#7684\>\<#51FD\>\<#6570\>\<#79F0\>\<#4E3A\>\<#590D\>\<#5408\>\<#51FD\>\<#6570\>\<#3002\>

    <\equation*>
      \<#6C42\>\<#5E73\>\<#65B9\><around*|(|x|)>=x<rsup|2>
    </equation*>

    <\session|scheme|default>
      <\folded-io|Scheme] >
        (define (\<#6C42\>\<#5E73\>\<#65B9\> x) (* x x))
      <|folded-io>
        \<less\>#6C42\<gtr\>\<less\>#5E73\<gtr\>\<less\>#65B9\<gtr\>
      </folded-io>

      <\folded-io|Scheme] >
        (\<#6C42\>\<#5E73\>\<#65B9\> 3)
      <|folded-io>
        9
      </folded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <\scm-code>
      (define (<with|color|red|\<langle\>\<#51FD\>\<#6570\>\<#540D\>\<rangle\>
      ><with|color|brown|\<langle\>\<#5F62\>\<#5F0F\>\<#53C2\>\<#6570\>\<#5217\>\<#8868\>\<rangle\>>)
      <with|color|dark cyan|\<langle\>\<#4E3B\>\<#4F53\>\<rangle\>>)
    </scm-code>

    <\equation*>
      \<#6C42\>\<#5E73\>\<#65B9\>\<#548C\><around*|(|x,y|)>=x<rsup|2>+y<rsup|2>
    </equation*>

    <\session|scheme|default>
      <\folded-io|Scheme] >
        (define (\<#6C42\>\<#5E73\>\<#65B9\>\<#548C\> x y) (+
        (\<#6C42\>\<#5E73\>\<#65B9\> x) (\<#6C42\>\<#5E73\>\<#65B9\> y)))
      <|folded-io>
        \<less\>#6C42\<gtr\>\<less\>#5E73\<gtr\>\<less\>#65B9\<gtr\>\<less\>#548C\<gtr\>
      </folded-io>

      <\folded-io|Scheme] >
        (\<#6C42\>\<#5E73\>\<#65B9\>\<#548C\> 1 2)
      <|folded-io>
        5
      </folded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    \;
  </hidden>|<\hidden>
    <tit|\<#5E94\>\<#7528\>\<#4E00\>\<#4E2A\>\<#51FD\>\<#6570\>\<#7684\>\<#4EE3\>\<#6362\>\<#6A21\>\<#578B\><glossary-explain|substitution
    model|\<#4EE3\>\<#6362\>\<#6A21\>\<#578B\>>\<#2014\>\<#2014\>\<#6B63\>\<#5E38\>\<#5E8F\>\<#6C42\>\<#503C\>>

    \;

    <\equation*>
      f<around*|(|a|)>=<around*|(|a+1|)><rsup|2>+<around*|(|a\<times\>2|)><rsup|2>
    </equation*>

    <\session|scheme|default>
      <\folded-io|Scheme] >
        (define (f a) (\<#6C42\>\<#5E73\>\<#65B9\>\<#548C\> (+ a 1) (* a 2)))
      <|folded-io>
        f
      </folded-io>

      <\folded-io|Scheme] >
        (f 5)
      <|folded-io>
        136
      </folded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <\itemize>
      <item>\<#5BF9\>\<#7EC4\>\<#5408\>\<#5F0F\>(f 5)\<#6C42\>\<#503C\>

      <item>\<#5C06\>\<#51FD\>\<#6570\>f\<#5E94\>\<#7528\>\<#5230\>\<#53C2\>\<#6570\>5\<#4E0A\>\<#9762\>\<#FF08\>\<#6CE8\>\<#610F\>\<#53C2\>\<#6570\>\<#3001\>\<#5F62\>\<#5F0F\>\<#53C2\>\<#6570\>\<#3001\>\<#64CD\>\<#4F5C\>\<#6570\>\<#8FD9\>\<#4E09\>\<#4E2A\>\<#6982\>\<#5FF5\>\<#7684\>\<#533A\>\<#522B\>\<#FF09\>
    </itemize>

    <paragraph|\<#6B63\>\<#5E38\>\<#5E8F\>\<#6C42\>\<#503C\>>

    <\folded-std>
      <scm|(\<#6C42\>\<#5E73\>\<#65B9\>\<#548C\> <with|color|red|(+ a 1)>
      <with|color|red|(* a 2)>)>
    <|folded-std>
      <\folded-std>
        <scm|(\<#6C42\>\<#5E73\>\<#65B9\>\<#548C\> <with|color|red|(+ 5 1)>
        <with|color|red|(* 5 2)>)>
      <|folded-std>
        <\folded-std>
          <with|color|red|<scm|(\<#6C42\>\<#5E73\>\<#65B9\>\<#548C\> 6 10)>>
        <|folded-std>
          <\folded-std>
            <scm|(+ <with|color|red|(\<#6C42\>\<#5E73\>\<#65B9\> 6)>
            <with|color|red|(\<#6C42\>\<#5E73\>\<#65B9\> 10)>)>
          <|folded-std>
            <\folded-std>
              <scm|(+ <with|color|red|(* 6 6)> <with|color|red|(* 10 10)>)>
            <|folded-std>
              <\folded-std>
                <scm|(+ 36 100)>
              <|folded-std>
                136
              </folded-std>
            </folded-std>
          </folded-std>
        </folded-std>
      </folded-std>
    </folded-std>
  </hidden>|<\hidden>
    <tit|\<#5E94\>\<#7528\>\<#4E00\>\<#4E2A\>\<#51FD\>\<#6570\>\<#7684\>\<#4EE3\>\<#6362\>\<#6A21\>\<#578B\>\<#2014\>\<#2014\>\<#5E94\>\<#7528\>\<#5E8F\>\<#6C42\>\<#503C\>>

    <paragraph|\<#5E94\>\<#7528\>\<#5E8F\>\<#6C42\>\<#503C\>>

    <\folded-std>
      (\<#6C42\>\<#5E73\>\<#65B9\>\<#548C\> (+ <with|color|red|a> 1) (*
      <with|color|red|a> 2))
    <|folded-std>
      <\folded-std>
        (<with|color|red|\<#6C42\>\<#5E73\>\<#65B9\>\<#548C\>> (+ 5 1) (* 5
        2))
      <|folded-std>
        <\folded-std>
          (+ <with|color|red|(\<#6C42\>\<#5E73\>\<#65B9\> (+ 5 1))>
          <with|color|red|(\<#6C42\>\<#5E73\>\<#65B9\> (* 5 2)>)
        <|folded-std>
          <\folded-std>
            (+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))
          <|folded-std>
            <\folded-std>
              (+ 36 100)
            <|folded-std>
              136
            </folded-std>
          </folded-std>
        </folded-std>
      </folded-std>
    </folded-std>

    <\question>
      \<#5DF2\>\<#7ECF\>\<#6709\>\<#4E86\>\<#6B63\>\<#5E38\>\<#5E8F\>\<#6C42\>\<#503C\>\<#FF0C\>\<#4E3A\>\<#4EC0\>\<#4E48\>\<#8FD8\>\<#9700\>\<#8981\>\<#5E94\>\<#7528\>\<#5E8F\>\<#6C42\>\<#503C\>\<#FF1F\>
    </question>

    <\question>
      \<#6A21\>\<#578B\>\<#662F\>\<#4EC0\>\<#4E48\>\<#610F\>\<#601D\>\<#FF1F\>\<#548C\>\<#73B0\>\<#5728\>\<#5A92\>\<#4F53\>\<#4E0A\>\<#8BB2\>\<#7684\>\<#5927\>\<#6A21\>\<#578B\>\<#6709\>\<#4EC0\>\<#4E48\>\<#533A\>\<#522B\>\<#3002\>
    </question>
  </hidden>|<\hidden>
    <tit|\<#6761\>\<#4EF6\>\<#8868\>\<#8FBE\>\<#5F0F\>\<#548C\>\<#8C13\>\<#8BCD\>>

    <\equation*>
      <around|\||x|\|>=<around*|{|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|2|cell-halign|l>|<cwith|1|-1|3|3|cell-halign|l>|<table|<row|<cell|x>|<cell|<with|mode|text|if>>|<cell|x\<gtr\>0,>>|<row|<cell|0>|<cell|<with|mode|text|if>>|<cell|x=0,>>|<row|<cell|-x>|<cell|<with|mode|text|if>>|<cell|x\<less\>0.>>>>>|\<nobracket\>>
    </equation*>

    <\session|scheme|default>
      <\folded-io|Scheme] >
        (define (\<#6C42\>\<#7EDD\>\<#5BF9\>\<#503C\> x)

        \ \ (cond ((\<gtr\> x 0) x)

        \ \ \ \ \ \ \ \ ((= x 0) 0)

        \ \ \ \ \ \ \ \ ((\<less\> x 0) (- x))))
      <|folded-io>
        \<less\>#6C42\<gtr\>\<less\>#7EDD\<gtr\>\<less\>#5BF9\<gtr\>\<less\>#503C\<gtr\>
      </folded-io>

      <\folded-io|Scheme] >
        (\<#6C42\>\<#7EDD\>\<#5BF9\>\<#503C\> 1)
      <|folded-io>
        1
      </folded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    <\scm-code>
      (cond (\<langle\>\<#8C13\>\<#8BCD\>1\<rangle\>
      \<langle\>\<#8868\>\<#8FBE\>\<#5F0F\>1\<rangle\>)

      \ \ \ \ \ \ (\<langle\>\<#8C13\>\<#8BCD\>2\<rangle\>
      \<langle\>\<#8868\>\<#8FBE\>\<#5F0F\>2\<rangle\>)

      \ \ \ \ \ \ ...

      \ \ \ \ \ \ (\<langle\>\<#8C13\>\<#8BCD\>N\<rangle\>
      \<langle\>\<#8868\>\<#8FBE\>\<#5F0F\>N\<rangle\>))
    </scm-code>
  </hidden>|<\hidden>
    <tit|\<#603B\>\<#7ED3\>>

    \;

    <\the-glossary|gly>
      <glossary-2|primitive|\<#539F\>\<#8BED\>|<pageref|auto-2>>

      <glossary-2|expression|\<#8868\>\<#8FBE\>\<#5F0F\>|<pageref|auto-3>>

      <glossary-2|procedure|\<#51FD\>\<#6570\>|<pageref|auto-4>>

      <glossary-2|combination|\<#7EC4\>\<#5408\>|<pageref|auto-5>>

      <glossary-2|abstraction|\<#62BD\>\<#8C61\>|<pageref|auto-6>>

      <glossary-2|combinations|\<#7EC4\>\<#5408\>\<#5F0F\>|<pageref|auto-8>>

      <glossary-2|compound procedure|\<#590D\>\<#5408\>\<#51FD\>\<#6570\>|<pageref|auto-11>>

      <glossary-2|substitution model|\<#4EE3\>\<#6362\>\<#6A21\>\<#578B\>|<pageref|auto-12>>
    </the-glossary>
  </hidden>>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
    <associate|marked-color|pastel yellow>
    <associate|page-medium|beamer>
    <associate|page-screen-margin|false>
    <associate|preamble|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|primitive|?>>
    <associate|auto-10|<tuple|substitution model|?>>
    <associate|auto-11|<tuple|1|?>>
    <associate|auto-12|<tuple|2|?>>
    <associate|auto-13|<tuple|2|?>>
    <associate|auto-2|<tuple|expression|?>>
    <associate|auto-3|<tuple|procedure|?>>
    <associate|auto-4|<tuple|combination|?>>
    <associate|auto-5|<tuple|abstraction|?>>
    <associate|auto-6|<tuple|combinations|?>>
    <associate|auto-7|<tuple|1|?>>
    <associate|auto-8|<tuple|2|?>>
    <associate|auto-9|<tuple|compound procedure|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||\<#64CD\>\<#4F5C\>\<#7B26\>\<#548C\>\<#64CD\>\<#4F5C\>\<#6570\>>|<pageref|auto-7>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||\<#4E00\>\<#4E2A\>\<#5177\>\<#4F53\>\<#7684\>\<#4F8B\>\<#5B50\>>|<pageref|auto-8>>
    </associate>
    <\associate|gly>
      <tuple|normal|primitive|\<#539F\>\<#8BED\>|<pageref|auto-1>>

      <tuple|normal|expression|\<#8868\>\<#8FBE\>\<#5F0F\>|<pageref|auto-2>>

      <tuple|normal|procedure|\<#51FD\>\<#6570\>|<pageref|auto-3>>

      <tuple|normal|combination|\<#7EC4\>\<#5408\>|<pageref|auto-4>>

      <tuple|normal|abstraction|\<#62BD\>\<#8C61\>|<pageref|auto-5>>

      <tuple|normal|combinations|\<#7EC4\>\<#5408\>\<#5F0F\>|<pageref|auto-6>>

      <tuple|normal|compound procedure|\<#590D\>\<#5408\>\<#51FD\>\<#6570\>|<pageref|auto-9>>

      <tuple|normal|substitution model|\<#4EE3\>\<#6362\>\<#6A21\>\<#578B\>|<pageref|auto-10>>
    </associate>
    <\associate|toc>
      <with|par-left|<quote|3tab>|\<#6B63\>\<#5E38\>\<#5E8F\>\<#6C42\>\<#503C\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|3tab>|\<#5E94\>\<#7528\>\<#5E8F\>\<#6C42\>\<#503C\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|\<#672F\>\<#8BED\>\<#8868\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>