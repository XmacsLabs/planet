<TeXmacs|2.1.2>

<style|<tuple|beamer|invisible-multiply|reddish|framed-theorems>>

<\body>
  <screens|<\shown>
    <doc-data|<doc-title|Ordinary Differential
    Equations>|<doc-author|<author-data|<author-name|Yuliang Wang>>>>

    <chapter*|Chapter 2: First Order Differential Equations>

    General form\ 

    <\equation*>
      F<around*|(|u,u<rprime|'>|)>=0
    </equation*>

    <\example>
      <dueto|falling object in air, general solution, integral curves,
      initial value problem>

      The motion of the object is governed by the Newton's law. Let
      <math|v<around*|(|t|)>> be the velocity of the object at time <math|t>.

      <\equation*>
        m*v<rprime|'>=m*g-\<gamma\>*v,
      </equation*>

      where <math|m> is the mass of the object, <math|g> is the gravitational
      constant, and <math|\<gamma\>> is the coefficient of air resistant
      force.

      This is a first order linear ODE.
    </example>

    <section|Method of integrating factors>

    <\example>
      Find the general solutions of

      <\equation*>
        u<rprime|'>+u=2
      </equation*>

      idea: combine <math|u<rprime|'>+u> into the derivative of another
      function.\ 

      Consider the product rule of differentiation:

      <\equation*>
        <around*|(|f*g|)><rprime|'>=f<rprime|'>*g+f*g<rprime|'>.
      </equation*>

      Let <math|f=u<around*|(|t|)>,g=e<rsup|t>>, then

      <\equation*>
        <around*|[|u<around*|(|t|)>*e<rsup|t>|]><rprime|'>=u<rprime|'>*e<rsup|t>+u*e<rsup|t>=e<rsup|t>*<around*|(|u<rprime|'>+u|)>.
      </equation*>

      Now, we multiply the original equation by <math|e<rsup|t>>:

      <\equation*>
        <around*|(|u<rprime|'>+u|)>*e<rsup|t>=2*e<rsup|t>\<Longrightarrow\><around*|[|u<around*|(|t|)>*e<rsup|t>|]><rprime|'>=2*e<rsup|t>\<Longrightarrow\>u<around*|(|t|)>*e<rsup|t>=<big|int>2*e<rsup|t>*\<mathd\>t=2*e<rsup|t>+c
      </equation*>
    </example>

    Divide by <math|e<rsup|t>>:

    <\equation*>
      u<around*|(|t|)>=e<rsup|-t>*<around*|[|2*e<rsup|t>+c|]>=2+c*e<rsup|-t>.
    </equation*>

    <strong|Method of integrating factors:>

    Consider the 1st order linear ODE (standard form):

    <\equation*>
      <with|color|dark green|u<rprime|'><around*|(|t|)>+p<around*|(|t|)>*u<around*|(|t|)>=q<around*|(|t|)>.>
    </equation*>

    Multiply left side by <math|\<mu\><around*|(|t|)>>:

    <\equation*>
      <around*|[|u<rprime|'><around*|(|t|)>+p<around*|(|t|)>*u<around*|(|t|)>|]>*\<mu\><around*|(|t|)>=u<rprime|'>*\<mu\>+p*u*\<mu\>.
    </equation*>

    We want

    <\equation*>
      \<mu\>=g,p*\<mu\>=g<rprime|'>
    </equation*>

    i.e.

    <\equation*>
      \<mu\><rprime|'><around*|(|t|)>=p*<around*|(|t|)>*\<mu\><around*|(|t|)>\<Longrightarrow\><with|color|red|\<mu\><around*|(|t|)>=e<rsup|<big|int>p<around*|(|t|)>*\<mathd\>t>>.
    </equation*>

    Check (by the chain rule and fundamental theorem of calculus)

    <\equation*>
      \<mu\><rprime|'>=e<rsup|<big|int>p<around*|(|t|)>*\<mathd\>t>*p<around*|(|t|)>=\<mu\><around*|(|t|)>*p<around*|(|t|)>.
    </equation*>

    Derivation directly:

    <\equation*>
      \<mu\><rprime|'><around*|(|t|)>=p*<around*|(|t|)>*\<mu\><around*|(|t|)>\<Longrightarrow\><frac|\<mu\><rprime|'><around*|(|t|)>|\<mu\><around*|(|t|)>>=p<around*|(|t|)>\<Longrightarrow\><around*|[|ln*\<mu\><around*|(|t|)>|]><rprime|'>=p<around*|(|t|)>
    </equation*>

    <\equation*>
      \<Longrightarrow\>ln*\<mu\><around*|(|t|)>=<big|int>p<around*|(|t|)>*\<mathd\>t\<Longrightarrow\>\<mu\><around*|(|t|)>=e<rsup|<big|int>p<around*|(|t|)>*\<mathd\>t.>
    </equation*>

    So the original ODE becomes

    <\equation*>
      <around*|[|\<mu\><around*|(|t|)>*u<around*|(|t|)>|]><rprime|'>=\<mu\><around*|(|t|)>*q<around*|(|t|)>\<Longrightarrow\>\<mu\><around*|(|t|)>*u<around*|(|t|)>=<big|int>\<mu\><around*|(|t|)>*q<around*|(|t|)>*\<mathd\>t+c
    </equation*>

    <\equation*>
      \<Longrightarrow\><with|color|blue|u<around*|(|t|)>=<frac|1|\<mu\><around*|(|t|)>>*<around*|[|<big|int>\<mu\><around*|(|t|)>*q<around*|(|t|)>*\<mathd\>t+c|]>>,
    </equation*>

    where

    <\equation*>
      <with|color|blue|\<mu\><around*|(|t|)>=e<rsup|<big|int>p<around*|(|t|)>*\<mathd\>t>>
    </equation*>

    is called the <strong|integrating factor>.

    <\example>
      Find the <strong|general solution> of

      <\equation*>
        <around*|(|4+t<rsup|2>|)>*<frac|d*y|d*t>+2*t*y=4*t
      </equation*>

      <strong|Answer:> Rewrite it in the standard form

      <\equation*>
        y<rprime|'>+<frac|2*t|4+t<rsup|2>>*y=<frac|4*t|4+t<rsup|2>>.
      </equation*>

      Here <math|p<around*|(|t|)>=<frac|2*t|4+t<rsup|2>>>. Then find the
      integrating factor <math|\<mu\><around*|(|t|)>>:

      <\equation*>
        \<mu\><around*|(|t|)>=e<rsup|<big|int>p<around*|(|t|)>*\<mathd\>t>=e<rsup|ln
        <around*|(|4+t<rsup|2>|)>>=4+t<rsup|2>.
      </equation*>

      So the solution is

      <\equation*>
        y<around*|(|t|)>=<frac|1|4+t<rsup|2>>*<around*|(|<big|int><around*|(|4+t<rsup|2>|)>*<frac|4*t|4+t<rsup|2>>*\<mathd\>t+c|)>=<frac|1|4+t<rsup|2>>*<around*|(|2*t<rsup|2>+c|)>
      </equation*>
    </example>

    <\example>
      Solve the <strong|initial value problem>

      <gather*|<tformat|<table|<row|<cell|t*y<rprime|'>+2*y=4*t<rsup|2>>>|<row|<cell|<text|initial
      condition: >y<around|(|1|)>=2>>>>>

      <strong|Answer:> First rewrite the equation into the standard form:

      <\equation*>
        y<rprime|'>+<frac|2|t>*y=4*t.
      </equation*>

      Find the integrating factor:

      <\equation*>
        \<mu\>=e<rsup|<big|int><frac|2|t>*\<mathd\>t>=e<rsup|2*ln
        <around*|\||t|\|>>=e<rsup|ln t<rsup|2>>=t<rsup|2>.
      </equation*>

      The general solution is

      <\equation*>
        y=<frac|1|t<rsup|2>>*<around*|[|<big|int>
        t<rsup|2>*4*t*\<mathd\>t+c|]>=<frac|1|t<rsup|2>>*<around*|[|t<rsup|4>+c|]>=t<rsup|2>+<frac|c|t<rsup|2>>.
      </equation*>

      Plugging the initial condition:

      <\equation*>
        y<around*|(|1|)>=2\<Longrightarrow\>1+<frac|1|c>=2\<Longrightarrow\><with|color|blue|c=1>.
      </equation*>

      The solution of the initial value problem is

      <\equation*>
        y=t<rsup|2>+<frac|1|t<rsup|2>>.
      </equation*>
    </example>

    \;

    <section|Separable equations>

    <\example>
      Solve

      <\equation*>
        <frac|d*y|d*x>=<frac|x<rsup|2>|1-y<rsup|2>>.
      </equation*>

      This equation is nonlinear. We can separate the variables <math|x> and
      <math|y> as follows

      <\equation*>
        <around*|(|1-y<rsup|2>|)>*\<mathd\>y=x<rsup|2>*\<mathd\>x\<Longrightarrow\><big|int><around*|(|1-y<rsup|2>|)>*\<mathd\>y=<big|int>x<rsup|2>*\<mathd\>x
      </equation*>

      <\equation*>
        \<Longrightarrow\>y-<frac|y<rsup|3>|3>=<frac|x<rsup|3>|3>+c
      </equation*>

      This is an example of <strong|implicit solutions>.
    </example>

    <\definition>
      An ODE in the form of

      <\equation*>
        <frac|\<mathd\>y|\<mathd\>x>=<frac|f<around*|(|x|)>|g<around*|(|y|)>>
      </equation*>

      is called <strong|separable.>
    </definition>

    We can solve it as follows

    <\equation*>
      <big|int>f<around*|(|x|)>*\<mathd\>x=<big|int>g<around*|(|y|)>*\<mathd\>y
    </equation*>

    <\example>
      Solve the initial value problem

      <\equation*>
        <frac|d*y|d*x>=<frac|3*x<rsup|2>+4*x+2|2*<around|(|y-1|)>>,<space|1em>y<around|(|0|)>=-1
      </equation*>

      <strong|Solution:>\ 

      <\equation*>
        <big|int><around*|(|3*x<rsup|2>+4*x+2|)>*\<mathd\>x=<big|int>2*<around*|(|y-1|)>*\<mathd\>y
      </equation*>

      <\equation*>
        \<Rightarrow\><space|1em>x<rsup|3>+2*x<rsup|2>+2*x=y<rsup|2>-2*y+c.
      </equation*>

      Plugging the initial condition

      <\equation*>
        y<around*|(|0|)>=-1\<Rightarrow\>0=1+2+c\<Rightarrow\>c=-3.
      </equation*>

      The solution to the initial value problem is

      <\equation*>
        x<rsup|3>+2*x<rsup|2>+2*x=y<rsup|2>-2*y-3.
      </equation*>

      <\question>
        What is the domain and range of the solution?
      </question>
    </example>

    <\example>
      Recall the differential equation for continuous compound interests:

      <\equation*>
        u<rprime|'>=r*u.
      </equation*>

      Note this equation is both linear and separable. As a separable
      equation, we have

      <\equation*>
        <frac|\<mathd\>u|\<mathd\>t>=r*u\<Rightarrow\><frac|\<mathd\>u|u>=r*\<mathd\>t\<Rightarrow\><big|int><frac|\<mathd\>u|u>=<big|int>r*\<mathd\>t\<Rightarrow\>ln
        <around*|\||u|\|>=r*t+c
      </equation*>

      <\equation*>
        \<Rightarrow\><around*|\||u|\|>=c*e<rsup|r*t>\<Rightarrow\>u=c*e<rsup|r*t>.
      </equation*>

      If the initial condition is <math|u<around*|(|0|)>=u<rsub|0>>,then we
      find <math|c=u<rsub|0>>.

      <\exercise>
        Solve the equation by the method of integrating factor.
      </exercise>
    </example>

    <section|Exact Equations>

    <subsection|Motivation and definition>

    Suppose <math|\<psi\><around*|(|x,y|)>=c> is an solution of some ODE.
    Taking <math|d/\<mathd\>x> on both sides of the solution.

    <\equation*>
      <frac|d|\<mathd\>x>*\<psi\><around*|(|x,y|)>=<frac|d|\<mathd\>x>*c\<Rightarrow\><with|color|blue|<frac|\<partial\>\<psi\>|\<partial\>x>>+<with|color|dark
      green|<frac|\<partial\>\<psi\>|\<partial\>y>>*<frac|\<mathd\>y|\<mathd\>x>=0\<Rightarrow\><with|color|blue|M<around*|(|x,y|)>>+<with|color|dark
      green|N<around*|(|x,y|)>>*y<rprime|'>=0,
    </equation*>

    where

    <\equation*>
      M<around*|(|x,y|)>=\<partial\><rsub|x>\<psi\>,<space|1em>N<around*|(|x,y|)>=\<partial\><rsub|y>*\<psi\>.
    </equation*>

    \;

    <\example>
      Solve <math|<with|color|blue|2*x+y<rsup|2>>+<with|color|dark
      green|2*x*y>*y<rprime|'>=0>.

      <\answer*>
        Guess the solution. Let <math|\<psi\>=x<rsup|2>+y<rsup|2>*x>. Then

        <\equation*>
          \<psi\><rsub|x>=2*x+y<rsup|2>,<space|1em>\<psi\><rsub|y>=2*x*y.
        </equation*>

        So

        <\equation*>
          0=\<psi\><rsub|x>+\<psi\><rsub|y>*y<rprime|'>=<frac|d|\<mathd\>x>*\<psi\><around*|(|x,y|)>
        </equation*>

        So the solution is

        <\equation*>
          \<psi\><around*|(|x,y|)>=c.
        </equation*>
      </answer*>
    </example>

    <\definition*>
      An ODE of the form

      <\equation*>
        M<around|(|x,y|)>+N<around|(|x,y|)>*y<rprime|'>=0<infix-or>M<around*|(|x,y|)>*\<mathd\>x+N<around*|(|x,y|)>*\<mathd\>y=0
      </equation*>

      is called <strong|exact> if there exists
      <math|\<psi\><around*|(|x,y|)>> such that

      <\equation*>
        \<psi\><rsub|x>=M,<space|1em>\<psi\><rsub|y>=N.
      </equation*>

      The solution of the equation is

      <\equation*>
        \<psi\><around*|(|x,y|)>=c,
      </equation*>

      where <math|c> is an arbitrary constant.
    </definition*>

    <subsection|Theorem and method>

    <\theorem>
      Suppose an ODE can be written in the form

      <\equation>
        M<around|(|x,y|)>+N<around|(|x,y|)>*y<rprime|'>=0<infix-or>M<around*|(|x,y|)>*\<mathd\>x+N<around*|(|x,y|)>*\<mathd\>y=0
      </equation>

      where the functions <math|M,N,M<rsub|y>> and <math|N<rsub|x>> are all
      continuous in the rectangular region
      <math|R=<around*|[|a,b|]>\<times\><around*|[|c,d|]>>. Then Eq. (1) is
      an exact differential equation <strong|if and only if>

      <\equation*>
        M<rsub|y><around|(|x,y|)>=N<rsub|x><around|(|x,y|)>,\<forall\><around|(|x,y|)>\<in\>R.
      </equation*>
    </theorem>

    <\proof>
      <math|<rprime|''>\<Longrightarrow\><rprime|''>>. Suppose Eq. (1) is
      exact. Then there exists a <math|\<psi\><around*|(|x,y|)>> such that

      <\equation*>
        \<psi\><rsub|x>=M,<space|1em>\<psi\><rsub|y>=N.
      </equation*>

      Then

      <\equation*>
        M<rsub|y>=\<psi\><rsub|x*y>,<space|1em>N<rsub|x>=\<psi\><rsub|y*x>.
      </equation*>

      Since <math|M<rsub|y>,N<rsub|x>> are continuous, we have
      <math|\<psi\><rsub|x*y>> and <math|\<psi\><rsub|y*x>> are continuous.
      So\ 

      <\equation*>
        \<psi\><rsub|x*y>=\<psi\><rsub|y*x>.
      </equation*>

      i.e.

      <\equation*>
        M<rsub|y>=N<rsub|x>.
      </equation*>

      <math|<rprime|''>\<Longleftarrow\><rprime|''>> Suppose
      <math|M<rsub|y>=N<rsub|x>>. We want to find a function
      <math|\<psi\><around*|(|x,y|)>> such that <math|\<psi\><rsub|x>=M> and
      <math|\<psi\><rsub|y>=N>. Let

      <\equation*>
        \<psi\>=<big|int>M<around*|(|x,y|)>*\<mathd\>x+h<around*|(|y|)>.
      </equation*>

      Then <math|\<psi\><rsub|x>=M>, and

      <\equation*>
        \<psi\><rsub|y>=\<partial\><rsub|y><big|int>M<around*|(|x,y|)>*\<mathd\>x+h<rprime|'><around*|(|y|)>.
      </equation*>

      We want <math|\<psi\><rsub|y>=N>, that is

      <\equation*>
        h<rprime|'><around*|(|y|)>=N<around*|(|x,y|)>-\<partial\><rsub|y><big|int>M<around*|(|x,y|)>*\<mathd\>x.
      </equation*>

      We need the RHS to be independent of <math|x>. That is

      <\equation*>
        <frac|\<partial\>|\<partial\>x> <around*|[|N<around*|(|x,y|)>-\<partial\><rsub|y>
        <big|int>*M<around*|(|x,y|)>*\<mathd\>x|]>=0.
      </equation*>

      Let's check:

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|\<partial\>|\<partial\>x><around*|[|N<around*|(|x,y|)>-\<partial\><rsub|y><big|int>*M<around*|(|x,y|)>*\<mathd\>x|]>>|<cell|=>|<cell|N<rsub|x>-\<partial\><rsub|y>
        \<partial\><rsub|x><big|int>M*\<mathd\>x=N<rsub|x>-M<rsub|y>=0.>>>>
      </eqnarray*>

      \;
    </proof>

    \;

    <\example>
      Solve the ODE

      <\equation*>
        <around*|(|y*cos x+2*x*e<rsup|y>|)>+<around*|(|sin
        x+x<rsup|2>*e<rsup|y>-1|)>*y<rprime|'>=0.
      </equation*>

      <strong|Answer:>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|M<rsub|y>>|<cell|=>|<cell|cos
        x+2*x*e<rsup|y>>>|<row|<cell|N<rsub|x>>|<cell|=>|<cell|cos
        x+2*x*e<rsup|y>>>>>
      </eqnarray*>

      So <math|M<rsub|y>=N<rsub|x>>, and the equation is exact.

      Next, let

      <\equation*>
        \<psi\>=<big|int>M d*x=<big|int>y*<around*|(|cos x|)>+2*x*e<rsup|y>
        d*x=y*<around*|(|sin x|)>+x<rsup|2>*e<rsup|y>+h<around*|(|y|)>.
      </equation*>

      Then

      <\equation*>
        \<psi\><rsub|y>=sin x+x<rsup|2>*e<rsup|y>+h<rprime|'><around*|(|y|)>=N=sin
        x+x<rsup|2>*e<rsup|y>-1
      </equation*>

      <\equation*>
        \<Longrightarrow\><space|1em>h<rprime|'><around*|(|y|)>=-1<space|1em>\<Rightarrow\><space|1em>h<around*|(|y|)>=-y.
      </equation*>

      So the solution is

      <\equation*>
        \<psi\>=y*<around*|(|sin x|)>+x<rsup|2>*e<rsup|y>-y=c.
      </equation*>
    </example>

    <\exercise*>
      Solve the above equation, but using <math|\<psi\>=<big|int>N
      d*y+h<around*|(|x|)>> first.
    </exercise*>

    <\question*>
      What is the relationship between separable and exact equations?
    </question*>

    <subsection|Integrating factors>

    Sometimes we can multiply a function to a non-exact equation to make it
    exact. Take a function <math|\<mu\><around*|(|x,y|)>\<neq\>0>,\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|M<around*|(|x,y|)> d*x+N<around*|(|x,y|)>
      d*y>|<cell|=>|<cell|0>>|<row|<cell|\<mu\><around*|(|x,y|)><around*|[|M<around*|(|x,y|)>
      d*x+N<around*|(|x,y|)> d*y|]>>|<cell|=>|<cell|0>>|<row|<cell|\<mu\><around*|(|x,y|)>*M<around*|(|x,y|)>
      d*x+\<mu\><around*|(|x,y|)>*N<around*|(|x,y|)>
      d*y>|<cell|=>|<cell|0>>|<row|<cell|<wide|M|~><around*|(|x,y|)>
      d*x+<wide|N|~><around*|(|x,y|)> d*y>|<cell|=>|<cell|0>>>>
    </eqnarray*>

    where <math|<wide|M|~><around*|(|x,y|)>=\<mu\><around*|(|x,y|)>*M<around*|(|x,y|)>,<wide|N|~><around*|(|x,y|)>=\<mu\><around*|(|x,y|)>*N<around*|(|x,y|)>>.
    Then let

    <\equation*>
      <wide|M|~><rsub|y>=\<mu\><rsub|y>*M+\<mu\>*M<rsub|y>,<space|1em><wide|N|~><rsub|x>=\<mu\><rsub|x>*N+\<mu\>*N<rsub|x>.
    </equation*>

    We want <math|<wide|M|~><rsub|y>=<wide|N|~><rsub|x>>, i.e.

    <\equation*>
      \<mu\><rsub|y>*M+\<mu\>*M<rsub|y>=\<mu\><rsub|x>*N+\<mu\>*N<rsub|x>.
    </equation*>

    Let's choose <math|\<mu\>> such that <math|\<mu\><rsub|y>=0>. Then the
    above equation reduces to

    <\equation*>
      \<mu\>*M<rsub|y>=\<mu\><rsub|x>*N+\<mu\>*N<rsub|x><space|1em>\<Leftrightarrow\>\<mu\><rsub|x>=<frac|M<rsub|y>-N<rsub|x>|N>*\<mu\>.
    </equation*>

    If the function <math|<around*|(|M<rsub|y>-N<rsub|x>|)>/N> is a function
    of <math|x> only, then we can solve <math|\<mu\>> as a separable
    equation. Here <math|\<mu\>> is called an integrating factor.

    <\wide-block>
      <tformat|<table|<row|<\cell>
        <\example>
          Solve the ODE

          <\equation*>
            <around*|(|3*x*y+y<rsup|2>|)>+<around*|(|x<rsup|2>+x*y|)>*y<rprime|'>=0.
          </equation*>

          <strong|Answer:> It's first order, nonlinear, and not separable.
          Check if it's exact:

          <\equation*>
            M<rsub|y>=3*x+2*y,<space|1em>N<rsub|x>=2*x+y.
          </equation*>

          Not exact!. Next, try integrating factors.

          <\equation*>
            <frac|M<rsub|y>-N<rsub|x>|N>=<frac|x+y|x<rsup|2>+x*y>=<frac|1|x>
          </equation*>

          is a function of <math|x> only! Let

          <\equation*>
            \<mu\><rprime|'><around*|(|x|)>=<frac|1|x>*\<mu\><space|1em>\<Rightarrow\><space|1em>\<mu\><around*|(|x|)>=x.
          </equation*>

          Then multiply <math|\<mu\>> to the original equation:

          <\equation*>
            x*<around*|(|3*x*y+y<rsup|2>|)>+x*<around*|(|x<rsup|2>+x*y|)>*y<rprime|'>=0
          </equation*>

          <\equation*>
            <around*|(|3*x<rsup|2>*y+x*y<rsup|2>|)>+<around*|(|x<rsup|3>+x*<rsup|2>y|)>*y<rprime|'>=0
          </equation*>

          Double check the new equation is exact! Then solve it as usual
          (exercise).
        </example>
      </cell>>>>
    </wide-block>

    Similarly, if <math|<around*|(|N<rsub|x>-M<rsub|y>|)>/M> is a function of
    <math|y> only, then we can use the integrating factor
    <math|\<mu\><around*|(|y|)>> solving

    <\equation*>
      \<mu\><rprime|'>=<frac|N<rsub|x>-M<rsub|y>|M>*\<mu\>.
    </equation*>

    <section|Direction fields>

    Consider the first order ODE:

    <\equation*>
      y<rprime|'>=f<around*|(|t,y|)>
    </equation*>

    Draw small arrows as a vector <math|<around*|(|1,f<around*|(|t,y|)>|)>>
    at many points <math|<around*|(|t,y|)>>

    Online plotter:

    <slink|https://aeb019.hosted.uark.edu/dfield.html>

    <\example*>
      Consider

      <\equation*>
        y<rprime|'>=<frac|y*cos x|1+3*y<rsup|3>>
      </equation*>
    </example*>

    \;

    <section|The Existence and Uniqueness Theorem>

    <subsection|Linear equations>

    <\theorem*>
      Consider the initial value problem

      <\equation*>
        y<rprime|'>+p<around*|(|t|)>*y=q<around*|(|t|)>,<space|1em>y<around*|(|t<rsub|0>|)>=y<rsub|0>.
      </equation*>

      If <math|p,q> are continuous on an interval <math|I=<around*|[|a,b|]>>
      containing <math|t<rsub|0>>, then the IVP has a unique solution on
      <math|I>.
    </theorem*>

    <\example*>
      Consider

      <\equation*>
        t*y<rprime|'>+2*y=4*t<rsup|2>,<space|1em>y<around|(|1|)>=2.
      </equation*>

      Solve it by integrating factors,\ 

      <\equation*>
        y<rprime|'>+<frac|2|t>*y=4*t<space|1em>\<Rightarrow\><space|1em>\<mu\>=exp<around*|[|<big|int><frac|2|t>
        d*t|]>=t<rsup|2>.
      </equation*>

      <\equation*>
        y=<frac|1|t<rsup|2>><around*|[|<big|int>4*t<rsup|3>
        d*t+c|]>=<frac|1|t<rsup|2>><around*|[|t<rsup|4>+c|]>=t<rsup|2>+<frac|c|t<rsup|2>>.
      </equation*>

      Plugging <math|y<around*|(|1|)>=2>, we obtain <math|c=1>. The solution
      is

      <\equation*>
        y=t<rsup|2>+<frac|1|t<rsup|2>>.
      </equation*>

      Now, <math|p<around*|(|t|)>=<frac|2|t>,q<around*|(|t|)>=4*t>. So
      <math|p,q> are continuous in <math|<around*|(|-\<infty\>,0|)>\<cup\><around*|(|0,\<infty\>|)>>.
      But <math|1\<in\><around*|(|0,\<infty\>|)>> only, so we know from the
      theorem the IVP has a unique solution in
      <math|<around*|(|0,\<infty\>|)>>, which is

      <\equation*>
        y=t<rsup|2>+<frac|1|t<rsup|2>>,<space|1em>t\<in\><around*|(|0,\<infty\>|)>.
      </equation*>

      If the initial condition is changed to <math|y<around*|(|-1|)>=2>, then
      the solution is

      <\equation*>
        y=t<rsup|2>+<frac|1|t<rsup|2>>,<space|1em>t\<in\><around*|(|-\<infty\>,0|)>.
      </equation*>
    </example*>

    <subsection|Nonlinear equations>

    <\theorem*>
      Consider the initial value problem

      <\equation*>
        y<rprime|'>=f<around*|(|t,y|)>,<space|1em>y<around*|(|t<rsub|0>|)>=y<rsub|0>.
      </equation*>

      If <math|f> and <math|\<partial\><rsub|y>f> are continuous on a
      rectangular domain <math|R=<around*|[|a,b|]>\<times\><around*|[|c,d|]>>
      containing the point <math|<around*|(|t<rsub|0>,y<rsub|0>|)>>. Then the
      IVP has a unique solution in some interval <math|I> containing
      <math|t<rsub|0>>.
    </theorem*>

    <\example*>
      Consider the IVP.

      <\equation*>
        <frac|d*y|d*x>=<frac|3*x<rsup|2>+4*x+2|2*<around|(|y-1|)>>,<space|1em>y<around|(|0|)>=-1
      </equation*>

      It is separable. Let's solve it first,\ 

      <\equation*>
        2<around*|(|y-1|)>*d*y=<around*|(|3*x<rsup|2>+4*x+2|)>*d*x<space|1em>\<Rightarrow\><space|1em>y<rsup|2>-2*y=x<rsup|3>+2*x<rsup|2>+2*x+c
      </equation*>

      <\equation*>
        y<around*|(|0|)>=-1<space|1em>\<Rightarrow\><space|1em>c=3.
      </equation*>

      The solution is

      <\equation*>
        y<rsup|2>-2*y=x<rsup|3>+2*x<rsup|2>+2*x+3
      </equation*>

      <\equation*>
        y=<frac|2\<pm\><sqrt|4+4<around*|(|x<rsup|3>+2*x<rsup|2>+2*x+3|)>>|2>=1\<pm\><sqrt|x<rsup|3>+2*x<rsup|2>+2*x+4>=1-<sqrt|x<rsup|3>+2*x<rsup|2>+2*x+4>.
      </equation*>

      Here <math|f> and <math|\<partial\><rsub|y> f> are continuous
      everywhere except <math|y=1>.
    </example*>

    <\example*>
      Consider

      <\equation*>
        y<rprime|'>=y<rsup|1/3>,<space|1em>y<around|(|0|)>=0*<space|1em><around|(|t\<geq\>0|)>
      </equation*>

      First, let's solve it as a separable equation.

      <\equation*>
        y<rsup|-1/3> d*y=d*t<space|1em>\<Rightarrow\><space|1em><frac|3|2>*y<rsup|2/3>=t+c
      </equation*>

      Plugging <math|y<around*|(|0|)>=0> yields <math|c=0>. So

      <\equation*>
        y=\<pm\><around*|(|<frac|2|3>*t|)><rsup|3/2>
      </equation*>

      are two solutions. In addition

      <\equation*>
        y=0
      </equation*>

      is also a solution. In fact, we have infinitely many solutions defined
      as

      <\equation*>
        y=<choice|<tformat|<table|<row|<cell|0,>|<cell|t\<less\>t<rsub|0>>>|<row|<cell|<around*|[|<around*|\<nobracket\>|<frac|2|3>*<around*|(||\<nobracket\>>*t-t<rsub|0>|)>|]><rsup|3/2>,>|<cell|t\<geqslant\>t<rsub|0>>>>>>,<infix-or>y=<choice|<tformat|<table|<row|<cell|0,>|<cell|t\<less\>t<rsub|0>>>|<row|<cell|-<around*|[|<frac|2|3>*<around*|(|t-t<rsub|0>|)>|]><rsup|3/2>,>|<cell|t\<geqslant\>t<rsub|0>>>>>>
      </equation*>

      for any <math|t<rsub|0>\<gtr\>0>. (<strong|Exercise:> check <math|y> is
      continuous and differentiable at <math|t=t<rsub|0>>.)

      <with|gr-mode|<tuple|edit|cline>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-color|red|gr-auto-crop|true|<graphics||<with|arrow-end|\<gtr\>|<line|<point|-4.57028|0.387382>|<point|4.96593484625935|0.342558096553603>>>|<with|arrow-end|\<gtr\>|<line|<point|-4.17808|-1.41677>|<point|-4.14446076476367|2.65097322062586>>>|<with|color|blue|<spline|<point|-4.16318|0.385468>|<point|-3.11422059653126|0.380537956827157>>>|<with|color|blue|<spline|<point|-3.13536|0.380637>|<point|-1.71278075542543|0.779588144314855>|<point|0.0241335369590382|2.02344289563534>>>|<with|color|blue|<spline|<point|-3.08258|0.380389>|<point|-1.24788053659304|0.371765435654606>>>|<with|color|blue|<spline|<point|-1.23317|0.371696>|<point|-0.0879254496464111|0.72355865101213>|<point|1.08868418236822|1.62003054385572>>>|<with|color|red|<spline|<point|-4.16318|0.385468>|<point|-3.50561163248595|0.382377470061263>>>|<with|color|red|<spline|<point|-3.48365|0.382274>|<point|-2.71011546355651|-0.0944719512076496>|<point|-2.23946771981362|-1.11420872931724>>>|<with|color|red|<spline|<point|-3.38995|0.381834>|<point|-1.2478805398271|0.371765435669807>>>|<with|color|red|<spline|<point|-1.24788|0.371765>|<point|-0.489782110416146|0.368202079416764>>>|<with|color|red|<spline|<point|-0.485879|0.368184>|<point|0.449957686059745|0.129646022003249>|<point|1.33521395290021|-0.408237113702907>>>|<with|color|red|<point|-2.7672|1.19743>>>>
    </example*>

    In fact,\ 

    <\equation*>
      f=y<rsup|1/3>,<space|1em>\<partial\><rsub|y> f=<frac|1|3>*y<rsup|-2/3>.
    </equation*>

    So <math|\<partial\><rsub|y> f> is discontinuous near
    <math|<around*|(|0,0|)>>. So there exists no rectangle <math|R>
    containing <math|<around*|(|0,0|)>> such that <math|f,\<partial\><rsub|y>
    f> are both continuous in <math|R>. So we can't gaurantee the existence
    and uniqueness of solution for the IVP.

    <\note>
      One may not be able to find all solutions to nonlinear equations using
      one method.\ 
    </note>

    <\example*>
      Consider

      <\equation*>
        <frac|d*y|d*t>=y<rsup|2>,<space|1em>y<around*|(|0|)>=y<rsub|0>\<neq\>0
      </equation*>

      We can first solve it as a separable eqn.

      <\equation*>
        y<rsup|-2>*d*y=d*t<space|1em>\<Rightarrow\><space|1em>-y<rsup|-1>=t+c<space|1em>\<Rightarrow\><space|1em>y=-<frac|1|t+c><space|1em>\<Rightarrow\><space|1em>y=-<frac|1|t-<frac|1|y<rsub|0>>>.
      </equation*>

      Now <math|f=y<rsup|2>,\<partial\><rsub|y> f=2*y> are continuous
      everywhere. However, the solution is not defined for every <math|t>.
      For example, if <math|y<rsub|0>\<gtr\>0>,then the solution is defined
      only in <math|<around*|(|-\<infty\>,<frac|1|y<rsub|0>>|)>>.
    </example*>

    <section|Applications>

    <subsection|Falling object in the air>

    <\equation*>
      m*v<rprime|'>=m*g-\<gamma\>*v,
    </equation*>

    where <math|v> is the velocity, <math|m,g,\<gamma\>> are constants.\ 

    <\itemize>
      <item>Analyze the solutions using direction field.

      <item>Solve it by integrating factors.

      <\equation*>
        v<rprime|'>+<frac|\<gamma\>|m>*v=g
      </equation*>

      integrating factor

      <\equation*>
        \<mu\>=e<rsup|<big|int>\<gamma\>/m>=e<rsup|<frac|\<gamma\>|m>*t>
      </equation*>

      <\equation*>
        v<around*|(|t|)>=e<rsup|-<frac|\<gamma\>|m>*t>*<around*|[|<big|int>g*e<rsup|<frac|\<gamma\>|m>
        t>*d*t+c|]>=e<rsup|-<frac|\<gamma\>|m>*t>*<around*|[|<frac|g*m|\<gamma\>>*e<rsup|<frac|\<gamma\>|m>*t>+c|]>=<frac|g*m|\<gamma\>>+c*e<rsup|-<frac|\<gamma\>|m>*t>.
      </equation*>

      If the initial condition is <math|v<around*|(|0|)>=v<rsub|0>>. Then
      <math|c=v<rsub|0>-g*m/\<gamma\>>. So the solution of the IVP is

      <\equation*>
        v<around*|(|t|)>=<frac|g*m|\<gamma\>>+<around*|[|v<rsub|0>-<frac|g*m|\<gamma\>>|]>*e<rsup|-<frac|\<gamma\>|m>*t>.
      </equation*>

      So

      <\equation*>
        lim<rsub|t\<rightarrow\>\<infty\>>
        v<around*|(|t|)>=<frac|g*m|\<gamma\>>.
      </equation*>

      All other solutions converge to the <strong|equilibrium solution>
      <math|v=g*m/\<gamma\>> as <math|t\<rightarrow\>\<infty\>>. This
      equilibrium solution is a <strong|stable> one.
    </itemize>

    <subsection|Compound interest with deposits/withdrawals>

    Assume the annual interest rate is <math|r>. The continuous rate of
    deposit/withdrawal is <math|k>. Then the ODE model for the total balance
    <math|u<around*|(|t|)>> is

    <\equation*>
      u<rprime|'>=r*u+k.
    </equation*>

    integrating factor

    <\equation*>
      \<mu\>=e<rsup|-r*t>
    </equation*>

    <\equation*>
      u=e<rsup|r*t>*<around*|[|<big|int>k*e<rsup|-r*t>+c|]>=e<rsup|r*t>*<around*|[|-<frac|k|r>*e<rsup|-r*t>+c|]>=-<frac|k|r>+c*e<rsup|r*t>.
    </equation*>

    If the initial condition is <math|u<around*|(|0|)>=u<rsub|0>>, then
    <math|c=u<rsub|0>+k/r>. So the solution of the IVP is

    <\equation*>
      u=-<frac|k|r>+<around*|(|u<rsub|0>+<frac|k|r>|)>*e<rsup|r*t>.
    </equation*>

    The equilibrium solution is <math|u=-<frac|k|r>>, and it is an
    <strong|unstable> one since all other solutions diverge from it as
    <math|t\<rightarrow\>\<infty\>>.

    <subsection|Population dynamics>

    <subsubsection|Exponential growth>

    <\equation*>
      y<rprime|'>=r*y,
    </equation*>

    The solution is

    <\equation*>
      y=y<rsub|0>*e<rsup|r*t>
    </equation*>

    where <math|y<rsub|0>=y<around*|(|0|)>>.\ 

    <\itemize>
      <item>If <math|r\<gtr\>0>, we have exponential growth

      <item>If <math|r\<less\>0>, we have exponential decay, such as
      radioactive decay.
    </itemize>

    <subsubsection|Logistic growth>

    <\equation*>
      y<rprime|'>=<around*|(|r-a*y|)>*y.
    </equation*>

    Note that the right-hand-side depends on <math|y> only. In general, ODE
    of the form

    <\equation*>
      y<rprime|'>=f<around*|(|y|)>
    </equation*>

    is called <strong|autonomous>. There are two equilibrium solutions

    <\equation*>
      y=0,<space|1em>y=<frac|r|a>.
    </equation*>

    From the direction field we can tell the equilibrium solution <math|y=0>
    is unstable, while the solution <math|y=<frac|r|a>> is stable.

    <\wide-centered>
      <image|<tuple|<#89504E470D0A1A0A0000000D494844520000028E0000027408060000009C07A29F000000097048597300000B1300000B1301009A9C180000200049444154789CECBD7D7C54E59DF7FF19F204CC04658A8EA20C15A55DB0525B6BDA57E6800F15B9C59B04AB52C3AE026ADD56B2EBBDEC32D35BB08215EF9EA1B5DB5556DBEDEECAFEDA422DAE26BAC5EA8A0F9C132BB43EA4DA54DBA66B820F437178CA100821F3FB637286493293CC9C398FD7F9BC5F2F5F86E4CCBCAFEF35D79CF33DD7B91E7CDB5AD2691042082184103206E3EC2E00218410420871074C1C092184104248513071248410420821455169770146E3BA469FDD45208410420811926D2DA54F737174E208001D1DBD08857A2D7526121300805E0BBC47366DC0447F3F42B1A8A55EC05BF52C9A3721C733EF9DA7DDD815EF4639E35D1D13A79EBDE6ED6C6CC0E9D1280211C952EF68D04BAF590483415DAFE3A36A420821841052144C1C0921841000FE7A0929A5CDEE6210E2689838124208218490A260E2486CA5F2E2B948B529761783B80CBF54CF7643082136C0C49110420821841405134742082104ECC926A418844D1C6559A6D705DEEABA79E8D959FA6074B7C64BAF31DE4044D2D56ECAF59A05BDF4D24BAF5BBCBE6D2DE9D2577FB488EB1A7DBAD7710C0683482693BABCE5ACAB446FE9DEC42C3FE624F759EEF55A3D8BE66D0F4EC9DB6EEC8AB79C751C9D5CCF5EF2F6A80AF6C6E398D1D26AA97734E8A5D70CAFF67A3D0B800BDBE3480821849482593DD9848884B089A324495014EBC7AAD05B3A81B9F5E8514B7B0F37C74BAF315E3DEDC608AF19D04B2FBDF4BAC52B6CE24808218410428C8589232184104208290A6113C74824025555E9758157CF365F6E8E975E63BC666C0FE7E478E9B5C66BC6100827C74B2FBDA5226CE24808218410428C8589232184104208290A268E841042C820660C81204424844D1C739FFD5B395D9DDED2D1B3CD979BE3A5D718AF19DBC339395E7AE9A5975E2778854B1C154519B20D8FA22888C7E3F4D24B2FBDF4D24B2FBDF496897089A324490090ADC4783C8E68344A2FBDF4D24B2FBDF4D24B6F990897380299EE5B4551B25DB75A25D3EB4C6FA9DB7CB93D5E7A8DF11ABD3D9CD3E3A5D71AAFD143209C1E2FBDF4968A9089A3244988C5620032954B2FBDF4D24B2FBDF4D24B6FF908993802B0AD42E9A5975E7AE975AFD7E89EEC62BD66402FBD66206CE20800ADADAD9676DFD2AB1F3DBB35B8395E7A8DF19AB1CB8793E3A5975E7AE9B5DB2B74E268C787482FBDF4D24B2FBDF4D22BAA57E8C49110420821841887A98963CFE18F70FCF83133154410B85B03D103DB0D310333864010220A9566BDF1BE3FBF8BBFFB9B0BB076DD767CF22F860EDC7CECD17BF1DAAB4F23189C0A00B876C95A4CFFF81CB38A4208218410420CC094C4B1BFBF0FFFF62F77E0F4D03979FFBE674F076EFBDA4338EBEC59A8A8302D77258410424A46EBC90E44EC19B746889331256BFBF17F7C1D5FBCF22BD8FED40379FFDEF5EE9B587FD715E8EBEBC51557DE8AA5376E4055D584BCC7A652954824F2FFCD2C52A94CB5D06B9DB76FF665E8D9742FB0DCFC3238215E7A8D215FBBB12BDEC302D7B3D7BC47F238448E975EEF79CBC1F0318EAFB43D864387F6E1A2CF5D5DF098D9E7CFC3DDDF7C0E0F3CF4363A7EAB60F7AEA78C2E0621841042083118C37B1C5B9EF8360E1EDC8BAFFF431DFEF0FBDDD89BF813EEF8FB1FE3DCF33E070048A70770D38A6FA3AAAA06001099D784B7DA77A03E727DDEF7F3FBFB110AF51A5DCC51D1327F7AADF3F6048FE1784DDA923238215E7A8D215FBBB12BDE5ABFB8F5EC356FC2DF8F549B82506895A5DEBC65A1975E8761788FE3DF471FC5DABB9FC61DAB7E8C59B3E762C9D2F5387BDA2C1CD8FF01DE7FEF6DA4520770F38DA721F16127FAFBFBF056FBF3987DC1A5461783B80C33766B20E2C37643CCC02FD5DB5D04421C8BE13D8E1F9B322DFBF3C4899370DA69D35053E3C70BCF6DC6EF7EA7E28E553FC6B54BD6E29EBBE703002E98F3457CF6A2854617831042082184188CA9539AFFEF5D27C72E2E58783B162CBC1D00B0F84B515C75F54A0C0C0C60C2845A338B4008218494442022A173E762BB8B418823B16DE7989A1A3F934632042EBA4BF4C076430821D6C12D07092184104248510899382A8A0245B1BE0782DEF22876FB3851E2A5D718AF51DB0EBA255E7AADF11AD593ED9678E9A5B758844C1C01201E8FD34B2FBDF4D24B2FBDF4D26B20BE6D2DE9B42DE622B8AED1878E8E5E5DEB1B0583412493495DDE72D655A257BF372167BE04A158D4526F29D0EB3CEFF0766357BC1BE58C77754CCC7AF69AD729ED8A5E7ACDF06AAFDFD6527A0A286C8F23711F7EA91EA9364E7220A5C176430821D6C1C49110420821841485B089A32449B60C1CA5573FA5EC022242BCF41AE33572F71837C44BAF355E237BB2DD102FBDF4168BB08963241281AAAAF4D24B2FBDF4D24B2FBDF41A84B08923218410A217EE834E487E98381247C15D40881ED86E0821C41A9838124208218490A2103671CC7DF66FE5E0517ACBA3D85D404489975E63BC46ED1EE39678E9B5C66B544FB65BE2A597DE62102E715414050D0D0DD9D9468AA258B2BA3ABDF4D24B2FBD6279CBBD21715BBCF4D25B0C154B9AD6ADB3CC56228F6E5D8FE6E6B50804FA8B7E4D381C46575717545585AAAAE8EEEE46341A45381C2EFA3D52A92A00A0D7066F6AF0EE2920452CF58E05BDCEF6E6B61BBBE26D5333DE88246E3D7BCDEB8476452FBD6678014096652C695A57D26B00C1B71CD428754B9E72B700A257BFB74755B0371EC78C96564BBDC542AF33BDB9EDC6AE78CBDD7250AFD70B9FAF5DDEDC6D07BD102FBDDEF16AAFE7968339C4623100990532E9758FB7D825304489975E63BC462D9DE29678E9B5C66BD422E06E89975E7A8BA1D2529B8568151A89E47FE4492FBDF4D24B2FBDF4D24B6F6908DBE308642AD3EA4C9C5E7AE9A5975E31BC462E02EE8678E9A5B718844E1CEDF810E92D9F6297C010255E7A8DF11AB5748A5BE2A5975E7AE9B5C32B74E24808218410428CC3D6C4F1C4897E1C3AF8673B8B401C88518B39136FC17643CC80DB591232145B13C71F6D8EE17BF7FFA59D45208410420AC21B124286625BE2B87B572BF6ECE9B04B4F1C8C514B60106FC176430821E663CB723C890F3BF1F47F3D886B97ACC5638FDE3BEAB1A9546576814CAB48A532D542AF3DDEBE640D8E1DF399561EA7C54BAF3168ED0636C57BD823F5EC35EF91415FDA23F1D2EB0D6F3958DEE378FC782FBE77FF5F62C5ADFF888A8A0AABF5C40554D7CDC3F15DAADDC5202E83ED869841E5C5737174D78B76178310C760798F63C79B3BF1CEDBBFC483DF5B8E23A98378FFFD77F0FD7FFE6BFCF5EDDFCF7BBCDFDFAF6B2B9E7228670B207A8DF1264C2C8F13E3A5D7202732E70CABBD0050EBF74E3D7BCABBE862B42F5311B4A95D79A69EE9B5D45B0E96278E9F9C1DC1030FBD0300F8D39F5EC7532DF7E3FA2FDF65753188C3D166320622F6AC8D45DC49606E3DFA76BD84EABA79761785104284C4F2C4B1A6C68F33A7CE0400A452494C98508BE0C7CEB6BA188410420821A4446C5D8EE7BC999FC75DEB9FB1B308C4A170090CA2077FBD84FEDD3BED2E06110CAD279B10C29D630821849051E10D09212761E2481C09D7E4237AF04BF59C014B0821262264E2A8280A14C5FAA4835E63E9D999FF51B5A8F1D26B8C57EF923C6E8D975E7AE9A5D74A844C1C555585AA5ABF9E1BBDC631DA6C6A11E3A5D7186F39B3F0DD182FBDD678CBE9C97663BCF4D23B1A42268E841042885104221217972764102113C74824624B264EAFB1686B395AED2D04BDEEF056D54574CD80756BBCF4D24B2FBD56E2DBD6924EDB622E82EB1A7DE8E8E8D5B5A27A3018443299D4E52D6725777A8DF326E478E6EFB1A8A5DED1A0D7F9DE3F7DE37E00C039F7ACB2D4BB51CEC4BB3AE68D7AF69AB7E37F3522B0722DA62DBAD852AFD7EA995E6BBCDAEBB7B5949E020AD9E34808218418C9F8BA4BB8240F211038719424C9961947F41AC7684BF288182FBDC6782B2F9EAB7B22831BE3A5975E7AE9B512611347AF8D3B10D11B88480597E411315E7A8DF156D7CDD33D91C18DF1D26B9D57EF0D895BE3A597DE7C089B3812420821465179F15CBB8B408823103671F4DA1D80A85ECEACA6570F557591BCEDC66CAF5EE875BE973DD9F4D29B41D8C431F7D9BF956300E835167FBD849432F271B5A8F1D26B8C777CDD2579DB8DD95EBDD0EB1EAF9E1B1237C74B2FBDC3112E715414050D0D0D05FF4D2FBDF4D24B2FBD7ABC5575115BBCA5422FBD6652B1A469DD3ACB6C25F2E8D6F5686E5E8B40A0BFE8D784C361747575415555F87C3E0080CFE743535353D1EF914A550100BD0EF0A606BBE10352C452EF70E87597F7F8EE9DA8AA1EC8B61B2BBC6D6A26DE88E49D7AF69A37FD7E17F0E1BB96B62B2FD633BDE67B014096652C695A57D26B008117006F6868C876DDB6B6B642928ADFC3B69C0539E935D6DBA32AD81B8F63464BABA5DE42D0EB0E6FDFAE9770FC87DF1CD16ECCF496B300B85BEBD96BDE239B3660A2BF3FEFA604667A016FD533BDE67B012E003E8268F4E417BBD4CAA4D739DE424BF2881A2FBDC678ABEBE6155CCAC94CAF5EE87587B7F2E2B905D79635D3AB177AE93503E11E556B84C36100FABA6FF5741DD36B9E3721C7E197EA513DE8B2CA9B0F7ADDE34D6DBA6F44BB31D3ABE751B5115EBBEBD94BDE8AB3A6637FF46B25F738BA355E7AC5F5027C546D28E5741DD36BBC77B43DABCDF41A0DBDD67AF1C8FA8CDFA0763316E53CAA2E07BBEBD96BDEC42C3FE624F759EEF55A3DD36B3E7C544D082184984C606E7DF66696102FC2C49110420829127FBD7563C9087122A6258E3D3D49B3DE9A780CBFC43B7C523A6C378410623C9546BFE17B7B7E87EFDDFF9738E38C7371ECD811CCBDF4AF20CDBD61C8318F3D7A2F5E7BF5690483530100D72E598BE91F9F63745188200422BCC327A5C37643CCC02FD5636F3C0EC09AB1B384380DC313C7D77EFD73342CFE0748F39AD0FEC67F63F3BFFDFD88C471CF9E0EDCF6B58770D6D9B350516178118880687B56331920A5C076438C261091D0B973B1DDC520C4360CCFDAFE77E32A00C02F7EFECF78E617DFC7BC4B6F1C714CD7BB6F62FD5D57A0AFAF17575C792B96DEB801555513F2BE5F2A55797296A445A452996AA1D7395EDFA72FC59F7FB10BA9F3E65BEA35127AADF71AD96EC6E2B003E2A5D71A6F555D04DD4FEE4675DD3C4BBD5642AFD8DE72306D8C635FFF314C98508BF6D79F19F1B7D9E7CFC3DDDF7C0E0F3CF4363A7EAB60F7AEA7CC2A062184106228E3EB2E41FFEE9D761783105B30BCC771D72B4F60E6CC3A2C6AF83B5CFEC5E558B63488FDC9F73179703C633A3D809B567C1B5555350080C8BC26BCD5BE03F591EBF3BE9FDFDFEF997595E82D4CCF823AEC8DC7110AADB2D46B24F45AEF35B2DD8C45ADDFFE78E9B5C69BF0F75B560627C44BAF78DE7230BCC7F19DB77F89679EFE3ED2E9017CB4EF3D9C72CAE938E5D4100EECFF00EFBFF73652A903B8F9C6D390F8B013FDFD7D78ABFD79CCBEE052A38B4104A3D0D683848C06DB0D3103BF54AF6BEB414244C0F0C4F1D2CB6EC26FDA9FC3ADCBCEC486F55761D98A6F63DCB80ABCF2F2E3F8D94FEF412010C4B54BD6E29EBBE7E38E95B370EAE433F0D98B161A5D0C2220DA4407424A81ED86180D6F48889731FC51F5D9D366E3DE6F2938B0FF039C726A083E5F26375DB0F0762C58783B0060F197A2B8EAEA95181818C08409B5461781088ABF5E424A69E30C5952126C37C40C38639F7815D326C79C3AF9CC6CD2988F9A1A3F9346420821AE44BB2121C46B70CB41E21A38AE88E881ED8610428C43C8C45151ECB948D06B2EDAB822AFC44BAF31143B1E4D9478E9B5C65BEC0D8928F1D24BAF86908963434303BD827A0373EBF10D0FC54BAF3114334146A478E935DF5BEC0D8928F1D24BAF86908923E0BDBB00AF78FDF5123E039F67E2A5D7188A1D8F264ABCF45AE32D76C6BE28F1D24B2F00542C695AB7CE1673113CBA753D9A9BD72210E82FF9B5DDDDDD90247DB3DD52A92A00A0D781DE94AAC2E7035E073C112FBDC67853AA9AF99D1431CDDBA666BC11C9FE78E9B5C6DBD7D58DE35DDDA6B62B27C54BAF385E009065194B9AD695FC3A617B1C89988462519CCB998CA44442B1281272DCEE621001E1C42BE2357CDB5AD269BB0B5188EB1A7DE8E8E8D5B5154F3018443299D4E52D670B207ACDF7B607A7E0FF60003B3C122FBDC678DB835330E3C927465D77AF1CEF4639E35D1D7346BCF45AE36D0F4EC19CE43ECBBDC5402FBD63BD7E5B4BE929207B1C89EB08C5A2F80C7C761783B88C502CCA75F788E1706722E235841DE30800AAAAEA7AFE5FCE98037ACDF76AE31C5BBBBA3C112FBDC6788B1DE7A8D75BCE18C772BC4EAB67AF798B1DE7284ABCF48AE10538C69178088E73247AE038474208291F61C73802FA9FFF9733E6805E6BBCEDC129B814039E89975E63BC668E472B678C63395E27D6B3D7BC66B62B27C64BAFFBBDDA6B39C6B100B22CD32B9837148B62C5E038472FC44BAF3194D2EB2842BCF45AE32D659CA308F1D2EB6DAF903D8EC32B50555544A3D1A2C701E8BD03A0D73AEF2706C7ABBD138978225E7A8DF16A4963281635DCABB7C751C47AF69AD7CC76E5C478E975BF17608FE3102291086459863A985C288A52D62299F43ACF7B8BA264C7397A215E7A8DF18ED6E32862BCF45AE72DB49EA3A8F1D2EB4D2F20E8ACEA70380C20B3AAFA962D5B2049129A9A9A8A7EBDDE594EF45AEB9DA9B66193AAE03C8FC44BAF31DE841C875FAA47F5A0C728AFDE59D5A2D6B397BC012982EE957F93B7C751C478E975BF17E0ACEA11C46231442299E511B4FFD32B96F78F523D3E039F67E2A5D718465BCF51C478E9B5C61B985B5FB0375BC478E9F5AEB7D232930DC4623100D65628BDD6511F9130B9BB0B951E89975EE3C83C561CD93B64B67734E875B7D75F3FFA6342D1E2A5D7BB5E2127C7944BB9D3E3E9B5CE5BCC32186678F540AF73BC7ADACD5894BB1C8F5E9C5CCF5EF2F6A80A3A172D36BC5D39355E7ADDED0538398678142EEA4CF4C076438C66B43DD0091109268E8410428801F086847801DB12C7FEFE3E1C3B96B24B4F0481276AA207B61B62168596E52144146C991CF3A3FFF83ADE6CDF81B3A7CDC691D401FCEDAA1F61FCF8801D452102A0EDDAC04745A414D86E88D1846251B407794342C4C6F21EC7A3477BF066FB0E7CEBDBBBD07CC7233874681F7ED3BEC3EA621081F0D74B05975721A4106C37C40CD89B4D44C7F21EC7F1E303F8D6B777A1EBDD37F1FC73FF8E0FDEFF3D66CD2E7CC79F4A5566671D59452A95A9167A5DE25D7E3712B3FCC0F2BBADF59608BD0EF396D86EC6E2B0D3E3A5D712EF1183CBE7F478E975A7B71C6C1BE3984E0FA0EFD811F4F5F5E24F9DAFDB550C2208557511F4ED7AC9EE621097C176438C66E2CA3538FCE07D76178310D3B0BCC731F9D17BF8C31F7E85BACF37E22B5F7B08B593A6E097EACF70C19CCBF31EEFF7F77B665D257ACBE0B208F0DBE7115A74B1B5DE12A0D781DE12DACD58D4FA5D102FBDD6786351E091F579B72034D56B20F48AED2D07CB7B1CAB6B26E0FB9B6EC3FEE4FB48A707904874E29C199FB1BA18443038AE88E881ED8610424AC3F2C431100862C1D52BF1B7B7FF05BE7ACB741C491DC41722D7595D0C2220A3ED154B4821D86E88D1F08684888C2DCBF12CF9F237B0F89A7F405FDF510402413B8A400464ACBD6209C907DB0D31032D7934E27135214EC2B6C931D5D51399341243E15D3ED103DB0D3103BFC49E6C2226DC729008059300A207B61B6234DAC2F23D2A77922162C1C4910807B7FC227A60BB2146138A45B9C83C110EA11247455120CB32BD1EF6866251F4EC6C33F42EDFC9F1D26B8CF711A40D6F37C578BD56CF5EF33E82B4E53DD95EAC677AAD45A8C45155555B2A945E67798DBECB777ABCF41AE3B5BA77C8EE78E9B5C66BF53008BBE3A5574C6F2E154B9AD6ADB3B504A3F0E8D6F5686E5E8B40A0BFA8E3252933A64455D5ECCF7A48A5AA00805E977A0352049D0D8D0567338A162FBDC6785F0770A6BC51F72CD83635E38D48EE88975E6BBC475415D55BB6EA6E576E8B975E7778014096652C695A57F2EB84EA71D4B02B1BA7D7395E33EEF29D1C2FBDC678ED9824E3C57AF692F71645B165AD50AFD533BDD621548F23604C365EEA1D00BDCEF38ED6EB2862BCF41AE32DA7D7B1D41EC75CAFD7EAD96BDEFEAE6E4C0B87119022967ABD56CFF496067B1C87E1B5BB007A47C25E477AF578D9EB48AFD1DCA22848C871B62B7A85F00AD7E308949F8DEBB903A0D779DE94AAE6DDB941D478E935C6AB774C9A9E1EC75CAFD7EAD96BDE713EE8EA75746BBCF43ADB0BB0C79190118462512EEC4C4AE69D4884ED8618CE3B9108DB141102217B1C814C36DED0D090FD59511484C3E1A25EABF70E805EE779F3F53A8A1C2FBDC6783FEB03AAB76CC5EF23F5457BF5F638E67AB59FBD52CF5EF3CE9522087675E375A43D112FBDCEF502FA7B1C854D1C87138FC7D1D4D454D4B1E57C90F43ACBAB3D164AA9EAC99F058E975E63BC1F85C3084F0FE39587BF8F2F7CF5AB45BDA69CC471385EA967AF793F0A8771A6BC113FFACD6F70D58A15967935BC52CFF41687DEC4B1B2E457B8045996118BC5100C06CB5EEB885EF77BF38D75B4C26B14F45AEFAD094FC7E55DDD967BBD56CF5EF3D684A7E39C43872CF77AAD9EE9350FA1C7385A5D99F43AD36BF45847A7C74BAF31DE1DE169D8119E66D9B834BBE3A5D71AEF8EF0345CDED5CD7645AF6BBDBE6D2DE9B4A5C612B8AED1878E8E5E8442BDBA5EAF28CA90E7FFADADAD45BD2E91980000F40AE66D0F4EC19CE43ECFC44BAF31DE7B9536CC49EE1BF3751BE58C7775CCDDF1D26BBEF71BE1E968983E0D335AC6768B102FBDCEF30299A4735B4BE929A0D03D8E922421994C5A9E8DD3EB4CAF51BD8E6E89975E63BC56CDB0764ABCF49AEFDD119E067FBDC47645AF2BBDC28E71CCA5B5B5158AA2D0EB716F2816457B700A6A539598B8728D655EA3A1D75A6F4892D01E9C0200868C932DD66B35F45AEBD5DA95156D2AD76B35F48AE715FA51B55ECAED3AA6D7B9DE841C47F27915C1CDCF78225E7A0D7A4F398E549B32EAA3C5721F55EB45A47AF69A57EB711C2D7914295E7A9DE305F8A89A90A208C5A2185F77098E6CDA607751888B08C5A2963D5A24DE411B06C17645DC041347E23926AE5C83C30FDE871ED5FAC709C4BD681779B61B6224DCA588B80DD312C79E9E2406064E98F5F68494456DF39DD81BE7C99A9446281665BB2186C2AD5189DB307C72CCBE3F77E1FE8D5FC6A449A7A1A2A21233CEFD2CAE5DB276C8318F3D7A2F5E7BF5690483530100D72E598BE91F9F6374510829C8C4956B8047FA0D5B189C7883CC05DEB805E5090132EDAAB3B10109D99A0958849483E189E38BCFFF073E7DE195F8F2D2F5387EBC174DD74DC4E557DC8CC983492200ECD9D381DBBEF610CE3A7B162A2A3C31B19B38106D96B5F63321C5C07643CCE0F468149D8B16C32FD52310B17E2169428AC5F0AC6DD1E255F0F97C0080D75E7D06A13366E0D4C9670E39A6EBDD37B1FEAE2BD0D7D78B2BAEBC154B6FDC80AAAA0979DF2F95AACCCE3AB28A542A532DF48AEF9DBC793B12CBAE42DFECCB505D37CF32AF95D06B3CF9DACD6181E3A5D702EF79F351DB7C27BABFB911C1CDF3ADF316805EB1BDE560F818C7EAEA89F0F92AF0B3ADEBF1C0776FC45757FE4B3691D4987DFE3CDCFDCDE7F0C0436FA3E3B70A76EF7ACAE862105214D575F350DB7C277A36DD6B7751888B60BB21663071E51AAEFA401C8FE1EB381E3FDE8BEFC85F466555356EBDED8111BD8DE9F400FAFB8FA3AAAA0600F064EB77F1E17BEFE02B5F7B68C47B711D477AADF216B39E9A195E2BA0D744574EBBE13A8EF41AE6CA69575E88975E8FAFE3F8E28EFF0F00F00FB16D4392C603FB3FC0FBEFBD8D54EA006EBEF134243EEC447F7F1FDE6A7F1EB32FB8D4E8621052125AC2C8998DA414D86E8819846251A4DA14B62BE2480C4F1CDF7EFB65FC6AF793B8AED197FDEF83F77F8F575E7E1C3FFBE93D080482B876C95ADC73F77CDCB172164E9D7C063E7BD142A38B4148C9F0644DF4A0B59BF3543E5E24C631A3A5150939CEC7D6C471183E3966E5DFFE3B56FEEDBF8FF8FD99536762C1C2DB01008BBF14C55557AFC4C0C000264CA835BA0884E866464B2B97C5202533A3A5155D9FB96630795C6577718820CC78F209742E5A9CF9C73D6C57C419D8B6734C4D8D9F49237124335A5AD9F3484A66F70D4F6372F74EB61B6218818884C99BB7E3F083F7B15D11C7C02D0709C9039347A287DD373CCD76430CA5BA6E5E66F927EE694D1C021347420AC0E491E881ED86184D75DD3CCC78F209B62BE208983812320A335A5A01009D8D0D369784B809B61B62348188C49B12E2089838123206A15814FE7A09EDC129E85115BB8B435C02DB0D3183DC9B12B62B62074C1C092982502C9A9DE1C8BB7D522C6C37C40CB49B92CE458B993C12CB717DE228CB321A1A1AA028D67E79E8F59E371091B2E38CCCBADB7752BCF41A436EBB79E13317E28E7997081D2FBDD678B59B92BDF1381E6F68103E5E7AADF716A26249D3BA757617A2108F6E5D8FE6E6B50804FA0B1E234912BABABAD0DCDC9CFD77B9A4525500402FBD23BCD5E130263735A1AFAB1B7B56FE4DE67DA488E9DE72A0D71A6F9B9AF146A4915EADDD4C3878089F78FC096CDDB205AF1BE4F55A3DD37B12AD5D05BBBA31B34DC1BA871FC687167835BC52CF227A814C42BAA4695DC9AF737D8F2300C46231249349A8AA8A6030085996E9A5D754AF76B76F46EFA313E3A5D718B476B3726E047FF1F0F771B9E0F1D26B5DBBFADC830FE2877325FCC5C3DF173E5E7AADF3E64388C451A3B5B515ADADAD50557544B7AE2CCBA65534BDDEF40622127E561FC11B69983286CD69F1D26B0CDAECD82F7CF5ABF8478C43CD96AD42C74BAFF5EDEA05B62B7A4DC4B7AD259D36DDA293EB1A7DE8E8E84528D45BF26B1545413C9EB99047A351A8AA0A5996914C26C77C6D22310100E8A5B724AFB6406F2816CDBB5DA168F1D23B948D72C6BB3A569A576B373BC2D3B0233CCD35F1D2EB5C6F8FAA606F3C8E83070FE29101E04FA79E2274BCF496EE05806030886D2DA5A780AE1FE3588870388CA6A6A6ECB8009FCF87A6A626A8AA3AE6F88062C61CD04BEF70EF82580C7EA91E07B66E41779EF18FA2C54BEF50461BE3381A012902BF548FB3DF7A1392D29619FFE883E3E3A5D7B95E6DEC63EDCC99B8E0D55F63767717D63DFC301282C64B6FE95E40FF18476113470D4992108BC5D0D5D5055996A1AA6AF6F78528E783A4D7DBDECB9B96627253D3900432D5A6A02A3C0DC783E79AE6F55A3D3BD1AB3771044E5EE8FD523DCEDFD30D4969434A6DC363AA32E66407AFD533BDC5A3B5AB29177C0A5FDCD38DD9DD5D78EDBFB6E3C1C131D9A2C54B6FF15E407FE228ECA36A8D42CFFC47EBCA2DA7EB98DA55164500002000494441545E7A73E95115A4943624E438AAEA2208AC5C8B698B2E36DD9B8B17EAD9095EBD8FAAF3792F04F019F8B00C3EBC0EE04B4F3E814024FF45C06BF54CAF7EEF850096631C2E04D8AE3CEE05F43FAA163E711C8E369074B44CDC880F925E7A87D3FDE46EF46CBA17353599AFDCE9D168C193B6915EAFD5B35D5E2312C77CDE8A377F83D0F6EDD9DF0D6F375EAB677A8DF1E6B6ABD3A39931D96C57DEF1024C1C0DC58C0F925E7A35AFFF0FCF626F7CE80C6C2392C8B1BC5EAB67ABBD66248EB968131E72393D1A45EABCF900BC53CFF41A8BD6AE7A76B62130B73E9B44B25D89ED05F4278E9526948510320A818884404B2649D44EDA7BE371EC45262930338924EEA550BB39766C2300C07FD76AB61B5232F9DA1500B62B5210268E84D8C8F0933600EC8DC7D1B973310273EBE1AF97E097EA79E22643C86D37DD4FEE0600EC8D7F93ED8694C5F076D5BF7B27CF4764044C1C097108DAC93837914C296D434EDC40FEF148C4BB54D7CD03004C5BD40A80ED86184375DD3C54D7CD4328B40AC0C9DEC8549BC276E571983812E250021169F0649C3931E7F648021872F2D67A02B4D711EFC27643CC20B73712187A830280C9A48760E248884B18DE23090C4D0A526D0A7A76B6658EC9490CFA665F963936788C27720FA2B7DD680965EE7B10A231FC0605C87F9302E46F576C53EEC5B6C4F1C4897E1C3D7A187EFF64BB8A4088EBC9971400274FE029A50D3D9BEE05001CAF490FE91500322772004C123C4631ED26770677BE7673245589CA8BE7A227786CC87B12EF524ABB1A9E54026C576EC196C4F1A996FBF1CCD3DFC7CC4F7E1EBD470EE1AF96C9987AD627ED280A2142923D81472460F9D0E51EB493389039910318912464DF27E7A40EE44F34873B897B19D26E3074BFF57CEDA667D3BD383EB82E29DB0D298419ED4A6B5300DB95D5589E38F6F7F7E1917FFB7BFCE8A787317E7C008F3D7A2FB6FFD783B8E5B607AC2E0A219E24F7847AF2E768DE63F39DD4018C584F10187A82D7A8AA8B205533729DB0DC93FE88BFE5B90814821707EB18DE6E12890998B8724DDEF5E7CA6D37C3134F0DAD470A0012FEA15BB4B1DDB81351DA9597DA942D0B80F7F42411080471EC580AEBEFBA020B17DD0169EE0D238EBBAED1875FFDEA38FCC33E48B3490D36207AE9A5B73CEF895FBF88F1E34F8CF85BFFEE9D055F7774D78B45BDFFF15DAAEEB255D54574BFB610EFBF370E0030F5AC81917F3C7C28EF6B2A3FF9E9B2BDC707ABB7AA62F4E3FADFFF53D9AE5C064E6484E32A467EBE6553A0BE060EEFC7C0897183DE81617F3B58D45BA70F1ED65FAEDA5AF8C6E97FB91ED28361E67AC7D59E62BAB7503D8F45FAD8B1B2BCF9E22DF93DFA8EE6FFC389E3058E1FE5DC78A2C8F88B3D2E9FBF12F0A52D6E58002E3DD1EF9E05C00381203AFFF82A36FDD30A84A77F0A9FFF42A31DC52084984CC54597A03A4FC2AA2D21938F892BD7E872F5ED7A090070F46826A1193FFEC4A809EAF13DEF02004EBCDD3EE67B1FEFF8CD98C79CA61DFBDEC8BF55CDBA20EF6BFA7EF5C298EF3B16DA053E3DC6057EDCD4E965BB2CA37652DE5F8FAB9D04144858CDBEEC6613E523FB4D360DF7662EECE32A7C997FF71E463A951A715CC16449FB7B6F913B930C4BA24ABE2DA83626AD28A747CB376142FE3F54541538BECA9084550FE901C077E2B8E55E00408FBECE045B12C737DF780EDFFDCE52DC7CDB3F21227D79D463FDFE7ECF6C01442FBD5EF5167A0495FD5DDBC9BF6B338087A33D86EA3F96B9C01EAF498FFA481C9F3C0B00E0BFE5FA31CB57CC6328B3B71C2C841B3E5F7A4F325A5BCF6DE7C0D0B69E9BC0E57BE43A6A5B47E98F5CDD5ECFF4164130A8EB6596278EE9741AF2FFBB06777FF3599C37F3F356EB092116A1F500267EFB7CF6778512C04283DE35B475E1006046CBE817485B4FC4C493E4CE1AD6D0D3D673DB399069EB6CCFC469589E38263EFC237A7B0FE3EBFFF085ECEF2EBD7C199AEF78C4EAA21042CA60F8C552BB506A17496D1C61F0B293E30973D7711B2B0124C429F4A80A8EFC621780CCE489E16D3D779D428D526E7608B19ADC9EEF52B13C713CE3CCF3740DC62484D883B6430480828B4503272F94DA45923D25C46D8CD6D67D9FBE347BDCF0B64E885319EBFCAD07EE1C43080130FA09263739E4C592B81D3D6D9D3742C4E924E4CCB244459FBFDD32C69110E20CF29D6442B14C4F0A1344220AF99244DE0C11B763E7F99B8923211E413BD168FF67924844243751645B27A2303C51D46E7EEC68D34C1C0911944289E28C279FF0D42E07447C0AB5F539C97DB695899072D06E80B444D149373F4C1C091188DC0BA876473A79F37654D7CDE3D82C220C7DBB5E42E2B7CF8FB8A83251246E26DFF9DB0989E270983812E27212727CD40BA836A89F1037A3F5C0E4F62A3AF1A24A48291CD9B40100D0FEE07DAEB901123E71541405F19C0DD0239148F6FF9264DE09875E7ACDF45EDED58D730E1EC439070FE18F523DCE0E877171B2D574AF8657EA995EFBBD09393E245934A207DDC9F1D22BBE37B767B1B6F94E00E5258B56C72B7CE2985B69F1781CB22C03005A5BCDBBC8D24BAF1924E4386602B85769C3B1A537405554AC387800501421E3A5D7BBDE5F2C5D8ACE8DF16C2F7AEEB85C237AD09D162FBDE27B7393C5DC9EC593ED59FF8D90D5F1DAB1ADB6A5288A025555D1D0D090FD5D6B6BABA9771DF4D26B2409398EF6E014A4DA14747577617B6C3516FCE427D8119E66AA37172FD433BDF67ACF3970102BE0C30B1887F0B430FCF512E624F721148B1A3E99CB09F1D2EB0DEF2F962EC5A486C5D9C4516BD35AF26896D7CC78854D1C6559862CCBD98A4C26930080582C666AE3A1975E23E851956CC20800BF6CFA327E561FC1829FFCC454EF7044AF677AEDF77E4255D111FB3A6E79F32D4852C4940B6B3E2FE0AD7AA6D75AEFE55DDDD99BA0502C9A6DD7667B01F3E3152E71946519C19CD5D093C92462B1186459462412412C16A3975EC77AB5F15C9D8B160300B6C7566396FC2DEC0F874DF50E47F47AA6D77EEF2754152F601CEA2312DA5405DB63AB718D498FD69C102FBDE27B3B625FC772F8D01E9C82E9E169A6DD04D915AF866F5B4BDAB11B475FD7E84347476F5183A0B5CC3B168B953D20B494ADA5E8A5D708AF96306A4B303C82B4D0F18AE8DD2867BCAB63DE8857AFF7F2EE6ED4FC646BF6625AEA45D56DF1D22BBE77A67A72C1F9521345BBE205806030886D2DA5A780AEEF71CCCDBCB5ACDBEC710CF4D26B14B98FA343B1287E561FC12CF95BA67B87237A3DD36BBFB723F6755C256F44785AD8D4C7D1C3BD5EAB677AADF32E870F33D5B611E317CDF65A156F215C3FAB3A1289649FEBD34BAF5BBCDADA8BFE7A69C80534A22842C64BAF77BD1DB1AF672EAC83E3BCACF27AAD9EE9B5CEAB3D21D27A18CD6ED776C55B08D7278E7665DDF4D2AB076DC78B428F34448B975EEF7A13721C932C4E1835BC54CFF45AEBB53261CCF53A09D73FAA26C42D1CD9B401FB975D05C0BC471A84D88DB62240AA4D31F571342156923BACC8EBE76F268E8498CC90718C1D294F9F7088D8E4AE0830A3A5956D9DB81E268C2361E248884924E4383A1B33EB6BCD49EEC3C4956B6C2E1121E6C08B2B1111F69CE78789232126A08D83D126BF10222ADA8CD2194F3EC1B64E8420F746883DE72361E2488881B0E7857885239B362031CB0F00A66C0B4888D5F4ED7A69C853229EBFF3C3C4911083C89D6DC7130E11951E55C95E5C39669788823679914F89C6C6B4C4F1C4897E1C3B9632EBED09710CEC65245E419BFCE2AF9738669708016F844AC7F0751C07064EA0EBDD37F1DC7FFF2B2AC65560F92DDF1D71CC638FDE8BD75E7D1AC1E05400C0B54BD662FAC7E7185D14424C87BD8CC42BE4EE8E010089849DA521A47C72CFDF58CE1BA162313C71ECEBEBC58BCF6FC6FF74BE8E73CFBB28EF317BF674E0B6AF3D84B3CE9E858A0AD7AF414E3C4A676303FCF592E58B1B136225BC392222A2CD98E68D50E9189EB58D1F1FC0B29BEFC7F69F6F42E2833FE43DA6EBDD37B1FEAE2BD0D7D78B2BAEBC154B6FDC80AAAA09798F4DA52AB39B805B452A95A9167AE9CDC7914D1B70F8C1FB50DB7C27B07C4DD1271CB7C64B6F711C1630DE4C5B8F63F2E6ED40DDBC216DDD6B9F2FBD627873CFDFFE1F3C9B6DD3A2C66B06B674F7CD3E7F1EE62FF86B4C9AF4317C6B432376EF7A0AF591EBED280A21257164D3061CDDF522266FDE8EEABA7976178710D3482EBB12E3EB2E41A88363D58918E4268D1CA3AB1FCB13C7747A0037ADF836AAAA6A000091794D78AB7D47C1C4D1EFEF4728D46B6511B3993FBDF4E6A23D9A3EE7E996C1DF94F67AB7C54B6F69D4FAC58877E8A3E95528D4CEBDF6F9D2EB6E6F428E23FD869233B468E8FB8B16AF9958B61CCF81FD1FE0FDF7DE462A750037DF781A121F76A2BFBF0F6FB53F8FD9175C6A55310829196DD634976920A2C3F18C44347A5465C862DEA47C4CED71F4F97CD99F5F79F971FCEE772AEE58F5635CBB642DEEB97B3E00E082395FC4672F5A68663108D10D2FA4C42B0C9F2C4088DBE1F9DB1C4C4B1CAF5AB872C8BF172CBC1D0B16DE0E0058FCA528AEBA7A25060606306142AD594520A42C7821255E411B86C11E19220A5AD238E3C927B8AB91C1D8B6734C4D8D9F4923712CDA82B0BC901291D11EE37118061189DC9B7E268DC6C32D0709C9811752E215B45D60F8188F88046FFACD8789232183F0424ABC42EE633CB6752202BCE9B70E6EDB4208381E8678078EDD25A2C14930D6E2A9C451966500402412812459971CD0EB6C6FB949A3DBE2A5D7BB5E6DBFE9D11EE389142FBDE27BC73A7F8B16AF13BCC2278EB22C435555288A0200902409B1588C5E7A01E8EF7D716BBCF47AD7ABCD9CCED7232362BCF48AEF2D94348A1AAF53BC428F71D4326F00D9CC3B1A35BF1B9B5E77788BE97D31C3AB177AE9D5CB5849A359DED1A097DE722834735AD4789DE4153A718CC562884422501405914804C0C98AA5D7DBDEE4B22B0140D7781837C64BAF37BDC54C1810295E7ABDE1D592C67C37FD22C6EB34AFD08FAA154541434343B662AD1A6740AFB3BDC96557627CDD2583FBF05AE72D177AE92D851E55296A950051E2A5D71BDEB19E148916AF13BDC2F638E656662C1683AAAA96741BD3EB6C6F676303C6D75D82892BD758EA2D177AE92D8562979612255E7ABDE1D5D6682CD4A6458BD7A95EDFB69674DA748B4EAE6BF4A1A3A317A1506F49AF936519B22CA3B5B55557F69D484C00007A05F2E6F6BE60F9DD967973F1423D7BD9BB51CE7857C7EC8DB7D85502DC5ACFF47AD33BDA385D33BD63E1562F000483416C6B293D0514AEC7D188CAA4572C6FB18FEC8CF61A01BDF496825549A35EE8A5570F66278D7AF19A5743A8C4D16B1F22BD63C3A4915EAF789934D22BA29749A333BCB9089338CA72661D233B3E447A9DE9352A69744BBCF47AD77B64D386CC2CD322924611E2A5577C6F312B028814AF93BDC3116256756E65D24B2F7032692C670B4137C54BAF77BD47366DC0D15D2F62D6D3A3BF9F28F1D22BBEB76FD74B482C1BFDA65FA4789DECCD87103D8E9148C496CAA4D7995E2392463D5EA3A097DE6249C8711CDDF522829B9FB1D45B0AF4D25B0A7DBB5EC2FE65578DF9A44894789DEECD8790B3AACB45EF2C277AEDF71633CE4BA478E9758E57EFAC6ABD688B20FB7FF02C00EFD433BDE27AB59BFEDAE63B71CE3DFAD6D9D58B97EA5983B3AA89E729767200216E67B49D33087123B949A3DE757689350831C69110268DC42B306924A231749D5D268D4E873D8EC4F53069245E814923110D2356BF20D6C2C491B81A268DC42B306924A2C1A4D19DD89A381E3DDA83B473E7E61087C3A4917805268D44349834BA175B12C74307F7A2FD8DFFC657964FC5E1437FB6A308C4E53069245E814923110D268DEEC696C9311D6FEDC4EF7EA7A2B7F7B01D7AE272983412AFC0A49188069346F7634BE2F8F9FA6BF1F9FA6BF164CB77C73C3695AACCAE736415A954A65AE8759EF7C8A60D38FC601C93376F47EABC794825ACF11A01BD627B0F1BECCDEC08A322B8F959244669E75EAB677ADDEBCD2CEE9D597207CBD7E46DD722C5EB646F3970720C710D99A4F13E4CDEBC1DD575F3EC2E0E21A6A16D2358CC8E3084B8016D4718AED3E87E1CBF8EA3DFDFEF9995DCE91DE558398EC30F6A8FA72F06A0BFAC6E88975EF7796BFDC67813721CE93794C1BDA78BF86E78AC9EE9759FB7475572F69E5E85D1DAB508F1BAC15B0EEC71248E87631A8957E09846221A1CD3281E0E481C7D7617803818268DC42B306924A2C1A4514C6C7D54AD67736DE21D983412AFC0A491880693467171FC1847E24D983412AFC0A49188869634F2FC2D260E78544DC850983412AFC0A49188069346F161E2481C059346E215983412D160D2E80D983812C7C0A4917805268D443498347A074F8D71946519001089442049D6356C7AC7C688A4D14DF1D2EB5D6FB149A328F1D22BBEB798F3B748F17ADD2B7CE228CB32545585A22800004992108BC5E87590B79CA4D18DF1D2EB5D6F428E0340C1A451B478E915DF3BDAF95BC478E915FC51B5967903C866DED1A8F9CB02D05BBCF7C8A60D48B5299893DCA72B69D4EB2D077AE9D5839634165A9A44B478E915DF3B56D268967734E835DF2B74E2188BC5108944A0280A2291088093154BAFFD5E6D3F5EBDE3BCDC162FBDDEF576363600289C349AE52D067AE9D5C3584F8A448B97DE93089D382A8A828686866CC55A35CE80DEB1BD09398EA3BB5E4470F333967A8D805E7A4BA1B3B101FE7A69CC45904589975EF1BDC50C2F12295E7A87226CE2985B99B1580CAAAA5AD26D4CEFD85E6D72805149A3D3E3A5D7BB5E3D49A39BE3A5577CAF76FE1E6D789148F1D23B12DFB696B463F7FDBBAED1878E8E5E8442BD25BD4E9665C8B28CD6D6565DD97722310100E835C19B3BA3D40BF1D2EB1DEF4639E35D1DCB788B4D1ADD1A2FBDDEF316B3228048F18AEC05806030A86BEB67E17A1C8DA84C7ACDF18E35A3D42CAF11D04B6FB1F4A80ADA83532C491AF5422FBDA56245D2A8177AAD45A8C4D16B1FA29BBCC54C0E30C36B04F4D25B2CA776BD84CE458B118A459934D22B8CB7989B7E91E2A5777484491C6539B38E911D1F22BDA353EC233BA3BD46402FBDC5729EBA019FDF7255D149A3DBE3A5D71BDE626EFA458A97DEB1116201F0DCCAA4D7395E6D0BAA622EA4467A8D825E7A8B2521C771AE12C72B4DDBF195D8C596794B815E7A4B25B9EC4A042F1BFDA65FA478E92D0E217A1C2391882D95496F611272DC90A4B154AF91D04B6F31684B93BCD2B41D07C2F32CF3960ABDF4164B8FAA2031CB8FF175978C79FE16215E7A4B43C859D5E5A2779613BD83EF57E41682A2C44BAF77BDB9130686CFAAB60A2FD433BDD679B5F3776DF39D98B8728DF0F17AD50BE89F552DC4A36AE21CB217521DFB4E13E2268C5825801027917BD39F3A6FBEDDC5210E458847D5C419E4F6BE3069242263C42A01843809DEF4936261E2480C41BB90B2F785884C296B3412E216727BCF993492B160E248CA821752E2158C9CF045885360EF392915D312C7A3477B904E0F98F5F6C401F0424ABC42EE633CB67522020939CE9B7EA20BC327C71C3AB40FDFFBCE528CABA8C49FF7BE8BC66B56E3B22F2E1F72CC638FDE8BD75E7D1AC1E05400C0B54BD662FAC7E7185D1462221C0F43BC82B6803D876110512876E50B42F26178E2B8E3D91FE2DC991763E95F6DC081FD1FE2D6E567A25EBA1E3535FEEC317BF674E0B6AF3D84B3CE9E858A0A4EEC761BBC90122FA05D5CD9A34E4442BBE99F93DC677751884B313C6BFBE0833FE0824F5F010038E5D41000E0C0FE044267CCC81ED3F5EE9B587FD715E8EBEBC51557DE8AA5376E4055D584BCEF974A5566D739B28A542A532DF40EE5C8A60D38FCE07DA86DBE1358BE068984355EA3A197DEB1C8B4F578496DFDB08BE3A5577C6FDFAE97B07FD955A86DBE13FE1F3C3B669B767BBCF49A87E18963EF9143D95E449FCF87534E391DE3C60D1D4A39FBFC7998BFE0AF3169D2C7F0AD0D8DD8BDEB29D447AE37BA28C440B4A471F2E6EDA8AE1B7B770C42DCCA914D1B0000A18E94CD2521C418726FFA27AE5C63777188CB313C713C7BFAA790DCB70700303070027D7DBD98725A38FBF7747A0037ADF836AAAA6A000091794D78AB7D47C1C4D1EFEFF7CC4AEE4EF56A8FA6CFC93EDA3068871987C64BAF37BD231F4D97F6FA5ABFBBE2A5D71BDE841C47FA8DDC47D3C5BD8F5BE3A5D77C0C9F557DCE3917E2D55FFF1C00F0CB97FF13D3C2E7C3E71B8703FB3FC0FBEFBD8D54EA006EBEF134243EEC447F7F1FDE6A7F1EB32FB8D4E8621003E0AC3BE215389E91888676FE06B8BE2E3116C37B1C3F7DE11578AAE57EDC7253087D7DBDF8C63DCF00005E79F971FCEE772AEE58F5635CBB642DEEB93BB39DD10573BE88CF5EB4D0E8629032E1AC69E2057213464E1620A2C01B21622686278ED5D513B17EC30BF8685F374E9D7C062A2AAA00000B16DE8E050B6F07002CFE5214575DBD120303039830A1D6E8229032C83DE1F02E95880C2FAE4434782344ACC0B405C03F36655A3669CC474D8D9F49A3C3E022C7C40BE43EC29B93DCC7B64E84803742C42AB8E520C1914D1B9098955967937B951291E1C59588066F8488D570F56D0FA3F530FA3E7D29421D2957CDEA22A414F8088F8808C7A2133B608FA347D12EA4FE7A89EB7A1161D1DA39000EC120C2307CC634934662254C1C3D061F6B10AF909B348662515E5C89EBE1F99B3801268E1E81271CE21572C7ECB2AD131138B26903CFDFC431083FC6515114C4E3F1ECBF239148F6FF92645E0F8453BC2B009CABB4E1D8D21B30CBC471304E89975EEF7AB51EC6DAE63BCB1EB3EB8678E915DF9B90E3483EAF627CDD25654DE8724BBCF4BAC32B7CE2985B69F1781CB22C03005A5BCD5DA3D06E6FCDD6ADA8F9C9566C461A0A806B6EB8C1D4477576C74BAF77BDC327BE685B7899ED35037AE905901D62A1DD084D5CB9A6AC1B21A7C74BAFBBBCC23FAA561405AAAAA2A1A121FBBBD6D65653B37F3BBDBB9B9B31A96131B6FE640B7684A7E1DF91C635AD2DC2C64BAF77BD660EBF7062BCF48AEFCD6DD340A65D1B3179D1A9F1D2EB4EAFB089A32CCB9065395B91C9641200108BC54CFD10EDF23EDED080F6E0146CFDC916FC51AAC777921F6147789AB0F1D2EB4DEFBF4A1266AA6DA6258C4E8B975E6F78731346ED91B411EDDAA9F1D2EB6EAF7089A32CCB080683D97F279349C46231C8B28C482482582C268C3721C7B30923006C8FADC677921FE19AD65621E3A5D7BBDEC71B1AB0AABB0BE72A6D00CC49189D142FBDE27BFFF7B469580EDF889B20A31246A7C54BAFFBBD1ABE6D2DE9B4A98632B8AED1878E8EDEA2C6766899772C162B7B40A83646CAA95E6D4CD7EB006AA57A9C168D0A1D2FBDDEF4F6A80A524A5B76FC2280A22EAA76C5BB51CE7857C7DC55CFF45AEBD516EDEED9D95654A2E8F678E975A6170082C120B6B5949E02BABEC73137F3D6B26EB3C713D8E1D592C5F6E014C46519BF6CFA326E4AEEC335168C9F00BC53CFF4DAEF9DA9B6A1B3B1019D8B160330B6276634AFD7EA995EEBBCB9E76F00F0D74B86F69A3B2D5E7AC5F016C2F5B3AA239148F6B9BE68DEDC9975DA09E650EB13F88E0D0D46E47AA6D77EAF7661D5DABABF5EC28C16F36622DA1D2FBDE27BF39DBFCDDAEED209F1D22B9EB710AE4F1CEDCABACDF21ED9B401097F7FC1934DC814EBD88856CFF4DAEF4DC8714C6D53D0DEB0D8F40BEB70BC54CFF45AC74CB50D093533BC2230B73EDBB368365EAB677AEDC5F589A3DBD1C67169635E6A9BEF0460DD059410ABC8ED81016049CF22216632FCFC6DF50D102176C0C4D162B4130D802177A5A747A3F0FF603E80E206C912E274FA76BD84FEDD3BD1F9C60BE8D9D9966DEB334CDCC1881033E9DBF51212BF7D1EC0D0F3376F80889760E268325AEF8A7647AA9D68809177A5A984E5C523C43086B7F5AABA08C6D75D82D3A351CC6861A248DCC7F01E4500EC55249E8789A3816817CEDC9F737B1479F1242290DB6B9EEF82AAB5756D9989007BD0890B18FE3408C0901E45FF0F9E05C027428430712C911E550180BC17CED17A1309711BB91752207FAF396F8888DB2874E393DBAEF30DA748F0891021009838E6451B9B95F0F703C89C5C00E43DC1F0C249DC4CA1E41018DACE01B675E20EF2DDDC033C7F136214B6258EE9F4008E1D3B82F1E3039639879F5034722F960050551701004CBC2CF3FFD3A39947703CC110B790DBD68FA4325FF3CE375EC8FC2DA7AD3339246E416BD3477EB10B0046BDB1073024390478FE26C4286C491C773CF7EFF8AFD67F44F0636761E0443FEE58F5634C3AE5B4A25EAB9D3C34862781C0C9130930F2220960C88512C89C584E8F22FB68A2942D8008318B52DA7A6E3B07F2B7755E4089DD1871FEF67DFAD221C7B35D13622D96278E274EF4E39FFFE966FCC796039838F114FCEBBFFC2D9E7BF687B8E6BAFF9BF7F8C42C3F72879668270F8DE1492070F24402F064428C61F805AF10F92E841A47529538BAEB45A46A46EE0D3A3CF1034A6BEBA3B5734E52218528A65D176AD35A4F76C2DF3F24D9CBBE779E360D0C6DD77ACEDFBCB127C45E2C4F1C3FDAD78DD019333071E2290080A967CEC49FFEF47AC1E38FD7D4C297739D3DF0CA6F86FC7DF8BF0100DF7DA8AC32A67D99FFBF57FADEDFAEF00E548E1FFA6F5F46DC9D364F5CD17F7864397C5500ACABE7CABEA1652865AC7B7F756D51C71D9F704AC1BF0D0C8C437FCD248CABC8F3BAE97347FC2ED935EC175D2F8F7CE156ED77DF29E83D9179A2870E8BBFED227B7B274D07004CDA7BF2DC35A7671C00407D64C03C710EC7C74F46F0DD9DD97FEB99BB91CCD3EE86B37F5AFE638E1DCBC45B5353897DD3EE1AF1F703B1793A4A044029F0F320870713D65AFF047DEFAF137AE915C95B0E96278EBDBD875131EEA4D6EF3F15BEC1C4855843E5F103437F7162B0FE2BCCCBE0D2BE91D952D5B191C964B19CA81E3FF641DAB19599A4AF7730A91B18C85CF006264E2AF89AE3E327EB2E5BC1720C2634159C92E67A825D2F0000FAC79F6A5F197292C6522926612C863F9F3D0FE3C79F18F1FB03619D492321C4F1587E093B73EA7978FFFD77904EA7E1F3F970F0F03E9C1D3EBFE0F167BFFEA1E58F24EC7A14426FF114FBE81818F9A84D7BC4961E9C2C92F7FD770EBD280F7F6C0C0C7DCCE69786FE3DDFCE286EAC677A8B67A39CF1AE8E393FDE72BE3F1A99A117EB51936FE8C596D2865E14F3FDD1F05ABBA2975EB3F87FB2BED7599E3856574FC4F48FCFC1DBBF53119E3E072F2B8FE286A6F5561783B89C52B6AC1BB91E9BF6455D55F47BE4BBD0E65E50F7C6E343FED6B973F149FFE005F3D8311FC6D75D829E057505CB46881594F3FDD148242660E2CA35455FF0469B1853CCF707C8249B475295A8BC782E7A82C7F8FD21C4066C7968DD805011000020004944415476C35F7E131BD62F04005CF4B9AB71C185F3ED2806214593EF0235F477D1117FD7D02E98FB9335E8DFBD73C84552BB400E9F05ADF5C0F0C2484461785B2EF5FB039C4C367B36DD8BE335E911DF1F20F31DE2F78710F3B02571BCB8AE013FDCFC017A8F1CC2A993CFB4A30884588676F14A2526A0BA6E5EDE9ECEDC7517536D4A76966AE7CEC543924A5E1089D7C86DEB818894B7A7737872A9DD9CF1FB4388F1D8364CBFA6C68F9A1ABF5D7A421C857621CBFC7F68EF4B6E5299EF82A82D5FC28B21F12AC393CBDCEF10BF3F84180BE77712E2700A2595DA7681DAC5702F32FFE7859090938CF6FD01302299D47A26F9FD21243F4C1C097129818834E46238FC42A8259255B7DE85EA3A2E8F42482ED984326791F11E55C1DE781CA936259B486617243F8F63F10901983812220CC32F845A22D9FDCD7B717C998AD4E045903D2984E4271091F226923D3BDB505517C9AE8AC0EF10F1324C1C091114EDE216DC9CE929F1FFE159EC8DC787F4A4F0024848617213C9EE2777A367D3BDD8FBC60BD88B38878410CFC2C491108F907B11D47A52984412521CD575F310AC7B06A150EF909E487E7F88D718677701CA45966534343440518ADF09815E7ABDEE0D4424CC6869C59CE43E9C1E8DE257CDCD683967065E7EB8BC7DDE4B45F47AA6574CEFF0EFCFDE781C9D8D0D78BCA141C878E9F5A6B710154B9AD6ADB3BB10857874EB7A3437AF4520D05FF0184992D0D5D585E6E6E6ECBFCB2595AA02007AE9F584B73A1CC6C7BFFA55BCF4FB7770E87B0F60FFD69F60C2C14308481153BD8058F5DCA666BC11C91BF1D29BA13A1CC6E4A6265485A7A1B64D85A4B4A163CB56BCD2F52E2EBAFA6AD3BCB978A19EE935D60B6412D2254DEB4A7E9DEB7B1C0120168B21994C425555048341C8B2CE0D18E9A5D7C3DEDB366DC24DC97D78BCF614FC428EA33D380509393EF60BCBC46BF54CAF98DEDC5EC805B128BEB0E5A7F88FE01461E3A5D71BDE7C0891386AB4B6B6A2B5B515AAAA8EE8D69565D9B48AA6975E91BCDF7BE945CC687D02FFFAA9F3F1CB871FC66B975E929DA12D62BCF4D26B34A158147392FB306BE90DB84ADE887FBCF03342C74BAFF8DE5C7CDB5AD269D32D3AB9AED1878E8EDE215B4B158BA228880FAE67178D46A1AA2A64594632991CF3B589C40400A0975E7A15053FBB730D2EEFEE4678FA34EC3EFF53F8FA962D42C7ABD7BB51CE7857C7BC112FBDC5D1A32AF8FD9A35E87AB71B3BA64DC3F5F76D103A5E7ADDE105806030886D2DA5A780AE1FE3588870388CA6A6A6ECB8009FCF87A6A626A8AA3AE6F88062C61CD04BAF57BC57AD5881966347F1CFFFF99FB8F5CDDF62AE14416B5797B0F1EAF51633C6D10CAFD7EAD96DDEEA7018672E5F81B32FBE08A73CF138FEE7E11FE09D830771D58A1542C64BAF3BBC80FE318EC2268E1A922421168BA1ABAB0BB22C4355D5ECEF0B51CE07492FBDA27A97C562780469546FF9296AD5B63107FFBB3DDE52BDE5248EE578BD56CF6EF56A93D0CE00F089C79F409BAAE2C1C1212022C64BAFB3BD80FEC451D847D51A859EF98FD6955B4ED731BDF47AC17B21807FC4388462518462D1BCAF1129DE62BCE53CAA2EC7EBB57A16C17B2180E583530CFE0F06848F975EE77901FD8FAA854F1C87A30D241D2D1337E283A4975E2F78A76ECC8CAF99D1D26AA9D789F56C44E2A8C7EBB57A16C9BBBBB919956FFE0633376C28B880B848F1D2EB1C2FC0C4D150CCF820E9A557546F428E23D5A68CD83D43D4780B6146E2580C5EAB67D1BC3DAA82CE458B0BF6DE8B162FBDCEF002FA1347A196E32184584F2816C5E9D1283A172DB664DD47424422109130E3C927906A53F8FD21AE80892321A46CB48B5F428EF3E2474889688B873379246E80892321C410D873424879686385F9FD214E86892321C430727B4E8E6CDA60777108711DDA38C7CEC6069B4B42487E983812420C67464B2B8EEE7A91C923213A08C5A2F0D74BEC79248EC4B4C4F1E8D11EA4D30366BD3D21C4E104373F83A3BB5EE4C58F101D683D8FBCF9224EA3D2E8373C74681FBEF79DA5185751893FEF7D178DD7ACC6655F5C3EE498C71EBD17AFBDFA3482C1A900806B97ACC5F48FCF31BA2884109B096E7E0689597E0028B8503821243FA158141DFFAB31F38F7B56D95B184206313C71DCF1EC0F71EECC8BB1F4AF36E0C0FE0F71EBF233512F5D8F9A1A7FF6983D7B3A70DBD71EC25967CF424585E14520843888194F3E81CE458BE197EA0B2E724C08C94F70F333482EBB1209B99F375FC411189EB57DF0C11F70C1A7AF00009C726A080070607F02A13366648FE97AF74DACBFEB0AF4F5F5E28A2B6FC5D21B37A0AA6A42DEF74BA52AB30B645A452A95A9167AE9A5B77C2FCE9B8FDAE63B338B1C77A42CF35A1DEF618F7EBEF49AEFADF9E71D487CAE0647529598B8728D655EC05BF5EC256F39189238FE68730C870F7F84F33EF105F41E3994ED45F4F97C38E594D3316EDCD0A194B3CF9F87F90BFE1A93267D0CDFDAD088DDBB9E427DE47A238A42087120DAC52EB9EC4A04373F63736908711FB5CD77E2F083F75996381252084312C7A9533F8154EF21048367E2ECE99F4272DF1E00C0C0C009F4F5F562CA69E1ECB1E9F4006E5AF16D5455D5000022F39AF056FB8E8289A3DFDFEF992D80E8A55768EF3DAB9090FB8147D69BFAC8CDAE786BFD0EA9677AC5F4DEB30A097F3F52B7CDCFBB37BC695EAFD5B347BCE560C8ACEACBE7DF82450D7F878B3E7735CE39E742BCFAEB9F03007EF9F27F625AF87CF87CE37060FF0778FFBDB7914A1DC0CD379E86C4879DE8EFEFC35BEDCF63F605971A510C4288C309C5A2DC5D86109D70991EE2040C5F8EE7D3175E81FEFE3EDC7253080F3D700B56DCFA5D00C02B2F3F8E9FFDF41E0402415CBB642DEEB97B3EEE58390BA74E3E039FBD68A1D1C5208438142D792484940E6FBE88DD183E39A6BA7A22D66F78011FEDEBC6A993CF404545150060C1C2DBB160E1ED0080C55F8AE2AAAB57626060001326D41A5D04428883D11E5327E438678912A2032D79E4F787D881696BE17C6CCAB451FF9EBB3C0F21C45B846251B407A7647F2684140F6FBE889D70CB4142882DF0913521FAE1236B62174C1C0921B6108A45993C125206A15814A936C5EE62108F2154E2A8280A6459A6975E7A5DE2D512C71E55F144BCF4D26B24F966598B1C2FBDF67973112A715455D5960AA5975E7AF5138A459152DA3C132FBDF41AC9F05E7BD1E3A5D71E6F2E154B9AD6ADB3B504A3F0E8D6F5686E5E8B40A0BFA8E32529B30FAEAAAAD99FF5904A656682D34B2FBDE67B0352049D0D8D9024090129E2DA78DBD48C372239B39EE915DB9B525504A48867E2A5B73C2F00C8B28C254DEB4A7E9D503D8E1A7665E3F4D24BAF3E727B4DBC102FBDF41A49BEB1C222C74BAF7D5E40B01E47C0986CBCD43B007AE9A5B73C6F408A00002E84AFEC5E47BBE22DB5C7D128AF1B3E5F7AADF11AD9EBE88678E92DAFD7913D8EC3F0DA5D00BDF48AE065AF23BDF4EA83BD8EF45A85703D8E40F9D9B89E3B007AE9A5B73CAF51BD8E76C5ABA7C7D108AF5B3E5F7AADF11AD5EBE89678E9D5DFEBC81E47428810705D4742F4C17551891508D9E30864B2F1868686ECCF8AA2201C0E17F55ABD7700F4D24B6F79DEDC5EC7A6C1C7306E89576F8F63B95E377DBEF45AE3CDED75F442BCF496EE05F4F7380A9B380E271E8FA3A9A9A9A863CBF920E9A597DEF2BC2955CDBC6E3089B4CA9B8F52BCE5248EE578DDF6F9D26BAE575BDE2ADF1ED622C64BAF3E2FA03F71AC2CF9152E419665C462310483C1B2D73AA2975E7AADF3866251B407A760792C8A59F2B7848F975E7A8D467B64FD08D29E88975E6BBD428F71B4BA32E9A5975E63F8A3548FB82C7B265E7AE93592DCB18E5E88975E6BBDC2F638C6623144229121CFFFE9A5975E7778AF696DC5B9C129B854512CF57AAD9EE915D71B8A45B11C40A4B5D513F1D26B9D57E81E474992904C262DCFC6E9A597DEF209C5A2E8887DDD33F1D24B2FBDF4BAC12B6C8F632EADADAD50067B2EE8A5975E7778FD523D3A172D466B729F27E2A5975E23D1C60A6B9364448F975EEBBCBE6D2DE9B425261D5CD7E84347472F42A15E4BBD89C40400A0975E7A6DF6763636C05F2FE59D216AA6570F1BE58C7775CC7DF54CAF985E6D9C6329DF1F23BCE540AF750483416C6B293D0514FA513521C4DDF8EBAD1F6C4E882870417062064C1C09218E85173E42CA2330B79EDF216228B6268E478FF620EDDC27E5841007C0E49110FDB0D79E188D2D89E3A1837BD1FEC67FE32BCBA7E2F0A13FDB5104420821447878E3458CC696C4B1E3AD9D78EDD73F476FEF613BF4841017C10B1F21E5C1EF1031125B96E3F97CFDB5F87CFDB578B2E5BB631E9B4A5566671D59452A95A9167AE9A5D719DEDAE63BF1A76FDC8F892BD758EA2D85C302D433BD627A8FE8780F37C74BAFB958D2E3F8FC738FE0A1076FC5E67F5B65858E1022204777BD6877110871251357AEC1E107EFB3BB1844102CE971FC58702ACE0E9F8F9A9A8925BFD6EFEFF7CCBA4AF4D24B6F01EE5985F6E07D45BD975DF1D6FA05A8677AC5F5C6A2C023EB8B5ED3D1F5F1D26B1A96248E733E7325E67CE64A2B54841041D1C669E959CC981042883138601D479FDD0520841042848613648851D89A386E6B4963D229A7D9590442884BE0858F90F2E062E0C4081CD0E3480821C5C1E49110FD70317062044C1C092184100FE097D8E348CA47C8C45151147AE9A55740AF993D8E4E8C975E7A8DF40622991EC71ED5BC3239295E7ACD41C8C4B1A1A1815E7AE915D86BC685CFC9F1D24BAF51DE502C8A94D266B9D76CE8B50E211347C07B7701F4D2EB15AF99173E27C64B2FBDF4D2EB246FC592A675EB6C3117C1A35BD7A3B9792D0281FE925FDBDDDD0D49D237103895AA02007AE9A5D781DE94AA22D5A660725393A5DEB1685333DE8824463DD32BA6372045D0D9D038E67AA8A2C44B6F616459C692A67525BF4ED81E47428898846251F4EC34EF511B21A213985B6FEA38472236BE6D2DE9B4DD8528C4758D3E7474F4EADA8A27180C22994CEAF296B30510BDF4D26BBEB7B3B101A747A3D9C1FE56794763A39CF1AE8E8953CFF48AE9D526988DD6EB2852BCF4167EFDB696D25340F63812425C87BF5E3275803F2122E397EA916A638F23D187B0631C014055555DCFFFCB1973402FBDF45AE0F5A57160EB96BCE31CED8AB79C318EE57885FC7CE935D55B1D0EA37BE5DF8CDAE32852BCF4E687631C09219E21109138CE919032E03847A21761C73802FA9FFF9733E6805E7AE9B5C65B689CA35DF19633C6B11CAFA89F2FBDE67AC71AE7285ABCF4E67F2DC738164096657AE9A55730AFD9E31C9D162FBDF41AE9B56A9CA353E2A5D73884EC711C5E81AAAA221A8D163D0E40EF1D00BDF4D26B9D3721C7916A5330A3A5D5526F21F4F6383ABD9EE915D7DB1E9C8239C97D967B47835E6BBC007B1C8710894420CB3254550590595DBD9C4532E9A5975EE7798D5ECFD1E9F1D24BAFD15E33C6393A395E7A8D41C859D5E17018406655F52D5BB64092243415D865221F7A6739D14B2FBDD67A13721C7EA91ED583AFB1CA9B0FBDB3AADD50CFF48AE9EDEBEAC6F1AE6E04A488A5DED1A0D71A2FC059D52388C5628844325F06EDFFF4D24BAF585EA3F7AD767ABCF4D24B2FBD767B2B2D33D9402C1603606D85D24B2FBDF4D24BAF1BBC7EA91E9D8B168FB96FB5D15E33A1D77C849C1C532EE54E8FA7975E7AADF1F6A80AF6C6E34326C8D8156FB9CBF1E845E4CF975EF3BD8526C8881A2FBD27E1E4184288E7E042E0849407170227A5C2C49110E26A78E123443FDCF79D948A6989E38913FD38762C65D6DB134208005EF80829172B160227E260F8E498818113E87AF74D3CF7DFFF8A8A7115587ECB77471CF3D8A3F7E2B5579F463038150070ED92B598FEF13946178510420821A3108A45D11E8CDB5D0CE2220C4F1CFBFA7AF1E2F39BF13F9DAFE3DCF32ECA7BCC9E3D1DB8ED6B0FE1ACB367A1A242E889DD841093F14BF5D81B8F03307E6628218490A1189EB58D1F1FC0B29BEFC7F69F6F42E2833FE43DA6EBDD37B1FEAE2BD0D7D78B2BAEBC154B6FDC80AAAA09798F4DA52AB3B38EAC2295CA540BBDF4D2EB02EF79F3D1B37371D66357BC8745AF677A85F556D545D0FDE46E54D7CDB3D49B0F7A9D8F21631C7FB43986871EBC15CF3EF3C3A28E9F7DFE3CDCFDCDE7F0C0436FA3E3B70A76EF7ACA886210423C4A555D047DBB5EB2BB1884B892F17597A07FF74EBB8B415C82213D8E53A77E02A9DE430806CF1CF3D8747A0037ADF836AAAA6A000091794D78AB7D07EA23D7E73DDEEFEFF7CCBA4AF4D24BAF4E2E8B00BF7D1EA14517DB166FADDF03F54CAF90DE84BF7F8443E478E92D0F437A1C2F9F7F0B1635FC1D2EFADCD5058F39B0FF03BCFFDEDB48A50EE0E61B4F43E2C34EF4F7F7E1ADF6E731FB824B8D2806218410424AC42FD5232173820C290E53D771F4F97CD99F5F79F971FCECA7F7201008E2DA256B71CFDDF371C7CA593875F219F8EC450BCD2C06214470FC523D97142144278188647711888B306D4AF3550B570EF9F78285B763C1C2DB01008BBF14C55557AFC4C0C000264CA835AB0884108F108848E8DCB9D8EE6210E25AB485F4994492B1B06DE7989A1A3F9346420821C40170217D522CDC7290102204DC7A901042CC47C8C4515114288AF517107AE9A5D73E6FB93D266E8B975E7A8DF41A354ED82DF1D2AB1F2113475555A1AA2ABDF4D24B2FBDF4D25B048188849E9DE53FAA764BBCF4EA47C8C49110E23D38B39A1042CC47C8C4311289D89289D34B2FBDF679CBED31715BBCF4D26BB4D78871C26E8A975E7DF8B6B5A4D3B6988BE0BA461F3A3A7A75ADA81E0C06914C267579CB59C99D5E7AE9B5CFDB1E9C825047CA722F006C9433F1AE8E895FCFF48AE9D516010FC5A29E88D7CB5EEDF5DB5A4A4F0185EC7124847893C0DC7AEE594D082126226CE22849922D338EE8A5975EFBBCFE7A09FDBB775AEE2D177AE97582D7A871C26E89975E7D089B387A6DDC01BDF4D24B2FBDF496EB356266B59BE2A5B774844D1C0921DEC32FD5E3E8AE17ED2E0621AE84DB0D9262103671F4DA1D00BDF4D29BB9F01DDFA5BFBC6E8B975E7A8DF6726635BD63216CE298FBECDFCA3100F4D24B2FBDF4D24B2FBDA27A854B1C154541434343C17FD34B2FBD627BABEA2225CFAC7673BCF4D26BA4B79CAD3BDD182FBDA553B1A469DD3ACB6C25F2E8D6F5686E5E8B40A0BFE8D784C361747575FDFFEDDD69605365C2B7F17FEC469B50202C058482E0860C7547A709888A30E2D0A2205A15575CC0ED11B5D57940C1651E5319D401454765D0514711E715C451514487041554B48205541C1097B2142D0DA5FBFBA1B6526869D29C9CA427D7EF1390E5BAEFD392DE3D3939473E9F4F369B4D9264B3D994939313F073F8FD099244972EDD36D82DDDF8A36A7ED8A24EA7FFDED4EE4A5FDD7C5DEED8D8CE74ADD9F5D7BFF579DC3053BB0DFD18D9CE91EE4A92C7E3D1F89CE9413D46B2F009C0B3B2B21A76DD2E5EBC586E77E007FD8672424EBA74E946B6FBED5DB3244987DD33C5D46E2827006F8BDB99AE35BBA53EAFB6E5E7CBFEB7B74DEDD68B95ED1CE9AEC409C00F909B9BDBF0E76037265DBA74E9D2A51B8BDD502FDDD9DAAE11E89AC3726F55D74B4F4F97D4BADDB7ADD9754C972EDDE8E89696C66BCFABFF50D74B827B5CA8DDD6BC556D4437D6BEBE74C3DF2DF2E4CB71C3FF9ADE95626B3B47B22BF156B5A142D9754C972EDDC8778B06D89551BCC3D46E286F55872216BFBE74C36B53769612264E53E2E0A13131DF58EC4ABC550D0000803063E108C0721206BB423E893110AB42BDE63BAC2D620BC7EAEA2AF9FDBB2295070000409022B2705CB268966EB961A0E63D79B3F2FF3C463F7CBF2112C3006051ED069FD6EA931803B18E6BBEE3604C5F3856555568FEBC5B95FFD027BAF17F9E55FFC34FD21BAFCF317B180000000852BCE9C1F844CD7F7EA7DAB573A8BCDCAF4F3E7E5DA346DFDCECFDFDFEF8864F1D99C5EFAFDB2C74E9D26D9BDDEA41C354FCF40CE972F3DABB63703BD3B568F7F0B354B96A0C3F7F2DDC0D85290BC7E5CBE66B7DA1572929A9BAECCA5972389CDAF4CDA77AF4AF5728BDCFEF74CAA9D9660C03000000213065E1D8D9D953BDD2072A29294592B4F6F3657AE82F17E9CA6BFE2A97FB82833ED66EAF8A99F32AD1A54BD7A0EE50978AAEF599DA6E6F8FC1ED4CD7B2DDE2C12E25AC7B5769A34F36B51B6BDB3992E7716C2D53168E19C78F50C6F1232449B5B5B5F2FCDFB9BAFBDEB775F811A7989107000080014CFF704CD14FDFA8AC6CB7EEB8ED548DCBB6695CB64D731EB9DCEC6100B038C7904CCEE508B452BBC1A7712E4734C9F40FC774EF7178AB2E7103000080C8E2CA31002CC99EE9E65C8E006030168E0000A091F8938770127034C9920B47AFD72BAFD7FC639BE8D2A54B972E5D2B7413070F55E52A9FE9DDD6A26B1E4B2E1C25293F3F9F2E5DBA31DCB5BB33E55F19DC0B6B5B9E2F5DBA74E99AC1B670516DD47E52655CB64D858565AD3ABF91D3E954717171ABBAA19C57892E5DBAD1D1B57FFDB6368D1EA38CE21DA6741FF4D4756FCF8BADED4CD7BADDA201F6A0FEFF18D595626B3B47A25BFFF8D67C58D9B27B1C01C43687CB1DE921006D5AC26017A7B4C201583802008003B41B7C1A6726C0012CBB7074BBDD113970942E5DBAD1D30DF624E06D7DBE74E9D2A51B6E965D38BA5C2EF97CC17F228C2E5DBA74E9D2A54B976ED32CBB7004004E020E00C662E10800000E107FF290A04F6905EB63E10800000E903878A84A57B0C71E8D5976E1B8EF7BFF661E3C4A972EDDE8E9067B12F0B63E5FBA74E9D20D37CB2D1CBD5EAFB2B2B21A3E6DE4F57A4D39BB3A5DBA74E9D2A54B97AE55BBF5E2C6E74C9F6E5A2D480B5E9CA11B6E982A87A32AE0C7A4A7A76BCB962DF2F97CF2F97CFAEEBBEF949B9BABF4F4F4809FC3EF4F9024BA74E9B6F16E627ABABEBBFE46A5E5E586BDBBD257D775B9636F3BD3B56ED756F09E12D27B2B3180C75A61BEB1D295248FC7A3F139D3837A8C64F14B0ED60BF6923CA15E02882E5DBAD1D32D707609F8B269A17443BDE4606BBBD1B29DE95AB3EBBFE62C75CBCD0DEA4A4C6D79BEB1D2AD7F3C971CDC475E5E9EA4BA1364D2A54B972E5DBA7483D79A535AB5E5F9D26D59BCA93513D56F5097CB45972EDD18EED65F3D26903D2656982F5DBA74E9869365F7384A751BD3EC95385DBA74E9D2A54B97AE55BB965E3846E28B48972EDDE8EA06FB565B5B9F2F5DBA74E98693A5178E0000A0F5823D172AAC2F6C0BC7D2D262D5D45487EBE90100006032C33F1CB363FB16CD7AF002A5A676555C5CBCFAF53F4163C74F6D749F5716DCA7359FBE29A7B3A72469ECF8A9EAD337C3E8A10080ECEE4C6DCBCF9774F07339023890C3E5D6A61563223D0C4411C3178EEF2F7F56C71E3742175C3443959565CA1997A233865FA94EBF2E122569EBD6425D3369AE0EED3540717196FD6037000080A518BE6A1B3D668A6C369B2469CDA74B95D6BD9F3A76EAD1E83E5B36AFD58C69C3555151A6E12326EAA209F72B2121B9C9E7F3FBE31B4E906916BFBF6EB3D0A54BB7ED772B8A93545E6E0BFB387647C97CE9D20D47D7AC7EB4CCD7EADD5018728CE373CFE469EE9C897A7BE9534A4C4C91CD16A7975F9CA1D90F4DD075D73FD9B090AC77CCC0A1BAFBDE659A3D77830ABFF46AF5AA25460C03000E903878A82A57F9223D0CA0CD4A18EC52C5AAFF447A18881286EC71ECD9F348F9CB4AE474F650656599FEE2B940F109899A3D77C3017B1B6B6B6B74E915339590902449720DCDD1BA827795E93ABFC9E7B6DBAB5A75299E5084720920BA74E9465FB7C88471B4B747CF7CE9D235B2EB4FAA552767B91C268C211AE61B0BDD5018B2703CE3ACAB1AFEFCCE5B7F9324DD96B7B0D17D7EDEF5A3F6EC29516A87AE9A34B1AF663EFC993A77E9A57505CB3564D8C5460C03000018ACFE5CA8C15CAF1AD665F8318E1B367CA08F57BFA671D9BFBD3D3D7BEE46157CF6B6D6AFF7E9E629CF6BECF8A9BAE7EEB324498332CED409278E327A1800D02098CB0E02009A67F8C2F1FA9BFEAEEB6FFAFB01FFDEA3E7111A396AB22469CC79B93AFB9CEB555353A3E4E4F6460F010000006110B12BC72425D95934023045B0971D0400348D4B0E0200806671D941ECCBB20B478FC743972E5DBA74E9D2A54BD740B6858B6A6B23520EC0B86C9B0A0BCB5AF53175A7D3A9E2E2E2567543F9783C5DBA74A3AF5BE4C9AFFBB7BC835F763094EE839EBAEEED79919F2F5DBA46770B9C5D9451BCC3F46E30E806FFF8858B825F025A768F2300D4E3AD3600308665178E6EB75B5EAFF93F28E8D2A54B972E5DBA74ADDAB5ECC21100F655BA824F550340A8583802B03C4EFC0D84A6FE24FA8065178E2E974B3E9F8F2E5DBA74E9D2A54B97AE412CBB70040000C6E024FAA8C7C211404CE0AD3600081D0B4700000004C4B20BC77DDFFB37F3E3EA74E9D2A54B972E5DBA56ED5A6EE1E8F57A1B5D86C7EBF52A3F3F9F2E5DBA31DE3DD8315A569C2F5DBA4676033989BE95E64BB779965B38BADD75A7DDA8DF88F9F9F9CACD3DF865C6E8D2A54B972E5DBA74E9B6CC720B47A96EF7ADD7EB6DD8755BBF91E9D2A54B972E5DBA74E9B69E25178E6EB75B79797992EA362E5DBA74E9D2A54BB7F51C2E7740575FB2CA7CE936CF920B474911DBA074E9D28DCE6E20C7685969BE74E9D2A51B0E965D384AD2E2C58B4DDD7D4B972E5DBA74E9D2A56BE5AEA5178E91F822D2A54B972E5DBA74E95AB56BE9852300D40BF4182D004DE3EA4B9022B870ACAAAA5079B93F527900000004293E12D1E79EBD436B0BDE55AFDEC7688FFF67DD34E539B56BE788C4500000001020D3F738EEDD5BAAB505EFEA8199AB74C3CDF35552B2435F14BC6BF630000040100E76F525C40ED3F738B66BE7D003335769CBE6B55ABEECEFFAF187AF34E098E60FEEF4FBE35554946CE208EB9A92E8D2A56BB16EC26097BE7B6DB512070F35BCBB3B0AE74B97AE91DD3D268C259AE66BE56E284CD9E3B87CD97CCD9D3351CFCC9BD2F06FB5B535AA28DFA38A8A327DBBE9333386010000801098B2C7B1B3B3A77AA50F5452528A8A777EAFAFBFFE58834FC9D6D593E6AA7D6A177DE87B598332CE68F2B1767B95D2D2CACC186683FA953F5DBA74ADD5F527D5AA93B35C8E308CA9BD3DFAE64B97AE91DD227B55D8C7124DF3B5723714A62C1C338E1FA18CE34748924A4B8BF5C4A3D7E888234E56C74EDD5554B44903079E66C63000C4B8FA63B41CAEC89C730D00DA3AD33F1CE3703835F29CEB75D3E4A375DD557DB4C7FF8B4E758D337B1800002008815CB613D61791D3F18CBFE02E8D39F7365554EC95C3E18CC41000000010A4882C1C252931314589892991CA03000020485C72100000B488CB7642B2F0C2D1E3F1D0A54B976E232D1DA365B5F9D2A54B97AED16C0B17D5D646A41C801C2A022600001A504944415471D936151696B5EA63EA4EA753C5C5C5ADEA86F2F178BA74E9466FB7D4E7D5B6FC7CF55BB4D8F0EE839EBAEEED79D1335FBA748DEE1638BB28A37887E9DD40D00DFEF10B1705BF04B4EC1E47B7DB2DAFD7FC4F7FD1A54B972E5DBA74E95AB56BD9852300EC8F63B480D0388664AAD4C7297962190B4700000004C4B20B4797CB259FCF47972E5DBA74E9D2A54BD720965D38020000C0582C1C01004040EAAFF78ED8C5C211404CE1E07E00683D168E00000008484C2C1C23719E23BA74E9D2A54B972E5DAB752DB770F47ABDF2783C0D9F36F27ABDCACFCFA74B972E5DBA74E9D2A51B224B5E72D0E974CAED7637FC3D3737B7D1DF5BD2DA4B00D1A54B37FABB459EBA17D8B4BC5C43BBADBDE4A055B7335D6B7603B96CA795E66BD56EFD7370C9C15FE5E5E5C9EBF536ECBA0D7663D2A54B972E5DBA74E9D23D50DCF89CE9D34DAB0569C18B3374C30D53E5705405F5B8FA0DE8F3F93467CE1CA5A7A707F578BF3F4192E8D2A56BC1AEFFD713E63ADC2E43BB2B7D755D973BBAE64B97AE91DD8AEFB6C8EFF3A9534E8EA9DD96D00DAE2B491E8F47E373A607FD384BBE555DCFE974AAB8B838E8C7B576D7315DBA74A3BFDBDC5BD5A1765BFB5675A8DD68DDCE74ADD96DE9ADEA7075034537B8C7F256F57E162F3EF837365DBA74E9D2A54B37700E975BA52B5A3E01B855E64BF740965E389AF99E3F5DBA74DB46D7EECE947F65F3A7AEB0DA7CE9D2A54BD748965E38020000C038615B389696B6EE3D7700000044A778A39FF0FBADEBF5C8AC8BD5BD7B7F9597EFD1906197C83DE4C246F77965C17D5AF3E99B723A7B4A92C68E9FAA3E7D338C1E0A0000000C64F8C271CD27FF56D698DBE41E9AA382CFDFD133F36E3D60E1B8756BA1AE99345787F61AA0B838C3870000CD72B8DCDAB4624CA48701B4598E21992AF579E57045E6B83E4496E1ABB63F664F9124BDF5EFC7B4F4AD273474D88403EEB365F35ACD98365C1515651A3E62A22E9A70BF1212929B7C3EBF3FBEE1E3EA66F1FBEB360B5DBA74ADDB357A5CBBA37CBE74E91AD52D2FB769577192FC61185334CED78ADD5018728CE373CFE469EE9C897A7BE9530DFF565155AEE4E4F62AF86CE901F73F66E050DD7DEF32CD9EBB41855F7AB57AD5122386010000803032648F63CF9E47CA5F5622A7B387567DF4AA8E3862B04667DDA233CEBC5C975DE4D4AEE21FD4E9D7E3196B6B6B74E915339590902449720DCDD1BA827795E93ABFC9E7B6DBAB5A7D62CCD60AF5849C74E9D28DEE6E510BB7B7467B7BF4CE972E5D23BBFEA45A757296CB11863145E37CADD80D85217B1CCF38EB2A8DCEBA45279E748E366EF8504BDF7C42B5B535DAB9E37B75E8D04D1D3AA6E9E75D3FEA87EF37C8EFFF59574EE8AAA29F36A9AAAA42EB0A96EB9841C38C1806000008337BA65B7E6FCB27018735197E8CE3B0D32FD5E38F5EA3A56F3EAEF8F8445D76C54C1D72489C3EFAE0FF69FD7A9F6E9EF2BCC68E9FAA7BEE3E4B923428E34C9D70E228A3870100CDE2E07E00681DC3178EBD7A1FA3FB1EF0EAE75D3FAA43C734D96C753B35478E9AAC91A3264B92C69C97ABB3CFB95E3535354A4E6E6FF4100000001006613B174EC74E3D0E7A7B52923D5C690000008401971C04000040402CBB70F4783C74E9D2A54B972E5DBA740D64D985A3CFE793D7EBA54B972EDD0334F7A950ABCE972E5D23D9DD99F2AF6CFE79AD365FBA8D5976E10800000063B170040000404058380200002020965D38BA5C2EF97C3EBA74E9D2A54B972E5DBA06B1ECC211000EE66007F703689EC3E556E90A2E3918AB5838028839767766A48700006D120B470000000484852300000002C2C21100000001B1DCC2D1EBF5CAE3F1347CDAC8EBF52A2B2B8B2E5DBA741BEC7F70BFD5E74B97AED15DC7904C95FA1A7FC0CCCAF3A5FB1BDBC245B5B5A6D582342EDBA6C2C232A5A59505F538A7D329B7DBDDF0F7DCDCDC467F6F495151B224D1A54BD7C2DD0267176514EF30ACFBA0A7AE7B7B5E74CE972E5D23BB9BB2B3D42D37570E57E3E7B4EA7CADD6AD7F8E858B825F025A6E8FA324E5E5E54952C3351C83DD9874E9D2A54B972E5DBA740F64D985A3CBE59254B70AA74B972E5DBA74E9D2A51B3A4B2E1CEBB9DD6E5357E174E9D2A54B972E5DBA56EE5AF218C750B5F69803BA74E9B69DEEFEC73886AAB5C738862ADAB7335D6B769B3BC631DCDD7089B5AEC4318E001094A63E150A2030F64CB7FC5E2E3B188B58380200002020115D38565757A9E497ED911C020000000214D185E373CFE4E99159174772080000000850C4168EAB572DD6D6AD8591CA0300002048F1918816FDB4496FBE3E4763C74FD52B0BEE3BE87DFDFEF8864F1D99C5EFAFDB2C74E9D2B56EB7BCDCA65DC549F21B34BEDD513E5FBA748DECEE09D3B8A275BE56EB86C2943D8ECB97CDD7DC3913F5CCBC29AAAC2CD323B32ED615131F565C5C9C1979003840BBC1A7A96AF58A480F036893E24F1EA2BDABDE8FF4301001A6EC71ECECECA95EE903959494A2C2B52BB471C3879AF3C8E5DAE3FF453FFCB0514F3C76ADAE9DFC44938FB5DBAB62E6BC4A74E9D235AF5B64AF0AE87E816A6F8FEEF9D2A56B64B7D459AECAA45AC3C715ADF3B55A3714A62C1C338E1FA18CE3474892CACBFD9A3D77A324E9DB6F3FD39245B374FE05D3CC18060000004260FA318E494976F5E8798424C9EF2F5672727B393BF7327B180000000852444FC773F811A768DA8CA5911C0200000002C495630000001010168E000020280E975BA52BB856752CB2ECC2D1E3F1D0A54B976EB3ECEE4CF9577A4DEF36852E5DBA74DB4AD7B20B479FCF27AFD7DBF21DE9D2A54B972E5DBA74E906C4B20B47000000188B85230000000262D985A3CBE592CFE7A34B972E5DBA74E9D2A56B10CB2E1C01E0601C2E77A48700B4698E21992AF5997F8C1D228B85238098C5E9440020382C1C0100001010168E00000008080B47000000048485230000000262B985A3D7EB6D74191EAFD7ABACAC2CBA74E9D2A54B972E5DBA21B22D5C545B6B5A2D48E3B26D2A2C2C535A5A59508F733A9D72BB7F3BD5466E6E6EA3BFB7A4A8285992E8D2A56BF1EEA6EC2C75CBCD95C3E50EB9FBA0A7AE7B7B5EF4CE972E5D23BB459EFCBAFBE4E59ADA6D0ADDE0BAF5CFB17051F04B40CBED7194A4BCBC3C496AB88663B01B932E5DBA74E9D2A54B97EE812CB9C751AA5B494BD2E2C58B83DEA0ADFD0D802E5DBA6DABBBEF1EC750BBADDDE3186AB72D6C67BAD6EC36B5C7D18C6E73E806FFF8D6EC718C1B9F337D7AD08F32C9821767E8861BA6CAE1A86AD5E36D365BC3AA3C187E7F8224D1A54BD7E2DD5D2FFE5376974B89E9E9217757FAEABA2E77F4CE972E5D23BBFE5F2F77E770BB4CED1E0CDDC0793C1E8DCF991E7CD3AA7B1C4311CA6F0074E9D26D3BDDFDF7388622943D8EA1680BDB99AE35BBCDED710C77371C62AD2B718C23000000C28C85230000000212D68563E9EE9DAAAC2C0F6702005ACD9EE996DFBB32D2C300DA24BB3B53FE95DE480F03268B0FD713EFD8BE59B7DC384853A7BFA1A38E6E7CE0EC2B0BEED39A4FDF94D3D953923476FC54F5E99B11AEA1000000C00061593856555568DE9337AB5BDA614DDEBE756BA1AE99345787F61AA0B8B8B0AD5D01000060A0B0ACDA9E7FF60E9D39E26ABDB1647693B76FD9BC5633A60D57454599868F98A88B26DCAF8484E426EFEBF7C7377CEAC82C7E7FDD66A14B97AEB5BB7B0C1CE3EE36305FBA748DEC561427A9BCDC66E8D8A279BE56EA86C29085E373CFE469F7EE9D3AFCC85395EAE8A492921D3AF1A4739A5D381E3370A8CE1A79AD52533BEB81FBB3B57AD51265BACE376228000000081343168E3D7B1E297F59899CCE1E7A65C17DFAE5976DBAE3B6C1FAFAABD5DA56F4AD6EBEF579F53FFC2449526D6D8D2EBD62A61212922449AEA1395A57F06EB30B47BBBD2A66CEAB44972E5D73BB45F6AA80EFDB92F6F6E89F2F5DBA46764B9DE5AA4CAA35746CD13C5F2B754361C8C2F18CB3AE6AF873DFBE19AAA8D82B497A6CF6551A396AB27AF51EA09F77FDA83D7B4A94DAA1AB264DECAB990F7FA6CE5D7A695DC1720D1976B111C30000004018197E8C63E72EBD1BFE9C9292AAAE5D7B2B29C9AEF7963DA3F5EB7DBA79CAF31A3B7EAAEEB9FB2C49D2A08C3375C289A38C1E060000082387CBAD4D2BC6447A183059583FD27CE7B4250D7F1E396AB2468E9A2C491A735EAECE3EE77AD5D4D42839B97D38870000CDB2BB33B52D3F5F9271974C03002B8BD8B9709292EC914A030000A015B8E4200000000262D985A3C7E3A14B972E5DBA74E9D2A56B20CB2E1C7D3E9FBC5EF3AFA149972E5DBA74E9D2A56BD5AE65178E00000030160B4700000004C4B20B4797CB259FCF47972E5DBACD72B8DC2A5DB1D2F4EEFEE8D26DAB5DC7904C95FA1ABF5D6AE5F9D2B5F0C211000000C662E10800008080B0700400004040583802000020202C1C0100001010168E00000008886DE1A2DADA480FA239E3B26D2A2C2C535A5A59C08FF17ABD077C3CDDE7F369F1E2C5013F475151B224D1A54B3706BA05CE2E2A59FC6AC8DD073D75DDDBF3A27BBE74E91AD9DD949DA56EB9B972B8DC31315FAB7425C9E9746AE1A2E09780F1413F22CAB9DD6E656565292F2FAFE1723CC16E4CBA74E9C64ED7312453FD6C5296C71313F3A54BD748F64CB7FCDE9572B8DC3131DF58EED6B3E45BD5FB6E4CB7BBEE9B992E5DBA74E9D2A54B976E682CF756753DA7D329495ABC7871D01BB435BB8EE9D2A5DB36BBFBBED5164AB7356F55D78B85ED4CD79ADD224F7EDDFDF2724DED36856EF08F6FCD5BD571E373A64F0FFA512659F0E20CDD70C354391C55AD7ABCCD66535E5E5ED08FF3FB1324892E5DBA31D0DDF5E23F6577B994989E1E5277A5AFAEEB7247F77CE9D235B2EBFFF5583B87DB656AB7397403E7F178343E677AF04DABEE710C4528BF01D0A54BB76D75F7DDE3188A50F63886A2AD6C67BAD6EC36B5C7D18CAED162AD2BB57E8FA3258F7104000080F1583802000020202C1C0100001090889CC7F19505F769CDA76FCAE9EC29491A3B7EAAFAF4CD88C45000C4B87DCF43070038B8882C1CB76E2DD43593E6EAD05E03141767B9739003001013ECEE4C6DCBCF9764CC876310FD22B26ADBB279AD664C1BAE8A8A320D1F3151174DB85F0909C94DDED7EF8F6FF8D49159FCFEBACD42972E5DEB77F71834CEDD6D64BE74E91AD9AD284E5279B9CDB0F145FB7CADD20D85290BC7E5CBE66B7DA1572929A9BAECCA593A66E0509D35F25AA5A676D603F7676BF5AA25CA749DDFE4634F3A29C18C2102887573EE33E669E618F23440DB32A0ED2C7C109AA83E8F23000000A2079FAA0600004040583802000020202C1C0100001010168E00000008080BC77DEC2AFE21D243902495EEDEA9CACAF2B03D7F6D6D8DF6ECF9256CCF1F8CD2D262533ABB77EF34A5D392D2D262D5D45487BD535959A6EAEACAB0775A525D5DA5F2727FD83B6565BBC3DE3898CACA7255555584BDB3776FA96A6B6BC2DE09C49E3D25616F98F5FDD392F272BF29E330EBF5A1256565BB555D5D15F68E59AFFF81D8BBB7D494EFE970FF7C3743549F7D7BC285A93AFE843F48927A1E7A942EBCF8DEB0B53E5EBD440FDC375A2FBF5A239BCDD6F0EF9595E5BA724257D3C6B163FB66DD72E3204D9DFE868E3ADA65F8F37FF8C1BFF4E2F3D37458FF1354BA7BA7265CE6517A9F410DB79B35DFEFB7AED723B32E56F7EEFD555EBE4743865D22F7900B0DEF7C51F0AE9E9C3B49FDFA9FA0BD7BFD3A73C4449D3C38ABE176B3E6BB63FB16CD7AF002A5A676555C5CBCFAF53F4163C74F35BCB3776FA9B66CFE42FF989FA73F66DFA2534E3DB7D1ED66CDB7A6A65A5B36AFD5B2779E56DC2171BAFCAA870C6F48D2A66F3ED1A37FBD525DBBF6D1F6ED9B35F9C6A7D5FFF0931A6E0FF77CABABAB34FFE95BF4EDA635AAA9A956BFFE27E8AA6B66CB6633F677F292921D7AE42F17E990B8786DDFB659D9E7DEAED3CFBCBCD17DCCBA22D74F3F7EAD2FD7BEAFC58B66E9E139EB0C7F7E29B0EF1F33E65B5D5DA9398F5CAEEDDB362BAD7B3FD5D4546BF28D4F357BDEE1D60AE4F5C18CF99697FB35D373BE6A6B6A949292AA6E6987E992CB3C8636A4C05EFFCDBCC25C555585A64F3D43A7FEFE3C8D197B47581AD2C17FBEB7A52BEA45F5C2F1F813FEA09B6F7D21EC5797D9BEEDBFF2ADF86793B76D2BFAD6B47154555568DE9337AB5BDA61616BAC5CF1A272EFFC977A1E7A945E7AE16E2D5F365F975DF99786DBCD9AEF9A4FFEADAC31B7C93D3447059FBFA367E6DD1A9685E3C297EED1C4EB1E55C6B1C3F5E5BAFFE8F13957375A389A35DFF7973FAB638F1BA10B2E9AA1CACA32E58C4BD119C3AF54A75F5F248CF2D38FDFE803DFCB2A2EFEBEC9DBCD9A6F454599DE5FFE8CFEBBE933F53FFCC4B0759E7FF64E5D76F983CA387E843E5AF98A5EF8C79F346DC6D286DBC33DDFAFBFFA485F6DFC480FCC5C2549BA69D251DAB07EA58E1E60ECE50BDF7DFB29F53FE2645D74C9FDFA79D74F9A78790F65BACF575292BDE13E665D91EBC3950BB579F317617B7E29B0EF1F33E6BB61FD07DABE6DB3EE7BC02B49BAFB7F871DF4BCC3AD15C8EB8319F3DDF4CD1AF5EC71B8AEB8FAAF2A2BDBAD0917A62AFBBC5CB56FDFD9D04E20AFFF665E61EE9FCF4D95C3E10C6BA3A59FEF6DE98A7A51FD56F59A4FDFD405E725E88EDB066BED17CBC3D2A8AC2CD763B3AFD284667EABFAF1C7AF4D1987243DFFEC1D3A73C4D5EAD4A947D81A53721728B54357BDB2E03E2D59FC904ECD3CAFD1ED66CDF78FD953E41E9AA3B7FEFD989E9977AB860E9B1096CE1D535FD3EF069D2E495AFDD1AB1A947146A3DBCD9AEFE8315374DEF975BFC9AEF974A9D2BAF753C7307C9DFB1E76AC2EBB72960EEB777C93B79B35DF76ED1CBAECCA59CA1C7241589EBFDED6EF0A7568EF0192A46EDDFBE9BFDF7EDEE8F670CF77DB4FDFAA7FFFDF1636BD7A0FD0B69FBE35B421D5CDA3FE9D810E1DD324493FEF2A6A749FFA2B725D7EB153CFCC9BA2CACA32C3C7214963C6DEA131E7E585E5B9EB05F2FD63C67C8F3A3A5353A7BF29A96E6FD1A66F3ED591479E62782790D70733E63BE018B7AEB8FAAFFAF4933734FBA1093AFEC4B30D5F344A81BDFE9BF5FDBCEAA35765B3D91A7E4E844B4B3FDFCD9AAF11A27AE138EE82697AE165BF469E3D597F7BEC3AD51A70AEF292921D9A3B67A2E6CE99A82FD7FD47CFCDBF5D43865D2267E75E4DDEBF5D62B229E3F868E52B2A29D9A1134F3A27E4E73E58A75ED95EBF523B74D5976BFFD3E8FE66CDB75E4555B99293DBABE0B3A5077974EB3BC9C9EDB5BB6487667AC6A9E0F3653A775CE3B721CC9A6F62628A6CB638BDFCE20CCD7E6882AEBBFEC946874418D56989D95F5FA3EDDFD9B3E79786DFCE53523A283E3EB1D1FDC335DF7A7BF694E8907DF60E38DA7736E4EBBABFB23D250DF3B4D96CEAD0A19B0E39A4F1CBF7310387EAEE7B9769F6DC0D2AFCD2ABD5AB96183E8E6862C67CE3E2E2D5AE9D433EEF4BBAE5C641BA2067BABA744D37BC13C8EB83995FDF9A9A6AC5252469D3D79FE8E75D3F85AD73B0D77F33E65BF4D3375AF8D2BD3AFFC2BB0C7FEE7D05F2F3BD2DFDFF8DEA85E3E8EC294A4C4CD169A74FD00F3F6CD4AE66DE7E0B467C7C827AA50F54AFF4814A4848D4EB4B666BE91B7375C76D83254977DE7E4AA383DC8F1E3824ECE3B0DB3B6AD1AB33B5BED0A73B6E1BACCFD6BCA5471FB952DF7CFDB1A19D949454BDF5E6E3B2DB3BEA924BFF4FD75E3757EFBCFD54A3FB9B35DF551FBDAA5DC53F6874D62DBA73DA6BFAFCB3B70DF970D2FE9D1DDBB7E84F7999EAD367901E98F9A1BA74EDD3E8FE66CDB7B2B24C331F18A7CD9BBFD0ECB91B0ED8F36954A72566CD375CF6EFF43DEC3815FFFA7D535A5A7CC09ED670CDB75EAFF463B47DDBE686BF97FCB25D3D7B1D6DD8F33774FAFC4EC53BB64AAAFBA15E5151D66801535B5BA34BAF98A9F43EBF53C74E3DE41A9AA37505EF1A3E8E6861E67CFFF5F29FF5F28BF768C6FDEFE98FD953C2D268E9F5C1ACF97EFDD547FAFAABD53AE9E43FEAD6DB5F525AF77E5ABBF63DC33B2DBDFE9B35DFE5CBE66BE78EADBAFB7F4FD76B8B66E9B5450FE9EDA54FB5FCC020B5F4F3BDADFDFF8DEA37D29FFEDB8DBAFABAC7F4D5C60F95D6BD5FB37B05839192D241A3B36E9124D5D6D66AF6DC8D0DB7DD38E948DD74CB3F141797A0AF367EA8F43E83F4EA2BF92A29D91ED67148D2ADB90B5451B15792F4D8ECAB3472D464F5FAF52D38233B8FCDBE4A3DD2FA29E3F811FAB168938E1E507780AED9F35DF19F17F4ED376B343EE76EEDDCF1BD3A74E8D6F0169C919D8767E6E8EC51D71FF0826FF67CDF79EB6F92A4DBF21686FCDC07EB34C7ECF986CBFE9DC38F38599FAF59AABE871DA715EF3FAFBE871D2B29FCF3AD97DE6790D6AD7D4FA5A5C5F297EED2BAB5EFE9A69EFF30ECF9EB1D76D8717AF3F5393A27EB7FF4E107FF52EFF481B2D90ED1F75BD7CB6EEFA8F884444D9AD857331FFE4C9DBBF4D2BA82E51A32EC62C3C7116966CF77EB775FEAF5D71ED1ECC7372A25A583E1CF5FEFFD77EBBE67F67F7D307BBE2525C5FAF76B8FE8F63B5F9124EDDCB1557DC3F0018D8D1B3E6CF2F5DFECF98E1A7DB34E3BFD5249D2B2B79F527575A54EFDFDB92D3C2A78CDFD7C6FABFF7FA37AE1B86EEDFBBAF5E663151717AF2B263E62F8F3DB6C36F5E87944A37FEBD1F348D96C36DD73D7083D30F3238D3CFB3A4D9F363CACE390A4CE5D7A37FC392525555DBBF66E74E0BB51C68E9FAA271E9FA4AACA0A75E8D84DD75D5FB7A0317BBEC34EBF548F3F7A8D96BEF9B8E2E31375D9153375C821718677BE287857DE152F6AFEBC5B25491D3A74D3D3CF16993EDF0D1B3ED0C7AB5FD3B8ECDFDE7E9A3D77E301DF7F46DAF7AD2EB3E7DBDC388CF6875193F5A7DC4C2D59FCB0ECF68EFA73FE4A49E6CDB77DFBCE1A396AB2264DECABB2B2DDBAEADA396159601C7BDC702D59344B575D9AA68A8A32DD754FDD5B7B2FBD7097061D3742678D98A8B1E3A7EA9EBBCF92240DCA3853279C38CAF07144C2BEDF3F66CFF7AB8DABF4CB2FDB7469CE6F7BD127DF344F679C7985A19DE65E1FCC9EEFC0DF0DD57BCBFEAEC957F793240D1D76B17AF53EC6F04E73AFFF66CF3735B58B5253BB48AAFBD9505D5D1996633A9BFBF9DE56FFFFDA162E32F0809F30F879D74FEAD8A97BA4871135E330426D6D8D7EDEF5D3413FD16BD67C7FDEF5A33A744C33FCF425C18FC33A5FDF405869BED5D555DA55FC833A77E9DDEC2235DCF32D29D9A1F8F844A5A4A486AD21493B777CA78E9DBA2B2E2EA1C9DBCBCBFDAAA9A9517272FBB08E235A30DFF028DDBD5349ED520C3FEDD0FE5A7AFDE7EB1B9DA27EE108000080E810D51F8E01000040F460E10800008080B0700400004040583802000020202C1C0100001010168E00000008080B4700000004E4FF030AC2E57A8C1E9D1B0000000049454E44AE426082>|png>|0.4par|||>
    </wide-centered>

    Now let's solve the equation:

    <\equation*>
      <frac|d*y|<around*|(|r-a*y|)>*y>=d*t<space|1em>\<Rightarrow\><space|1em><big|int><frac|d*y|<around*|(|r-a*y|)>*y>=<big|int>d*t<space|1em>\<Rightarrow\>
    </equation*>

    <\equation*>
      <frac|1|<around*|(|r-a*y|)>*y>=<frac|A|y>+<frac|B|r-a*y>=<frac|A*<around*|(|r-a*y|)>+B*y|y*<around*|(|r-a*y|)>><space|1em>\<Rightarrow\><space|1em>1=A*<around*|(|r-a*y|)>+B*y
    </equation*>

    <\equation*>
      y=0\<Rightarrow\>A=1/r,<space|1em>y=r/a\<Rightarrow\>B=a/r
    </equation*>

    So

    <\equation*>
      <big|int><frac|d*y|<around*|(|r-a*y|)>*y>=<big|int><frac|1|r*y>+<frac|a/r|r-a*y>*d*y=<frac|1|r>*ln
      <around*|\||y|\|>+<frac|a|r><around*|(|<frac|1|-a>|)>*ln
      <around*|\||r-a*y|\|>=<frac|1|r>*ln <around*|\||y|\|>-<frac|1|r>*ln
      <around*|\||r-a*y|\|>
    </equation*>

    <\equation*>
      =<frac|1|r>*ln <frac|<around*|\||y|\|>|<around*|\||r-a*y|\|>>=<big|int>d*t=t+c
    </equation*>

    <\equation*>
      \<Rightarrow\><space|1em><frac|<around*|\||y|\|>|<around*|\||r-a*y|\|>>=e<rsup|r*<around*|(|t+c|)>>=c*e<rsup|r*t><space|1em>\<Rightarrow\><frac|y|r-a*y>=c*e<rsup|r*t>.
    </equation*>

    <\equation*>
      \<Rightarrow\><space|1em>y=<frac|r*c*e<rsup|r*t>|1+a*c*e<rsup|r*t>>=<frac|r*c|e<rsup|-r*t>+a*c>=<frac|r|<frac|1|c>*e<rsup|-r*t>+a>.
    </equation*>

    Suppose the initial condition is <math|y<around*|(|0|)>=y<rsub|0>>, then\ 

    <\equation*>
      c=<frac|y<rsub|0>|r-a*y<rsub|0>><space|1em>\<Rightarrow\><space|1em>y=<frac|r|<frac|r-a*y<rsub|0>|y<rsub|0>>*e<rsup|-r*t>+a>=<frac|r*y<rsub|0>|a*y<rsub|0>+<around*|(|r-a*y<rsub|0>|)>*e<rsup|-r*t>>=<block|<tformat|<table|<row|<cell|<frac|K*y<rsub|0>|y<rsub|0>+<around*|(|K-y<rsub|0>|)>*e<rsup|-r*t>>>>>>>,
    </equation*>

    where <math|K=<frac|r|a>>. Note that <math|y<rprime|'>=<around*|(|r-a*y|)>*y=r*<around*|(|1-<frac|y|K>|)>*y>

    <\enumerate>
      <item>If <math|0\<less\>y<rsub|0>\<less\>K>, then
      <math|y<around*|(|t|)>> is an increasing function, and
      <math|lim<rsub|t\<rightarrow\>\<infty\>> y<around*|(|t|)>=K>, but
      <math|y<around*|(|t|)>\<less\>K> for all <math|t\<gtr\>0>. Moreover,
      <math|lim<rsub|t\<rightarrow\>\<infty\>> y<rprime|'><around*|(|t|)>=0>,
      and

      <\equation*>
        y<rprime|''>=<frac|d|d*t> <frac|d*y|d*t>=<frac|d|d*t>
        f<around*|(|y|)>=f<rprime|'><around*|(|y|)>*<frac|d*y|d*t>=f<rprime|'><around*|(|y|)>*f<around*|(|y|)>,
      </equation*>

      where

      <\equation*>
        f<around*|(|y|)>=r*<around*|(|1-<frac|y|K>|)>*y,<space|1em>f<rprime|'><around*|(|y|)>=r*<around*|(|1-<frac|2*y|K>|)>
      </equation*>

      <\enumerate>
        <item>If <math|0\<less\>y\<less\><frac|K|2>>, then
        <math|y<rprime|''>\<gtr\>0>, so the graph is concave up.

        <item>If <math|<frac|K|2>\<less\>y\<less\>K>, then
        <math|y<rprime|''>\<less\>0>, so the graph is concave down.
      </enumerate>

      <item>If <math|y<rsub|0>\<gtr\>K>, then <math|y<around*|(|t|)>> is an
      decreasing function, and <math|lim<rsub|t\<rightarrow\>\<infty\>>
      y<around*|(|t|)>=K>, but <math|y<around*|(|t|)>\<gtr\>K> for all
      <math|t\<gtr\>0>. Moreover, <math|lim<rsub|t\<rightarrow\>\<infty\>>
      y<rprime|'><around*|(|t|)>=0>, and <math|y<rprime|''><around*|(|t|)>\<gtr\>0>
      for all <math|t>.
    </enumerate>

    <section|Euler's method>

    Consider a general 1st order ODE

    <\equation*>
      y<rprime|'>=f<around*|(|t,y|)>.
    </equation*>

    Take <math|<around*|(|t<rsub|0>,y<rsub|0>|)>>, then

    <\equation*>
      y<rprime|'><around*|(|t<rsub|0>|)>=f<around*|(|t<rsub|0>,y<rsub|0>|)>
    </equation*>

    <\equation*>
      y<rprime|'><around*|(|t<rsub|0>|)>=lim<rsub|h\<rightarrow\>0>
      <frac|y<around*|(|t<rsub|0>+h|)>-y<around*|(|t<rsub|0>|)>|h>\<approx\><frac|y<around*|(|t<rsub|1>|)>-y<around*|(|t<rsub|0>|)>|t<rsub|1>-t<rsub|0>>
    </equation*>

    if <math|<around*|\||t<rsub|1>-t<rsub|0>|\|>> is small. So

    <\equation*>
      y<around*|(|t<rsub|1>|)>\<approx\>y<around*|(|t<rsub|0>|)>+<around*|(|t<rsub|1>-t<rsub|0>|)>*y<rprime|'><around*|(|t<rsub|0>|)>=y<around*|(|t<rsub|0>|)>+<around*|(|t<rsub|1>-t<rsub|0>|)>*f<around*|(|t<rsub|0>,y<rsub|0>|)>
    </equation*>

    Let

    <\equation*>
      y<rsub|1>=y<rsub|0>+<around*|(|t<rsub|1>-t<rsub|0>|)>*f<around*|(|t<rsub|0>,y<rsub|0>|)>
    </equation*>

    So <math|y<rsub|1>\<approx\>y<around*|(|t<rsub|1>|)>>. Repeat this
    process, we obtain an algorithm: For a sequence of
    <math|t<rsub|0>,t<rsub|1>,t<rsub|2>,\<ldots\>>

    <\equation*>
      <block|<tformat|<table|<row|<cell|y<rsub|k+1>=y<rsub|k>+<around*|(|t<rsub|k+1>-t<rsub|k>|)>*f<around*|(|t<rsub|k>,y<rsub|k>|)>>>>>>
    </equation*>

    This sequence of <math|y<rsub|0>,y<rsub|1>,y<rsub|2>,\<ldots\>> is an
    approximation of the true values <math|y<around*|(|t<rsub|0>|)>,y<around*|(|t<rsub|1>|)>,y<around*|(|t<rsub|2>|)>,\<ldots\>>

    \;

    \;

    \;
  </shown>>
</body>

<\initial>
  <\collection>
    <associate|eqn-ver-sep|<macro|0.0fn>>
    <associate|font-base-size|10>
    <associate|info-flag|minimal>
    <associate|magnification|1.7>
    <associate|page-medium|papyrus>
    <associate|par-first|1tab>
    <associate|par-hyphen|professional>
    <associate|par-kerning-margin|true>
    <associate|preamble|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?>>
    <associate|auto-10|<tuple|5.1|?>>
    <associate|auto-11|<tuple|5.2|?>>
    <associate|auto-12|<tuple|6|?>>
    <associate|auto-13|<tuple|6.1|?>>
    <associate|auto-14|<tuple|6.2|?>>
    <associate|auto-15|<tuple|6.3|?>>
    <associate|auto-16|<tuple|6.3.1|?>>
    <associate|auto-17|<tuple|6.3.2|?>>
    <associate|auto-18|<tuple|7|?>>
    <associate|auto-2|<tuple|1|?>>
    <associate|auto-3|<tuple|2|?>>
    <associate|auto-4|<tuple|3|?>>
    <associate|auto-5|<tuple|3.1|?>>
    <associate|auto-6|<tuple|3.2|?>>
    <associate|auto-7|<tuple|3.3|?>>
    <associate|auto-8|<tuple|4|?>>
    <associate|auto-9|<tuple|5|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|Chapter
      2: First Order Differential Equations>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Method
      of integrating factors> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Separable
      equations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Exact
      Equations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Motivation and definition
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Theorem and method
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Integrating factors
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Direction
      fields> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>The
      Existence and Uniqueness Theorem> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc>Linear equations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|5.2<space|2spc>Nonlinear equations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Applications>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <with|par-left|<quote|1tab>|6.1<space|2spc>Falling object in the air
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|6.2<space|2spc>Compound interest with
      deposits/withdrawals <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|6.3<space|2spc>Population dynamics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|2tab>|6.3.1<space|2spc>Exponential growth
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|2tab>|6.3.2<space|2spc>Logistic growth
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Euler's
      method> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>