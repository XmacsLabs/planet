<TeXmacs|2.1.2>

<style|<tuple|seminar|comment>>

<\body>
  <doc-data|<doc-title|Seminar X202302>|<doc-author|<author-data|<author-name|Yufeng>>>>

  <section|Welcome>

  <section|Topic: Making Template>

  <subsection|Example: Calendar template>

  \;

  \;

  <\wide-tabular>
    <tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|4|4|1|1|cell-background|pastel
    red>|<cwith|2|2|7|7|cell-tborder|0ln>|<cwith|7|7|7|7|cell-bborder|0ln>|<cwith|1|-1|7|7|cell-lborder|0ln>|<cwith|1|-1|6|6|cell-rborder|0ln>|<cwith|1|-1|7|7|cell-rborder|1ln>|<cwith|1|-1|8|8|cell-lborder|1ln>|<cwith|6|6|1|1|cell-background|pastel
    green>|<cwith|1|1|1|1|cell-row-span|1>|<cwith|1|1|1|1|cell-col-span|7>|<cwith|1|1|8|8|cell-row-span|1>|<cwith|1|1|8|8|cell-col-span|7>|<cwith|4|4|8|8|cell-background|pastel
    green>|<cwith|6|6|8|8|cell-background|pastel
    green>|<cwith|7|7|3|3|cell-background|#ffa>|<cwith|6|6|6|6|cell-background|#ffa>|<table|<row|<\cell>
      2023\<#5E74\>\<#4E8C\>\<#6708\>
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      2023\<#5E74\>\<#4E09\>\<#6708\>
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>>|<row|<\cell>
      \<#5468\>\<#65E5\>
    </cell>|<\cell>
      \<#5468\>\<#4E00\>
    </cell>|<\cell>
      \<#5468\>\<#4E8C\>
    </cell>|<\cell>
      \<#5468\>\<#4E09\>
    </cell>|<\cell>
      \<#5468\>\<#56DB\>
    </cell>|<\cell>
      \<#5468\>\<#4E94\>
    </cell>|<\cell>
      \<#5468\>\<#516D\>
    </cell>|<\cell>
      \<#5468\>\<#65E5\>
    </cell>|<\cell>
      \<#5468\>\<#4E00\>
    </cell>|<\cell>
      \<#5468\>\<#4E8C\>
    </cell>|<\cell>
      \<#5468\>\<#4E09\>
    </cell>|<\cell>
      \<#5468\>\<#56DB\>
    </cell>|<\cell>
      \<#5468\>\<#4E94\>
    </cell>|<\cell>
      \<#5468\>\<#516D\>
    </cell>>|<row|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      1
    </cell>|<\cell>
      2
    </cell>|<\cell>
      3
    </cell>|<\cell>
      4
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      1
    </cell>|<\cell>
      2
    </cell>|<\cell>
      3
    </cell>|<\cell>
      4
    </cell>>|<row|<\cell>
      5<label|\<#7B2C\>\<#4E00\>\<#6B21\>\<#7814\>\<#8BA8\>\<#4F1A\>>
    </cell>|<\cell>
      6
    </cell>|<\cell>
      7
    </cell>|<\cell>
      8
    </cell>|<\cell>
      9
    </cell>|<\cell>
      10
    </cell>|<\cell>
      11
    </cell>|<\cell>
      5<label|\<#7B2C\>\<#4E09\>\<#6B21\>\<#7814\>\<#8BA8\>\<#4F1A\>>
    </cell>|<\cell>
      6
    </cell>|<\cell>
      7
    </cell>|<\cell>
      8
    </cell>|<\cell>
      9
    </cell>|<\cell>
      10
    </cell>|<\cell>
      11
    </cell>>|<row|<\cell>
      12
    </cell>|<\cell>
      13
    </cell>|<\cell>
      14
    </cell>|<\cell>
      15
    </cell>|<\cell>
      16
    </cell>|<\cell>
      17
    </cell>|<\cell>
      18
    </cell>|<\cell>
      12
    </cell>|<\cell>
      13
    </cell>|<\cell>
      14
    </cell>|<\cell>
      15
    </cell>|<\cell>
      16
    </cell>|<\cell>
      17
    </cell>|<\cell>
      18
    </cell>>|<row|<\cell>
      19<label|\<#7B2C\>\<#4E8C\>\<#6B21\>\<#7814\>\<#8BA8\>\<#4F1A\>>
    </cell>|<\cell>
      20
    </cell>|<\cell>
      21<mouse-over-balloon|||left|Bottom>
    </cell>|<\cell>
      22<label|\<#6807\>\<#7B7E\>\<#6D4B\>\<#8BD5\>>
    </cell>|<\cell>
      23
    </cell>|<\cell>
      <mouse-over-balloon|24|\<#6C14\>\<#6CE1\>\<#6D4B\>\<#8BD5\>|left|Bottom>
    </cell>|<\cell>
      25
    </cell>|<\cell>
      19<label|\<#7B2C\>\<#56DB\>\<#6B21\>\<#7814\>\<#8BA8\>\<#4F1A\>>
    </cell>|<\cell>
      20
    </cell>|<\cell>
      21
    </cell>|<\cell>
      22
    </cell>|<\cell>
      23
    </cell>|<\cell>
      24
    </cell>|<\cell>
      25
    </cell>>|<row|<\cell>
      26
    </cell>|<\cell>
      27
    </cell>|<\cell>
      <mouse-over-balloon|28|\<#4E8C\>\<#6708\>\<#7684\>\<#6700\>\<#540E\>\<#4E00\>\<#5929\>|left|Bottom>
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      26
    </cell>|<\cell>
      27
    </cell>|<\cell>
      28
    </cell>|<\cell>
      29
    </cell>|<\cell>
      30
    </cell>|<\cell>
      31
    </cell>|<\cell>
      \;
    </cell>>>>
  </wide-tabular>

  \;

  <subsection|Template copyright>\ 

  Current style files (.ts files) are under GPL license. If the templates
  (.tm files)/new style files (.ts files) are built on top of current style
  files, they should also under GPL license?\ 

  Document preamble (in .tm file) can define some macro, does it need to be
  GPL as well?

  <subsection|What templates are wanted?>

  <\itemize-dot>
    <item>si-unit, style file for standard science units. Can copy paste keep
    the original style (from customized style/macro in .ts file/ preamble).

    <item>texmacs to html. Rich text editors have many customized tags in
    html, it can be useful for content creators (e.g. zhihu, blogs, github
    page).\ 

    <item>Law and other professional area documents.

    <item>Interactive session/ teaching slides and notes/ UML graph

    <item>College thesis templates are nonprofit.\ 
  </itemize-dot>

  <section|China Arxiv Alternative>

  Use TeXmacs as a format for general science communication format,
  especially for Chinese native speaker.

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
    <associate|\<#6807\>\<#7B7E\>\<#6D4B\>\<#8BD5\>|<tuple|2.1|2|..\\..\\AppData\\Roaming\\Xmacs\\texts\\scratch\\no_name_11.tm>>
    <associate|\<#7B2C\>\<#4E00\>\<#6B21\>\<#7814\>\<#8BA8\>\<#4F1A\>|<tuple|2.1|2|..\\..\\AppData\\Roaming\\Xmacs\\texts\\scratch\\no_name_11.tm>>
    <associate|\<#7B2C\>\<#4E09\>\<#6B21\>\<#7814\>\<#8BA8\>\<#4F1A\>|<tuple|2.1|2|..\\..\\AppData\\Roaming\\Xmacs\\texts\\scratch\\no_name_11.tm>>
    <associate|\<#7B2C\>\<#4E8C\>\<#6B21\>\<#7814\>\<#8BA8\>\<#4F1A\>|<tuple|2.1|2|..\\..\\AppData\\Roaming\\Xmacs\\texts\\scratch\\no_name_11.tm>>
    <associate|\<#7B2C\>\<#56DB\>\<#6B21\>\<#7814\>\<#8BA8\>\<#4F1A\>|<tuple|2.1|2|..\\..\\AppData\\Roaming\\Xmacs\\texts\\scratch\\no_name_11.tm>>
    <associate|auto-1|<tuple|1|2|..\\..\\AppData\\Roaming\\Xmacs\\texts\\scratch\\no_name_11.tm>>
    <associate|auto-2|<tuple|2|2|..\\..\\AppData\\Roaming\\Xmacs\\texts\\scratch\\no_name_11.tm>>
    <associate|auto-3|<tuple|2.1|2|..\\..\\AppData\\Roaming\\Xmacs\\texts\\scratch\\no_name_11.tm>>
    <associate|auto-4|<tuple|2.2|2|..\\..\\AppData\\Roaming\\Xmacs\\texts\\scratch\\no_name_11.tm>>
    <associate|auto-5|<tuple|2.3|2|..\\..\\AppData\\Roaming\\Xmacs\\texts\\scratch\\no_name_11.tm>>
    <associate|auto-6|<tuple|3|3|..\\..\\AppData\\Roaming\\Xmacs\\texts\\scratch\\no_name_11.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Welcome>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Topic:
      Making Template> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Example: Calendar template
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Template copyright
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>What templates are wanted?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>China
      Arxiv Alternative> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>