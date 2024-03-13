<TeXmacs|2.1.2>

<style|<tuple|beamer|no-page-numbers|chinese|python>>

<\body>
  <\hide-preamble>
    <assign|dfn|<macro|x|<strong|<arg|x>>>>
  </hide-preamble>

  <screens|<\shown>
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
  </shown>|<\hidden>
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
  </hidden>|<\hidden>
    <tit|\<#589E\>\<#957F\>\<#7684\>\<#9636\>\V<math|\<Theta\>>\<#8BB0\>\<#6CD5\>>

    <\definition>
      \<#4EE4\>n\<#662F\>\<#4E00\>\<#4E2A\>\<#53C2\>\<#6570\>\<#FF0C\>\<#4F5C\>\<#4E3A\>\<#95EE\>\<#9898\>\<#89C4\>\<#6A21\>\<#7684\>\<#4E00\>\<#79CD\>\<#5EA6\>\<#91CF\>\<#FF0C\>\<#4EE4\><math|R<around*|(|n|)>>\<#662F\>
    </definition>
  </hidden>|<\hidden>
    <tit|\<#6C42\>\<#5E42\>\<#7684\>\<#65F6\>\<#7A7A\>\<#590D\>\<#6742\>\<#5EA6\>>

    \;
  </hidden>|<\hidden>
    <tit|\<#6700\>\<#5927\>\<#516C\>\<#7EA6\>\<#6570\>>

    \;
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