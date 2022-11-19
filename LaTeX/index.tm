<TeXmacs|2.1.2>

<style|<tuple|tmdoc|chinese|doc>>

<\body>
  <tmdoc-title|<LaTeX>符号大全>

  <\hide-preamble>
    <assign|myspace|http://git.tmml.wiki/XmacsLabs/planet/raw/main/LaTeX/>

    <assign|gitlink|<macro|name|<hlink|<arg|name>|<merge|<value|myspace>|<arg|name>|.tm>>>>
  </hide-preamble>

  <section*|<LaTeX>数学符号一览>

  下面这份文件中罗列了<LaTeX>的数学符号以及这些数学符号在<TeXmacs>中的对应快捷键

  <\itemize>
    <item><gitlink|MathSymbols>
  </itemize>

  <section*|<LaTeX>符号大全>

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

  <section*|贡献者须知>

  <\question*>
    如何快速输入<markup|\\markup-name>？
  </question*>

  <\answer>
    执行下面的Scheme代码片段以创建快捷键

    <\session|scheme|default>
      <\unfolded-io|Scheme] >
        (kbd-map ("m /" (begin (insert `(markup "\\\\"))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (go-to-previous)))))
      <|unfolded-io>
        ("m /")
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    然后只要输入<key|m />就可以继续输入剩下的部分<markup|markup-name>。
  </answer>

  \;

  <subsection*|符号列表>

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