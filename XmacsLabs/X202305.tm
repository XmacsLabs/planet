<TeXmacs|2.1.2>

<style|<tuple|seminar|comment>>

<\body>
  <\hide-preamble>
    \;

    <assign|x_0|<macro|<math|x<rsub|0>>>>

    <assign|x_1|<macro|<math|x<rsub|1>>>>
  </hide-preamble>

  <doc-data|<doc-title|Seminar X202305>|<doc-author|<author-data|<author-name|Darcy
  Shen>>>>

  <section|Welcome>

  v1.1.2 Thanks to Issues Writers.

  <section|Topic: Summer of Code>

  <subsection|Todo List of Summer of Code>

  <\itemize>
    <item><todo|Re-create Logo in SVG format> by BadVortex

    <item><todo|admin@xmacs.net> by Da

    <item>Sync about Summer of Code with the TeXmacs developer/forum by Da

    <item><todo|Community Video> by the Community
  </itemize>

  <subsection|Projects of SoC>

  <\itemize>
    <item>\<#5B66\>\<#751F\>\<#60F3\>\<#505A\>\<#4EC0\>\<#4E48\>\<#FF08\>\<#793E\>\<#533A\>\<#8BA8\>\<#8BBA\>\<#FF09\>

    <\itemize>
      <item>\<#6392\>\<#7248\>\<#5F15\>\<#64CE\>\<#652F\>\<#6301\>\<#56FE\>\<#6587\>\<#6DF7\>\<#6392\>

      <\itemize>
        <item>Scala\<#91CD\>\<#65B0\>\<#5B9E\>\<#73B0\>

        <item>\<#8868\>\<#683C\>\<#5F88\>\<#591A\>\<#95EE\>\<#9898\>

        <item><LaTeX>\<#91CC\>\<#9762\>\<#6709\>\<#8FD9\>\<#4E2A\>\<#529F\>\<#80FD\>
      </itemize>

      <item>Scala\<#91CD\>\<#65B0\>\<#5B9E\>\<#73B0\>\<#6392\>\<#7248\>\<#5F15\>\<#64CE\>

      <\padded-center>
        <tree|TM|<tree|Tree|<tree|Box|PDF>|HTML>>
      </padded-center>

      <\itemize>
        <item>\<#4E0D\>\<#6D89\>\<#53CA\>Scheme\<#5F15\>\<#64CE\>\<#7684\>\<#90E8\>\<#5206\>\<#FF08\>Kawa/Clojure)

        <item>TM <math|\<rightarrow\>> Tree
      </itemize>

      <\itemize>
        <item>TM <math|\<rightarrow\>> Tree <math|\<rightarrow\>> Box
        <math|\<rightarrow\>> PDF\<#FF08\>Hard\<#FF09\>

        <item>TM <math|\<rightarrow\>> PS

        <item>(TM <math|\<rightarrow\>> Render)

        <item>TM <math|\<rightarrow\>> Tree <math|\<rightarrow\>>
        HTML\<#FF08\>Easy\<#FF09\>

        <item>TM <math|\<rightarrow\>> DOCX

        <item>TM <math|\<rightarrow\>> EPUB

        <item>TM <math|\<rightarrow\>> PPT
      </itemize>
    </itemize>

    <item>\<#793E\>\<#533A\>\<#9700\>\<#8981\>\<#4EC0\>\<#4E48\>

    <\itemize>
      <item><hlink|\<#6539\>\<#5584\>\<#58A8\>\<#5E72\>\<#7684\>\<#7ED8\>\<#56FE\>\<#5DE5\>\<#5177\>|<hlink|Issues
      \<centerdot\> \<#58A8\>\<#5BA2\>\<#5B9E\>\<#9A8C\>\<#5BA4\>/\<#58A8\>\<#5E72\>\<#7F16\>\<#8F91\>\<#5668\>
      - Gitee.com|https://gitee.com/XmacsLabs/mogan/issues?label_ids=179083549&label_text=%E7%BB%98%E5%9B%BE>>

      <\itemize>
        <item><unfolded-comment|+1CqepKxV1PAekZFg|+1CqepKxV1PAekZFh|comment|Yiqi
        Xu|1680451467||\<#6539\>\<#8FDB\>\<#4EA4\>\<#6362\>\<#56FE\>\<#7ED8\>\<#5236\>\<#529F\>\<#80FD\>,
        \<#6216\>\<#8005\>\<#66F4\>\<#597D\>\<#7684\><name|quiver>\<#63D2\>\<#4EF6\>>

        <item><unfolded-comment|+1CqepKxV1PAekZFk|+1CqepKxV1PAekZFl|comment|Yiqi
        Xu|1680451587||\<#4F18\>\<#5316\>\<#57FA\>\<#7840\>\<#7684\>\<#56FE\>\<#5F62\>\<#7684\>\<#8F93\>\<#5165\>,
        \<#5982\>\<#692D\>\<#5706\>\<#7B49\>>
      </itemize>

      <item>\<#6559\>\<#80B2\>\<#76F8\>\<#5173\>\<#6A21\>\<#7248\>\<#FF08\>\<#6709\>\<#4E00\>\<#4E9B\>\<#6A21\>\<#7248\>\<#76EE\>\<#524D\>\<#65E0\>\<#6CD5\>\<#76F4\>\<#63A5\>\<#5236\>\<#4F5C\>\<#FF0C\>\<#9700\>\<#8981\>\<#4EE3\>\<#7801\>\<#63D0\>\<#4F9B\>\<#652F\>\<#6301\>\<#FF09\>

      <\itemize>
        <item>\<#672C\>\<#7855\>\<#535A\>\<#8BBA\>\<#6587\>\<#6A21\>\<#7248\>

        <item>\<#5E7B\>\<#706F\>\<#7247\>\<#6A21\>\<#7248\>

        <item>\<#9002\>\<#7528\>\<#4E8E\>\<#7EBF\>\<#4E0A\>\<#6388\>\<#8BFE\>\<#7684\>\<#6A21\>\<#7248\>
      </itemize>

      <item>\<#66F4\>\<#597D\>\<#7528\>\<#5FEB\>\<#6377\>\<#952E\>\<#7F16\>\<#8F91\>\<#5668\>\<#FF08\>\<#4E0D\>\<#9700\>\<#8981\>Scheme\<#FF09\>

      <item><unfolded-comment|+1CqepKxV1PAekZFm|+1CqepKxV1PAekZFn|comment|Yiqi
      Xu|1680451728||\<#4F18\>\<#5316\>\<#5B57\>\<#4F53\>\<#76F8\>\<#5173\>\<#529F\>\<#80FD\>>

      <\itemize>
        <item><unfolded-comment|+1CqepKxV1PAekZFo|+1CqepKxV1PAekZFp|comment|Yiqi
        Xu|1680451782||\<#63D0\>\<#4F9B\>\<#5B8C\>\<#6574\>\<#7684\><name|OpenType>\<#5B57\>\<#4F53\>\<#652F\>\<#6301\>
        >

        <item><unfolded-comment|+1CqepKxV1PAekZFq|+1CqepKxV1PAekZFr|comment|Yiqi
        Xu|1680451923||\<#4F18\>\<#5316\><name|Unicode>\<#652F\>\<#6301\>>
      </itemize>
    </itemize>
  </itemize>

  <subsection|XmacsLabs member>

  \<#95E8\>\<#69DB\>

  <\itemize>
    <item>Who creates pull requests

    <item>Law/Language
  </itemize>

  \<#6743\>\<#5229\>

  <\itemize>
    <item>Vote
  </itemize>

  <\question>
    Who can vote?
  </question>

  Members of XmacsLabs can vote.

  <\question>
    How to join the lab?
  </question>

  <\itemize>
    <item>(Join the video meeting) \<#81EA\>\<#5DF1\>\<#7533\>\<#8BF7\>

    <item>Vote to add new member
  </itemize>

  <\itemize>
    <item>\<#5B9E\>\<#9A8C\>\<#5BA4\>\<#6210\>\<#5458\>\<#53EF\>\<#4EE5\>\<#662F\>\<#533F\>\<#540D\>\<#7684\>

    <item>\<#4E0D\>\<#7528\>\<#6BCF\>\<#6B21\>\<#90FD\>\<#53C2\>\<#52A0\>\<#89C6\>\<#9891\>\<#4F1A\>\<#8BAE\>
  </itemize>

  <\question>
    How to vote?
  </question>

  10\<#4E2A\>\<#6B63\>\<#5F0F\>\<#6210\>\<#5458\>\<#FF08\>\<#6BCF\>\<#4E2A\>\<#6210\>\<#5458\>\<#90FD\>\<#4F1A\>\<#63D0\>\<#4EA4\>pull
  request\<#FF09\>

  \<#5F02\>\<#6B65\>\<#534F\>\<#4F5C\>

  \;

  <\itemize>
    <item>\<#4F9D\>\<#636E\>\<#4E8B\>\<#9879\>\<#4E0D\>\<#540C\>\<#FF0C\>\<#6295\>\<#7968\>\<#7684\>\<#673A\>\<#5236\>\<#4E0D\>\<#540C\>

    <unfolded-comment|+1ZmOHbA21AVvmY03|+1ZmOHbA21AVvmY04|comment|jk|1680440233||\<#65B0\>\<#6210\>\<#5458\>\<#52A0\>\<#5165\>\<#9002\>\<#5F53\>\<#653E\>\<#5BBD\>>

    <item>\<#662F\>\<#5426\>\<#548C\>\<#5F00\>\<#6E90\>\<#793E\>\<#533A\>\<#7406\>\<#4E8B\>\<#4F1A\>\<#6709\>\<#70B9\>\<#50CF\>\<#FF1F\>

    \<#63A2\>\<#7D22\>\<#9636\>\<#6BB5\>

    <item>XmacsLabs

    <\itemize>
      <item>Developer (Mogan)

      <\itemize>
        <item>PMC Member

        <item>Developer
      </itemize>

      <item>non-Developer

      <\itemize>
        <item>Planet (discuss)

        <item>Wiki (goal)
      </itemize>
    </itemize>

    <item>Debian Community

    <\itemize>
      <item>Debian Maintainer

      <item>Debian Developer

      <item>Debian Leader
    </itemize>
  </itemize>

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|info-flag|detailed>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|2.1|2>>
    <associate|auto-4|<tuple|2.2|2>>
    <associate|auto-5|<tuple|2.3|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Welcome>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Topic:
      Summer of Code> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Todo List of Summer of Code
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Projects of SoC
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>XmacsLabs member
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>