<TeXmacs|2.1.2>

<style|<tuple|beamer|no-page-numbers|chinese>>

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
  </shown>>
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
    <associate|auto-1|<tuple|?|?|slide01.tm>>
    <associate|auto-10|<tuple|2|?|slide01.tm>>
    <associate|auto-11|<tuple|1|?|slide01.tm>>
    <associate|auto-12|<tuple|applicative order evaluation|?|slide01.tm>>
    <associate|auto-13|<tuple|2|?|slide01.tm>>
    <associate|auto-14|<tuple|normal order evaluation|?|slide01.tm>>
    <associate|auto-15|<tuple|2|?|slide01.tm>>
    <associate|auto-2|<tuple|normal order evaluation|?|slide01.tm>>
    <associate|auto-3|<tuple|2|?|slide01.tm>>
    <associate|auto-4|<tuple|2|?|slide01.tm>>
    <associate|auto-5|<tuple|normal order evaluation|?|slide01.tm>>
    <associate|auto-6|<tuple|2|?|slide01.tm>>
    <associate|auto-7|<tuple|2|?|slide01.tm>>
    <associate|auto-8|<tuple|2|?|slide01.tm>>
    <associate|auto-9|<tuple|normal order evaluation|?|slide01.tm>>
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

      <tuple|normal|applicative order evaluation|\<#5E94\>\<#7528\>\<#5E8F\>\<#6C42\>\<#503C\>|<pageref|auto-12>>

      <tuple|normal|normal order evaluation|\<#6B63\>\<#5219\>\<#5E8F\>\<#6C42\>\<#503C\>|<pageref|auto-14>>
    </associate>
    <\associate|toc>
      <with|par-left|<quote|3tab>|\<#5E94\>\<#7528\>\<#5E8F\>\<#6C42\>\<#503C\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|3tab>|\<#6B63\>\<#5219\>\<#5E8F\>\<#6C42\>\<#503C\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|\<#672F\>\<#8BED\>\<#8868\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>