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
    <item>学生想做什么（社区讨论）

    <\itemize>
      <item>排版引擎支持图文混排

      <\itemize>
        <item>Scala重新实现

        <item>表格很多问题

        <item><LaTeX>里面有这个功能
      </itemize>

      <item>Scala重新实现排版引擎

      <tree|TM|<tree|Tree|<tree|Box|PDF>|HTML>>

      <\itemize>
        <item>不涉及Scheme引擎的部分（Kawa/Clojure)

        <item>TM -\<gtr\> Tree
      </itemize>

      <\itemize>
        <item>TM -\<gtr\> Tree -\<gtr\> Box -\<gtr\> PDF（Hard）

        <item>TM -\<gtr\> PS

        <item>(TM -\<gtr\> Render)

        <item>TM -\<gtr\> Tree -\<gtr\> HTML（Easy）

        <item>TM -\<gtr\> DOCX

        <item>TM -\<gtr\> EPUB

        <item>TM -\<gtr\> PPT
      </itemize>
    </itemize>

    <item>社区需要什么

    <\itemize>
      <item><hlink|改善墨干的绘图工具|<hlink|Issues \<centerdot\>
      墨客实验室/墨干编辑器 - Gitee.com|https://gitee.com/XmacsLabs/mogan/issues?label_ids=179083549&label_text=%E7%BB%98%E5%9B%BE>>

      <item>教育相关模版（有一些模版目前无法直接制作，需要代码提供支持）

      <\itemize>
        <item>本硕博论文模版

        <item>幻灯片模版

        <item>适用于线上授课的模版
      </itemize>

      <item>更好用快捷键编辑器（不需要Scheme）
    </itemize>
  </itemize>

  <subsection|XmacsLabs member>

  门槛

  <\itemize>
    <item>Who creates pull requests

    <item>Law/Language
  </itemize>

  权利

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
    <item>(Join the video meeting) 自己申请

    <item>Vote to add new member
  </itemize>

  <\itemize>
    <item>实验室成员可以是匿名的

    <item>不用每次都参加视频会议
  </itemize>

  <\question>
    How to vote?
  </question>

  10个正式成员（每个成员都会提交pull request）

  异步协作

  \;

  <\itemize>
    <item>依据事项不同，投票的机制不同

    <unfolded-comment|+1ZmOHbA21AVvmY03|+1ZmOHbA21AVvmY04|comment|jk|1680440233||新成员加入适当放宽>

    <item>是否和开源社区理事会有点像？

    探索阶段

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