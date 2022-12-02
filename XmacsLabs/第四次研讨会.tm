<TeXmacs|2.1.3>

<style|<tuple|seminar|chinese|doc|number-europe>>

<\body>
  <doc-data|<doc-title|第四次研讨会>>

  本次研讨会记录人：沈浪熊猫儿

  <section*|(15m) 用户反馈和新成员介绍>

  本次研讨会有两位新用户。

  <\itemize>
    <item>打开一个指向文档的链接，如果该文档不存在，没有直接提示，直接返回了空白文档。

    <item>转到-\<gtr\>后退 这个功能有问题
  </itemize>

  \;

  翻译的时候为了保证所采用的翻译一致，可以使用<markup|translate>。比如我们可以用<inactive|<translate|insert|english|chinese>>来表示<translate|insert|english|chinese>，这样在insert的翻译发生变化的时候，在文档中的中文可以跟着变化。

  <section*|(30min) 固定话题：中文文档默认样式以及如何引用参考文献>

  <subsection|引用参考文献>

  <\itemize>
    <item>由熟悉如何引用参考文献的成员展示一下操作

    <\itemize>
      <item>两种方法
    </itemize>

    <item>讨论其中需要改进的细节

    <\itemize>
      <item>参考文献的排序

      <item>参考文献的默认样式

      <item>参考文献的归并
    </itemize>
  </itemize>

  <subsection|调整 <menu|Insert|Enuncation> 的默认排版>

  <\itemize>
    <item><menu|Insert|Enunciation>下面的各种环境的默认排版是否合理？

    <item>Enunciation翻译为说明是否合理？

    LaTeX里面的设置。

    <item>默认的编号是否合理？

    \;

    先把光标置于定理等环境中，然后使用扳手，使用欧洲的编号风格。
  </itemize>

  <compound|markup|>

  <\theorem>
    这是一个定理。
  </theorem>

  <\proposition>
    这是一个命题。
  </proposition>

  <\lemma>
    这是一个引理。
  </lemma>

  <\corollary>
    这是一个推论。
  </corollary>

  <\proof>
    这是一个证明。
  </proof>

  <\axiom>
    这是一个公理。
  </axiom>

  <\definition>
    这是一个定义。
  </definition>

  <\notation>
    这是一个记法。
  </notation>

  <\convention>
    这是一个惯例。
  </convention>

  <\remark>
    这是一个注意。
  </remark>

  <\note>
    这是一个注记。
  </note>

  <\example>
    这是一个例子。
  </example>

  <\exercise>
    这是练习题。
  </exercise>

  <\problem>
    这是一道题。
  </problem>

  <\question>
    这是一个问题。
  </question>

  <\solution*>
    这是一个解答。
  </solution*>

  <\answer*>
    这是一个答案。
  </answer*>

  \;

  <section*|自由讨论>

  <\itemize>
    <item>实验室的资金如何使用？
  </itemize>
</body>

<\initial>
  <\collection>
    <associate|prog-scripts|python>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?>>
    <associate|auto-2|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-3|<tuple|1|?>>
    <associate|auto-4|<tuple|2|?>>
    <associate|auto-7|<tuple|2|?>>
    <associate|auto-8|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-9|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|font-family|<quote|ss>|插入>|<with|font-family|<quote|ss>|Enuncation>>|<pageref|auto-7>>

      <tuple|<tuple|<with|font-family|<quote|ss>|插入>|<with|font-family|<quote|ss>|说明>>|<pageref|auto-8>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|(15m)
      用户反馈和新成员介绍> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|(30min)
      固定话题：中文文档默认样式以及如何引用参考文献>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1<space|2spc>引用参考文献
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2<space|2spc>调整
      <with|font-family|<quote|ss>|插入><with|mode|<quote|math>|\<rightarrow\>><with|font-family|<quote|ss>|Enuncation><assign|auto-nr|5><write|idx|<tuple|<tuple|<with|font-family|<quote|ss>|插入>|<with|font-family|<quote|ss>|Enuncation>>|<pageref|auto-5>>>
      的默认排版 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|自由讨论>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>