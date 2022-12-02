<TeXmacs|2.1.2>

<style|<tuple|seminar|doc|chinese|invisible-multiply|python|comment>>

<\body>
  \ <doc-data|<doc-title|第十次研讨会>>

  本次研讨会记录人：沈浪熊猫儿

  <\itemize>
    <item>会议链接：<slink|https://meeting.tencent.com/p/9323633600>

    <item>会议时间：2022/11/13 晚上八点到九点（北京时间）
  </itemize>

  <section*|(15m) 用户反馈和新成员介绍（屏幕录制）>

  <section|杨勇>

  <\itemize>
    <item>半年，Ubuntu

    <item>LaTeX export: eqnarray -\<gtr\> align

    <item>字体

    <item>英文文档中输入中文：不会自动换行

    <\itemize>
      <item>提示新用户

      <item>最终修复这个问题
    </itemize>
  </itemize>

  \;

  \;

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (xmacs-version)
    <|unfolded-io>
      "1.1.1"
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <TeXmacs-version>

  <section*|(30min) 固定话题：三个话题>

  <\itemize>
    <item>Yufeng Shen介绍墨干的WASM版

    <\itemize>
      <item><slink|Yufeng-shen.github.io>

      <item>mogan.app

      <item>相关问题都提交到Github Issues

      <item>glink

      <item>生成可分享的链接

      <\itemize>
        <item>公开: mogan.app/wasm

        <\itemize>
          <item>github/<text-dots>
        </itemize>

        <item>私有

        <\itemize>
          <item>github/<text-dots>
        </itemize>
      </itemize>

      <item>WASM自动提交
    </itemize>

    <item>王老师介绍一下动画制作

    <item>墨干V1.1.2的计划（计划在春节左右发布）

    <\itemize>
      <item>里程碑 <hlink|Gitee|https://gitee.com/XmacsLabs/mogan/milestones/177255>/<hlink|Github|https://github.com/XmacsLabs/mogan/milestone/10>

      <item>优先修复错误

      <item>优先做字体相关优化

      <item>切换到<name|Xmake>，并利用CI完成安装包制作

      <\itemize>
        <item>Windows安装包制作

        <item>macOS安装包制作

        <item>Ubuntu PPA安装包制作
      </itemize>
    </itemize>
  </itemize>

  <section*|自由讨论（不录屏）>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|<with|mode|<quote|math>|\<bullet\>>|1|http://git.tmml.wiki/XmacsLabs/planet/raw/main/墨者实验室/第十次研讨会.tm>>
    <associate|auto-2|<tuple|1|1|http://git.tmml.wiki/XmacsLabs/planet/raw/main/墨者实验室/第十次研讨会.tm>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|<rigid|\<circ\>>>|1|http://git.tmml.wiki/XmacsLabs/planet/raw/main/墨者实验室/第十次研讨会.tm>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|<rigid|->>|?|http://git.tmml.wiki/XmacsLabs/planet/raw/main/墨者实验室/第十次研讨会.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|(15m)
      用户反馈和新成员介绍（屏幕录制）>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|(30min)
      固定话题：三个话题> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|自由讨论（不录屏）>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>