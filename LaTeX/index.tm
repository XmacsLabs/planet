<TeXmacs|2.1.3>

<style|<tuple|generic|chinese|doc>>

<\body>
  <\hide-preamble>
    <assign|myspace|http://git.tmml.wiki/XmacsLabs/planet/raw/main/LaTeX/>

    <assign|gitlink|<macro|name|<hlink|<arg|name>|<merge|<value|myspace>|<arg|name>|.tm>>>>
  </hide-preamble>

  <doc-data|<doc-title|<LaTeX>符号大全>>

  <LaTeX>符号大全是<LaTeX>项目中的一份罗列了绝大部分<LaTeX>符号的文档，其主页和最新版本PDF为：

  <\itemize>
    <item><slink|https://www.ctan.org/pkg/comprehensive>

    <item><slink|http://mirrors.ctan.org/info/symbols/comprehensive/symbols-a4.pdf>

    <\itemize>
      <item><slink|https://mirrors.sjtug.sjtu.edu.cn/ctan/info/symbols/comprehensive/symbols-a4.pdf>

      <item><slink|http://mirrors.ustc.edu.cn/CTAN/info/symbols/comprehensive/symbols-a4.pdf>
    </itemize>
  </itemize>

  GNU <TeXmacs>只支持<LaTeX>符号中的一部分。我们在下面的符号列表中按照<LaTeX>符号大全的文档中表格，依次整理如何在GNU
  <TeXmacs>中快速输入这些符号。

  符号列表中列出来的快捷键相关的源代码文件罗列如下，点击即可查看这些只读文件<\footnote>
    如果你点击这两个文件，无法在墨干编辑器中直接浏览这两个文件，说明你所使用的墨干编辑器版本小于v1.0.4，请更新到最新版本的墨干编辑器。点击<menu|Help|Mogan>，可以找到最新版本墨干编辑器的下载链接。当我写下这条脚注的时候（2022/07/12），墨干编辑器V1.0.4就是最新版，这个问题还没有被解决。
  </footnote>：

  <\itemize>
    <item><slink|$TEXMACS_PATH/progs/text/text-kbd.scm>

    <item><slink|$TEXMACS_PATH/progs/math/math-kbd.scm>
  </itemize>

  <section*|符号列表>

  <\itemize>
    <item><gitlink|BinaryOperators>

    <item><gitlink|AMSBinaryOperators>

    <item><gitlink|StixBinaryOperators>
  </itemize>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnr-1|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|符号列表>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>