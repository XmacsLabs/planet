<TeXmacs|2.1.3>

<style|<tuple|seminar|chinese|doc>>

<\body>
  <doc-data|<doc-title|第五次研讨会>>

  本次研讨会记录人：沈浪熊猫儿

  <section*|(15m) 用户反馈和新成员介绍>

  <\itemize>
    <item>参考文献数据库的默认条目显示数量(<hlink|gitee|https://gitee.com/XmacsLabs/mogan/issues/I5NBGR>)

    <item>参考文献数据库默认改成Pretty样式(<hlink|gitee|https://gitee.com/XmacsLabs/mogan/issues/I5NBFM>)

    <item>多行公式的快捷键<key|alt><key|&>无法在菜单中显示(<hlink|gitee|https://gitee.com/XmacsLabs/mogan/issues/I5NBFH>)
  </itemize>

  <section*|(30min) 固定话题：参考文献和性能优化>

  <subsection*|固定话题：参考文献>

  <subsubsection*|百科：如何在墨者百科的定义中引用参考文献？>

  参考墨者百科中感知机这个词条。

  <subsubsection*|参考文献里面的\\name>

  <markup|\\name>用于指定姓氏，对于中文姓名，有如下问题：

  <\itemize>
    <item>如果使用<name|华>罗庚，则只能导出华这个姓氏

    <item>如果没有使用<markup|\\name>，则导出的姓名前会加上多余的逗号
  </itemize>

  对于中文名，目前可以把完整的姓名放在<markup|\\name>中。

  <subsubsection*|错误：Bloom Filter的页码渲染乱码>

  可以在墨者百科中找到相关参考文件BibTeX完整实例。

  <subsubsection*|如何处理参考文献数据库里面的重复数据>

  <\question>
    为什么不能依据key去重
  </question>

  <\solution*>
    因为导入的参考文献中，有很多重复的key，比如如果按照作者名和年份组合的规则构建key，就会导致同一个作者下不同的文章，它们的key是一样的，但内容是不一样的。
  </solution*>

  处理方式：对于两个内容完全一模一样的条目，可以去重。

  <subsection*|如何做性能分析>

  <\itemize>
    <item>如果要排除缓存的影响，先重置

    <item>通过命令行启动，可以在终端标准输出得到性能相关的信息

    <shell|bin/mogan -debug-bench>

    <item><todo|提供复制按钮，让用户可以复制调试控制台的输出，这样用户可以反馈给我们>
  </itemize>

  <section*|自由讨论>

  <subsection*|翻译displayed formula>

  行间公式是<LaTeX>中的惯用术语，故而这个翻译是合适的，无需更改。

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|papyrus>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-10|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-2|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-8|<tuple|1|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|(15m)
      用户反馈和新成员介绍> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|(30min)
      固定话题：财务公开和墨干编辑器的电子表格功能>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|自由讨论>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>翻译displayed
      formula> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>如何在墨者百科的定义中引用参考文献？>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>参考文献里面的\\name>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>如何做性能分析>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>