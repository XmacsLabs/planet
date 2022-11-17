<TeXmacs|2.1.2>

<style|<tuple|tmdoc|chinese|smart-ref|preview-ref|graphical-macros>>

<\body>
  <doc-data|<doc-title|墨干的引用机制及改进思路>|<doc-author|<author-data|<author-name|jingkaimori>>>>

  <section|smart-ref智能引用的用法>

  <markup|smart-ref>宏和<markup|reference>宏的操作差不多，只是链接所在的位置会根据索引字符串<src-arg|Id>的内容，提示索引目标的类型，并用章节编号来表示目标的位置。启用<markup|preview-ref>宏包后，如果划过链接或编辑链接内的索引字符串，就会弹出浮动的提示框，显示链接目标的详细内容。

  插入链接和链接目标，需要进行以下步骤：

  <\enumerate>
    <item>在标题或图表环境后，插入索引<markup|index>，并给出索引字符串。

    <\enumerate>
      <item>如果插入智能引用，要将代表索引类型的标志字符串（<src-arg|ch:>章，<src-arg|sec:>节，<src-arg|fig:>图表）放到标识符前面

      <item>指明索引的标识符
    </enumerate>

    <item>插入链接<markup|reference>或带提示的链接<markup|smart-ref>，将之前写出的索引字符串填入目标一栏
  </enumerate>

  <section|smart-ref的局限性><label|sec:smart>

  这一节标题，索引字符串为<src-arg|sec:smart>：<smart-ref|sec:smart>

  第一幅图片，索引字符串为<src-arg|fig:mogan>：<smart-ref|fig:mogan>

  第二幅图片，索引字符串为<src-arg|sec:mogan>：<smart-ref|sec:mogan>

  不同状态下如何触发索引提示：

  <inactive|<smart-ref|sec:smart>>，<smart-ref|sec:smart>

  <inactive|<reference|sec:smart>>，<reference|sec:smart>

  <\big-figure|>
    <label|fig:mogan>这是一张图片
  </big-figure>

  <\big-figure|>
    <label|sec:mogan>这也是一张图片，链接是一个章节
  </big-figure>

  <section|去除索引字符串，在gui上选择待引用的元素>

  如果引用的对象是章节标题或图表等有明确定义和序号的对象，引用的时候不再插入索引，而是在插入链接的时候，从gui上直接选择引用的目标。

  <\big-figure|<with|gr-mode|<tuple|edit|text-at>|gr-frame|<tuple|scale|1cm|<tuple|0.509999gw|0.559994gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-snap|<tuple|control
  point|grid point|grid curve point|curve-grid intersection|text border
  point|text border>|<graphics||<\document-at>
    \;
  </document-at|<point|-5.26953|3.26511>>|<rectangle|<point|-6.056335072099493|2.6404939939145606>|<point|5.606580000000011|-3.878890000000025>>|<rectangle|<point|-1.99231|2.11678>|<point|4.8445726948009|-2.603419764519116>>|<rectangle|<point|-5.52717|2.09561>|<point|-2.690815584071967|-2.5822529435110466>>|<\document-at>
    目标的类型

    ⬜章节

    ⬜图表环境

    ⬜编号公式

    ⬜术语

    ⬜手动插入的引用

    \<ldots\>\<ldots\>
  </document-at|<point|-5.52717|1.2563117984483674>>|<\document-at>
    \;
  </document-at|<point|0.33604|0.381102>>|<\document-at>
    第一节 用法

    第二节 缺陷

    <space|2em>图1

    <space|2em>图2

    <space|2em>表1

    参考文献

    <space|2em>1 Joris\ 

    <space|2em>2 Shen
  </document-at|<point|-1.29381|1.37594>>|<rectangle|<point|3.8708979825374037|-3.667213903955601>|<point|5.204410000000063|-2.9052100000000745>>||<text-at|确认|<point|4.274887551263395|-3.349715570842704>>>>>
    gui示意
  </big-figure>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>