<TeXmacs|2.1.1>

<style|beamer>

<\body>
  <screens|<\shown>
    <doc-data|<doc-title|Ordinary Differential
    Equations>|<doc-author|<author-data|<author-name|Yuliang Wang>>>>

    <subsection|Motivation>

    Suppose we deposite <math|u<rsub|0>> in a bank account, and the annual
    interest rate is <math|r>. After <math|t> years,

    <\enumerate>
      <item>If the interest is compounded annualy, then the balance is

      <\equation*>
        u<around*|(|t|)>=u<rsub|0>*<around*|(|1+r|)><rsup|t>.
      </equation*>

      <item>If the interest is compounded monthly, then the balance is

      <\equation*>
        u<around*|(|t|)>=u<rsub|0>*<around*|(|1+<frac|r|12>|)><rsup|12*t>
      </equation*>

      <item>In general, if the interest is compounded <math|m> times a year,
      then the balance is

      <\equation*>
        u<around*|(|t|)>=u<rsub|0>*<around*|(|1+<frac|r|m>|)><rsup|m*t>.
      </equation*>

      <item>Taking the limit as <math|m\<rightarrow\>\<infty\>>, then for any
      fixed <math|t>, we have

      <\equation*>
        u<around*|(|t|)>=lim<rsub|m\<rightarrow\>\<infty\>><around*|(|1+<frac|r|m>|)><rsup|m*t>=lim<rsub|m\<rightarrow\>\<infty\>><with|color|red|<around*|(|1+<frac|r|m>|)>><rsup|<with|color|red|<frac|m|r>>*r*t>=e<rsup|r*t>.
      </equation*>
    </enumerate>

    But we can obtain the same result by using a differential equation:

    <\equation>
      <with|color|blue|u<rprime|'><around*|(|t|)>=u<around*|(|t|)>*r>.
    </equation>

    We can solve it later and obtain the same result.

    <\definition>
      A <strong|ordinary differential equation> (ODE) about a function
      <math|u<around*|(|t|)>> is an equation involving
      <math|u<around*|(|t|)>> and its derivatives.
    </definition>

    <subsection|Classification of ODE>

    Any ODE can be written in the abstract form

    <\equation>
      F<around*|(|u,u<rprime|'>,u<rprime|''>,\<ldots\>,u<rsup|<around*|(|n|)>>|)>=0.
    </equation>

    For example, Eq. (1) can be written as

    <\equation*>
      F<around*|(|u,u<rprime|'>|)>=r*u-u<rprime|'>=0.
    </equation*>

    In Eq. (2), <math|n> is the <strong|order> of the equation, i.e. the
    order is the highest order derivative of <math|u> in the equation.\ 

    So Eq. (1) is an ODE of order 1.\ 

    If <math|F> is linear in terms of <math|u,u<rprime|'>,\<ldots\>,u<rsup|<around*|(|n|)>>>,
    then the equation is called <strong|linear>. Otherwise it's called
    <strong|nonlinear>. The general form of a linear ODE is

    <\equation*>
      a<rsub|n><around*|(|t|)>*u<rsup|<around*|(|n|)>>+a<rsub|n-1><around*|(|t|)>*u<rsup|<around*|(|n-1|)>>+\<cdots\>+a<rsub|1><around*|(|t|)>*u+a<rsub|0><around*|(|t|)>=0.
    </equation*>

    So Eq. (1) is linear. Examples of nonlinear equations:

    <\equation*>
      u<rprime|'>-u<rsup|2>=5,<space|1em>u*u<rprime|'>+5x=e<rsup|x>,<space|1em>u<rprime|'>=sin
      u
    </equation*>

    <subsection|Solutions of an ODE>

    A solution of an ODE

    <\equation*>
      F<around*|(|u,u<rprime|'>,u<rprime|''>,\<ldots\>,u<rsup|<around*|(|n|)>>|)>=0
    </equation*>

    is a function <math|u=\<phi\><around*|(|t|)>> satisfying the equation,
    i.e.

    <\equation*>
      F<around*|(|\<phi\>,\<phi\><rprime|'>,\<phi\><rprime|''>,\<ldots\>,\<phi\><rsup|<around*|(|n|)>>|)><around*|(|t|)>=0.
    </equation*>

    <\example>
      Can you give solutions of

      <\equation*>
        u<rprime|'>=2*u
      </equation*>

      possible solution: <math|u=e<rsup|2*t>>, in fact,
      <math|u=c*e<rsup|2*t>> is a solution for any constant <math|c>.
    </example>

    <\example>
      Can you give solutions of

      <\equation*>
        u<rprime|''>+4*u=0
      </equation*>

      A possible solution is <math|u=sin 2*t>, another solution is
      <math|u<around*|(|t|)>=cos*2t.> In fact, any function

      <\equation*>
        u=a*sin 2*t+b*cos 2*t
      </equation*>
    </example>

    \;

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
    <associate|magnification|2>
    <associate|page-medium|papyrus>
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
      <with|par-left|<quote|1tab>|1<space|2spc>Motivation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|1tab>|2<space|2spc>Classification of ODE
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|3<space|2spc>Solutions of an ODE
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>