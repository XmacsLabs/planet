<TeXmacs|2.1.1>

<style|<tuple|projector|reddish|framed-theorems>>

<\body>
  <screens|<\shown>
    <doc-data|<doc-title|Calculus (1003)>|<doc-author|<author-data|<author-name|Yuliang
    Wang>>>>

    <section|Functions and Models>

    <\definition>
      A function is a <strong|rule> to assign to a variable, say <math|x>, an
      <strong|unique> value, say <math|y>. In general, we can write

      <\equation*>
        y=f<around*|(|x|)>.
      </equation*>

      Here

      <\itemize>
        <item><math|f> is the name of the function

        <item><math|x> is called the <strong|independent variable>

        <item><math|y> is called the <strong|dependent variable>
      </itemize>

      The set of values that <math|x> can take is called the <strong|domain>
      of the function. The set of all possible values of <math|y> constitute
      the <strong|range>.

      <math|f<around*|(|x|)>> is read <strong|f of x.>
    </definition>

    We can view a function as a machine, that takes the input <math|x>, and
    gives the output <math|y>.

    The <strong|graph> of a <with|ornament-border|0ln|function>
    <math|y=f<around*|(|x|)>> is the curve

    <\equation*>
      <around*|{|<around*|(|x,y|)>\<in\>\<bbb-R\><rsup|2>:y=f<around*|(|x|)>|}>.
    </equation*>

    <math|\<bbb-R\><rsup|2>>: the <math|x*y> plane

    <strong|Vertical Line Test>

    <with|gr-mode|<tuple|edit|document-at>|gr-frame|<tuple|scale|1cm|<tuple|0.490001gw|0.499999gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-color|red|<graphics||<with|arrow-end|\<gtr\>|<line|<point|-5.38727|-0.729059>|<point|-1.1991483732275|-0.672206374798462>>>|<with|arrow-end|\<gtr\>|<line|<point|-4.59765|-1.11439>|<point|-4.64818719252553|2.50521311339865>>>|<with|color|blue|<spline|<point|-5.03352|0.799636>|<point|-3.78908594815825|-0.192120385299103>|<point|-2.3993633469759|0.951242300219108>|<point|-1.42655752614825|0.818586961015338>>>|<with|color|blue|<math-at|y=f<around*|(|x|)>|<point|-1.43200936235893|0.422340771658782>>>|<with|color|blue|<math-at|x|<point|-1.08544|-0.842763>>>|<with|color|blue|<math-at|y|<point|-4.96404|2.45468>>>|<with|color|red|<line|<point|-2.85692609418133|2.10957038347715>|<point|-2.83166562165249|-1.14364229294602>>>|<with|color|red|<math-at|x=a|<point|-3.00579|-1.29517>>>|<with|color|red|<point|-2.84521|0.601097>>|<with|color|red|<math-at|<around*|(|a,b|)>|<point|-2.58887|0.486204>>>|<with|color|red|dash-style|11100|<line|<point|-2.84521|0.601097>|<point|-4.62122789064825|0.574318892063522>>>|<with|color|red|<math-at|b|<point|-4.47131|0.7831>>>|<with|color|red|<\document-at>
      This <with|color|blue|curve> represents the\ 

      graph of a function
    </document-at|<point|-4.93246|-1.80684>>>|<line|<point|0.481153|-0.783497>|<point|4.98511720203398|-0.78981355161437>>|<line|<point|1.10653|-1.40255>|<point|1.10021083963785|2.04648393898053>>|<with|color|blue|<spline|<point|0.658026|-0.00651536>|<point|2.88789945843152|-0.385530613088594>|<point|2.77419488197114|1.09262888089628>|<point|4.34079126875853|1.20633345735665>>>|<with|color|red|<line|<point|2.75524|1.89488>|<point|2.80577948654347|-1.50994253586341>>>|<with|color|red|<point|2.76722|1.08772>>|<with|color|red|<point|2.77621|0.482115>>|<with|color|red|<point|2.78921|-0.39335>>|<with|color|red|<math-at|x=a|<point|2.6668|-1.73103>>>|<with|color|red|<math-at|<around*|(|a,b|)>|<point|2.93843|-0.543454>>>|<with|color|red|<math-at|<around*|(|a,c|)>|<point|2.93843|0.517789>>>|<with|color|red|<math-at|<around*|(|a,d|)>|<point|2.87527|1.37057>>>|<with|color|red|<\document-at>
      This curve doesn't represent the

      graph of a function
    </document-at|<point|0.24111|-1.97108>>>>>

    <\em>
      <strong|piecewise defined function>
    </em>

    <\equation*>
      y=<choice|<tformat|<table|<row|<cell|x,>|<cell|x\<geqslant\>0>>|<row|<cell|-x>|<cell|x\<leqslant\>0>>>>>
    </equation*>

    This function can also be written as

    <\equation*>
      y=<around*|\||x|\|>.
    </equation*>

    <strong|symmetry> (even/odd functions)

    <strong|increasing/decreasing> functions

    <section|A catalog of essential functions>

    <\itemize>
      <item>linear functions

      <\equation*>
        y=m*x+b
      </equation*>

      where <math|m> is the <strong|slope>, and <math|b> is the
      <math|y>-<strong|intercept>.

      For a linear function, if <math|y<rsub|1>=m*x<rsub|1>+b,y<rsub|2>=m*x<rsub|2>+b>,
      then

      <\equation*>
        y<rsub|2>-y<rsub|1>=m*<around*|(|x<rsub|2>-x<rsub|1>|)>.
      </equation*>

      Graphing calculator: www.desmos.com

      <item>power functions

      <\equation*>
        y=x<rsup|a>
      </equation*>

      The property depends on the value of <math|a>.

      <\itemize>
        <item>If <math|a=2,4,6,\<cdots\>>, then it's an even function, and
        it's increasing function for <math|x\<geqslant\>0> and decreasing for
        <math|x\<leqslant\>0>.

        <item>If <math|a=1,3,5,\<cdots\>>, then it's an odd function, and
        it's increasing function for all <math|x>.

        <item>If <math|a=-2,-4,-6,\<cdots\>>, then it's an even function, and
        it's decreasing function for <math|x\<gtr\>0> and increasing for
        <math|x\<less\>0>.

        <item>If <math|a=-1,-3,-5,\<cdots\>>, then it's an odd function, and
        it's decreasing function for <math|x\<gtr\>0> or <math|x\<less\>0>.

        <item>If <math|a=<frac|1|2>,<frac|1|4>,<frac|1|6>,\<cdots\>>, then
        the function is defined only for <math|x\<geqslant\>0>, and it's an
        increasing function.

        <item> If <math|a=<frac|1|3>,<frac|1|5>,<frac|1|7>,\<cdots\>>, then
        the function is defined for all <math|x>, and it's an increasing
        function.

        <item>other cases: read the slides or book
      </itemize>

      <item>polynomials

      <\equation*>
        y=a<rsub|n>*x<rsup|n>+a<rsub|n-1>*x<rsup|n-1>+\<cdots\>+a<rsub|1>*x+a<rsub|0>,
      </equation*>

      where <math|n=0,1,2,<gap|>>is called the <strong|degree> of the
      polynomial, and <math|a<rsub|i>>'s are called the
      <strong|coefficients>. For example, <math|y=3*x<rsup|2>-x+5> is a
      polynomial of degree 2, or we call it a <strong|quadratic polynomial>,
      and <math|y=x<rsup|3>+2x<rsup|2>-10> is a polynomial of degree 3, also
      called a <strong|cubic polynomial>.

      The domain of any polynomial is <math|\<bbb-R\>=<around*|(|-\<infty\>,\<infty\>|)>>.

      <item>rational functions

      <\equation*>
        y=<frac|P<around*|(|x|)>|Q<around*|(|x|)>>,
      </equation*>

      where <math|P,Q> are both polynomials. For example

      <\equation*>
        y=<frac|x<rsup|2>-2x|4x<rsup|5>-5>
      </equation*>

      The domain of a rational function is all <math|x> except where
      <math|Q<around*|(|x|)>=0>.

      <item>algebraic functions: any function the can be obtained by
      addition, subtraction, multiplication, and raising to rational powers
      of <math|x>. For example

      <\equation*>
        y=<frac|x<rsup|2>+3*<sqrt|x>|x<rsup|3/2>-4>+10*x<rsup|9>.
      </equation*>

      <item>exponential functions

      <\equation*>
        y=b<rsup|x>,
      </equation*>

      where <math|b\<gtr\>0> is called the <strong|base>, <math|x> is called
      the <strong|exponent>.

      <item>logarithmic functions

      <\equation*>
        y=log<rsub|b>*x
      </equation*>

      they are actually the <strong|inverse functions> of exponential
      functions, i.e.

      <\equation*>
        y=log<rsub|b> x\<Longleftrightarrow\>x=b<rsup|y>
      </equation*>

      <item>trigonometric functions

      <\equation*>
        y=sin x,cos x,tan x,cot x,sec x,csc x
      </equation*>
    </itemize>

    Elementary building blocks:\ 

    <\enumerate>
      <item>power functions

      <item>exponential functions

      <item>logarithmic functions

      <item>trigonometric functions
    </enumerate>

    <section|New functions from old>

    <\itemize>
      <item>translations (move the graph up/down, left/right)

      <\itemize>
        <item>vertical translation

        <\equation*>
          y=f<around*|(|x|)>+c
        </equation*>

        <item>horizontal translation

        <\equation*>
          y=f<around*|(|x-c|)>
        </equation*>
      </itemize>

      <item>stretching and reflecting

      <\itemize>
        <item>vertical stretching/reflecting

        <\equation*>
          y=c*f<around*|(|x|)>
        </equation*>

        <item>horizontal stretching/reflecting

        <\equation*>
          y=f<around*|(|<frac|x|c>|)>
        </equation*>
      </itemize>

      <item>algebraic combinations

      <\equation*>
        f+g,f-g,f*g,<frac|f|g>
      </equation*>

      <item>composition

      <\equation*>
        f<around*|(|g<around*|(|x|)>|)>=<with|color|red|f\<circ\>g><around*|(|x|)>
      </equation*>

      read as <math|f> of <math|g> of <math|x>, or <math|f> composed with
      <math|g>

      <\example>
        If <math|f<around*|(|x|)>=x<rsup|2>+3*x> and
        <math|g<around*|(|x|)>=sin x>. Then

        <\itemize>
          <item><math|f\<circ\>g<around*|(|x|)>=f<around*|(|<with|color|red|g<around*|(|x|)>>|)>=<around*|(|<with|color|red|g<around*|(|x|)>>|)><rsup|2>+3*<with|color|red|g<around*|(|x|)>>=<around*|(|sin
          x|)><rsup|2>+3*sin x>

          <item><math|g\<circ\>f<around*|(|x|)>=g<around*|(|f<around*|(|x|)>|)>=sin
          f<around*|(|x|)>=sin <around*|(|x<rsup|2>+3*x|)>.>

          <item><math|f\<circ\>f<around*|(|x|)>=<around*|(|f<around*|(|x|)>|)><rsup|2>+3*f<around*|(|x|)>=<around*|(|x<rsup|2>+3*x|)><rsup|2>+3*<around*|(|x<rsup|2>+3*x|)>>

          <item><math|g\<circ\>g<around*|(|x|)>=sin g<around*|(|x|)>=sin
          <around*|(|sin x|)>.>
        </itemize>

        <\equation*>
          x<long-arrow|\<rubber-rightarrow\>|g>g<around*|(|x|)><draw-over||<with|gr-mode|<tuple|group-edit|move>|gr-arrow-end|\<gtr\>|<graphics|<with|arrow-end|\<gtr\>|<spline|<point|-0.669548|-0.0948158>|<point|0.0712844681466782|-0.505448757699781>|<point|0.638550580842532|-0.12444912976973>>>|<math-at|f\<circ\>g|<point|-0.161548652131134|-0.649382353921204>>>>|2cm><long-arrow|\<rubber-rightarrow\>|f>f<around*|(|g<around*|(|x|)>|)>
        </equation*>
      </example>

      <item>

      <item>

      <\example>
        Write the function <math|F<around*|(|x|)>=log<rsub|2>
        <sqrt|x<rsup|2>+1>> as a composition of 3 functions.

        Answer: Let <math|f<around*|(|x|)>=log<rsub|2>
        x,g<around*|(|x|)>=<sqrt|x>,h<around*|(|x|)>=x<rsup|2>+1>. Then

        <\equation*>
          F=f\<circ\>g\<circ\>h
        </equation*>
      </example>

      <item>Application example (compound interest): Suppose you deposit an
      amount of <math|u<rsub|0>> in an account with annual interest rate of
      <math|r>. The balance after <math|t> years, if the interest is
      compounded

      <\itemize>
        <item>annualy, then

        <\equation*>
          u<around*|(|t|)>=u<rsub|0>*<around*|(|1+r|)><rsup|t>
        </equation*>

        <item>monthly, then

        <\equation*>
          u<around*|(|t|)>=u<rsub|0>*<around*|(|1+<frac|r|12>|)><rsup|12*t>=u<rsub|0>*<around*|[|<around*|(|1+<frac|r|12>|)><rsup|12>|]><rsup|t>
        </equation*>

        <item><math|n> times per year, then

        <\equation*>
          u<around*|(|t|)>=u<rsub|0><around*|(|1+<frac|r|n>|)><rsup|n*t>
        </equation*>

        <item>continuously, then

        <\equation*>
          u<around*|(|t|)>=lim<rsub|n\<rightarrow\>\<infty\>>u<rsub|0><around*|(|1+<frac|r|n>|)><rsup|n*t>=lim<rsub|n\<rightarrow\>\<infty\>>u<rsub|0><around*|[|<around*|(|1+<frac|r|n>|)><rsup|n>|]><rsup|*t>=u<rsub|0>*e<rsup|r*t>,
        </equation*>

        where <math|e=2.71828\<cdots\>> is called the <strong|natural base>.
      </itemize>

      Here we are using the formula

      <\equation*>
        <with|color|blue|lim<rsub|n\<rightarrow\>\<infty\>><around*|(|1+<frac|1|n>|)><rsup|n>=e>
      </equation*>
    </itemize>

    \;

    \;

    \;

    \;

    \;

    \;

    \;
  </shown>>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|10>
    <associate|info-flag|minimal>
    <associate|magnification|2>
    <associate|ornament-shape|classic>
    <associate|page-medium|papyrus>
    <associate|par-columns|1>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Functions
      and Models> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>A
      catalog of essential functions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>New
      functions from old> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>