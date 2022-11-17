<TeXmacs|2.1.2>

<style|<tuple|generic|chinese|doc>>

<\body>
  <\hide-preamble>
    <assign|term|<macro|x|<translate|<arg|x>|english|chinese><glossary-explain|<arg|x>|<translate|<arg|x>|english|chinese>>>>
  </hide-preamble>

  <doc-data|<doc-title|数学结构入门>|<doc-author|<author-data|<author-name|沈达>>>>

  <subsection|上标和下标>

  \;

  <term|superscript>和<term|subscript>是最基础的数学结构。除了上标和下标，还有<term|left
  superscript>、<term|left subscript>、<term|script above>和<term|script
  below>。

  <\big-table|<tabular|<tformat|<cwith|1|1|1|-1|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|4|4|2|2|cell-row-span|2>|<cwith|4|4|2|2|cell-col-span|1>|<cwith|1|-1|1|-1|cell-valign|c>|<table|<row|<cell|上下标>|<cell|示例>|<cell|输入方式>>|<row|<cell|上标>|<cell|<math|360<rsup|\<circ\>>>>|<cell|<key|^>>>|<row|<cell|下标>|<cell|<math|A<rsub|i
  j>>>|<cell|<key|_>>>|<row|<cell|左上标>|<cell|<math|<lsup|227><lsub|90>Th>>|<cell|>>|<row|<cell|左下标>|<cell|>|<cell|>>|<row|<cell|正上标>|<cell|<math|<above|<text|您>|<text|nín>><above|<text|好>|<text|h\<#001CE\>o>>>>|<cell|<menu|Insert|Script|Script
  above>>>|<row|<cell|正下标>|<cell|<math|<below|min|i>>>|<cell|<menu|Insert|Script|Script
  below>>>>>>>
    上下标的输入方式
  </big-table>

  <term|left subscript>和<term|left subscript>的输入，稍稍有一些不一样，按照从左到右的顺序，我们可以先用<menu|Insert|Script|Left
  Subscript>输入左上标，然后再把光标往右移出左下标的作用范围，输入左下标所依附的主体，最后将光标移动到<term|left
  subscript>的作用范围内，使用<term|focus dependent
  icons>里面的<icon|tm_insert_up.svg>按钮，就可以进入<term|left
  superscript>的输入结构。

  <subsection|分式>

  \;

  分式不仅可以在数学模式下使用，在文本模式下，也可以输入。使用命令<markup|frac><\footnote>
    命令<markup|frac>：是指使用<key|\\><key|f><key|r><key|a><key|c><key|return>这样的按键序列来输入内容，按下<key|\\>之后进入进入<LaTeX>/<TeXmacs>混合命令模式，然后输入命令，最后按下回车键。下文中提到的其它命令，也是类似的输入方式。
  </footnote>，在任何模式下都可以使用分式。不同的系统下，在数学模式中输入分式的快捷键<\footnote>
    <key|escape escape>这个快捷键前缀是随系统变化的，在macOS中是Option键。而<key*|escape
    escape>是不随系统变化的，都是按两下ESC键。
  </footnote>是不同的：

  <\big-table|<tabular|<tformat|<cwith|1|1|2|2|cell-valign|b>|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|1|1|-1|cell-background|pastel
  green>|<table|<row|<cell|输入方式>|<cell|适用场景>|<cell|系统>>|<row|<cell|<markup|frac>>|<cell|任意模式>|<cell|通用>>|<row|<cell|<menu|Insert|Fraction>>|<cell|数学模式>|<cell|通用>>|<row|<cell|<key|escape
  escape><key|f>>|<cell|数学模式>|<cell|随系统变化>>|<row|<cell|<key*|escape
  escape><key|f>>|<cell|数学模式>|<cell|通用>>>>>>
    分式的输入方式
  </big-table>

  <subsection|根式>

  \;

  根式和分式类似，在所有模式下都可以使用，不过一般我们只在数学模式下使用。就平方根<glossary-explain|square
  root|平方根>而言，输入方式如下表所示：

  <\big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|4|4|1|1|cell-valign|b>|<table|<row|<cell|输入方式>|<cell|适用场景>|<cell|系统>>|<row|<cell|<markup|sqrt>>|<cell|任意模式>|<cell|通用>>|<row|<cell|<menu|Insert|Square
  root>>|<cell|任意模式>|<cell|通用>>|<row|<cell|<key|escape
  escape><key|s>>|<cell|数学模式>|<cell|随系统变化>>|<row|<cell|<key*|escape
  escape><key|s>>|<cell|数学模式>|<cell|通用>>>>>>
    平方根的输入方式
  </big-table>

  对于高次方根<glossary-explain|multiple
  root|高次方根>，在数学模式下，可以使用菜单项<menu|Insert|Multiple
  root>插入。也可以在输入平方根的当下<\footnote>
    当下：指在输入平方根之后，立即按下<key|tab>。另外，使用命令输入之后，该方式无效。
  </footnote>，使用<key|tab>将平方根切换到高次方根。

  除了用菜单、命令、快捷键输入数学结构，也可以使用工具栏。菜单之下，有三个工具栏：

  <\itemize>
    <item>主要工具栏：通用功能，不随模式和焦点的改变而变化

    <item>模式工具栏：随着模式的改变而变化，数学模式下，模式工具栏比较常用

    <item>焦点工具栏：随着焦点的改变而变化，对应于菜单栏中的焦点菜单
  </itemize>

  \;

  在输入平方根之后，我们可以使用<menu|Focus|Multiple
  root>将平方根切换为高次方根。焦点菜单中的菜单项，都可以在焦点工具栏中找到对应的按钮。

  <subsection|矩阵><label|matrix>

  \;

  <TeXmacs>的矩阵<glossary-explain|matrix|矩阵>在底层实际上是表格，所以在使用上和表格的操作几乎相同。

  <\big-table|<tabular|<tformat|<cwith|1|1|1|-1|cell-background|pastel
  green>|<cwith|1|1|3|3|cell-background|pastel
  green>|<table|<row|<cell|amsmath>|<cell|示例>|<cell|命令>>|<row|<cell|matrix>|<cell|<with|math-display|true|<math|<matrix*|<tformat|<table|<row|<cell|a>|<cell|b>>|<row|<cell|c>|<cell|d>>>>>>>>|<cell|<markup|matrix*>>>|<row|<cell|bmatrix>|<cell|<bmatrix|<tformat|<table|<row|<cell|a>|<cell|b>>|<row|<cell|c>|<cell|d>>>>>>|<cell|<markup|bmatrix>>>|<row|<cell|vmatrix>|<cell|<det|<tformat|<table|<row|<cell|a>|<cell|b>>|<row|<cell|c>|<cell|d>>>>>>|<cell|<compound|markup|>>>|<row|<cell|pmatrix>|<cell|<matrix|<tformat|<table|<row|<cell|a>|<cell|b>>|<row|<cell|c>|<cell|d>>>>>>|<cell|<markup|matrix>>>|<row|<cell|Bmatrix>|<cell|<math|<around*|{|<matrix*|<tformat|<table|<row|<cell|a>|<cell|b>>|<row|<cell|c>|<cell|d>>>>>|}>>>|<cell|>>|<row|<cell|Vmatrix>|<cell|<math|<around*|\<\|\|\>|<matrix*|<tformat|<table|<row|<cell|a>|<cell|b>>|<row|<cell|c>|<cell|d>>>>>|\<\|\|\>>>>|<cell|>>>>>>
    矩阵一览
  </big-table>

  AMS-<LaTeX>里面提供了一系列矩阵环境，都可以在<TeXmacs>中轻松输入。如上表所示，其中的matrix,
  bmatrix, pmatrix都可以通过<TeXmacs>命令输入，而vmatrix即行列式，可以通过菜单项<menu|Insert|Table|Determinant><\footnote>
    注意：菜单项行列式当且仅当在数学环境中才可见。
  </footnote>输入。剩下的Bmatrix和Vmatrix，则可以先输入外围的括号，再使用命令<markup|matrix*>输入。

  矩阵环境中常用的省略号有<markup|dots>, <markup|vdots>,
  <markup|ddots>：

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|a<rsub|1
    1>>|<cell|\<ldots\>>|<cell|a<rsub|1 n>>>|<row|<cell|>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|>|<cell|a<rsub|n
    n>>>>>><rsub|n\<times\>n>
  </equation*>

  \;

  这三种省略号，除了直接用<LaTeX>模拟命令输入，也可以采用<TeXmacs>特有的快捷键系统：

  <\big-table|<tabular|<tformat|<cwith|1|1|1|-1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-halign|c>|<table|<row|<cell|省略号>|<cell|按键序列>>|<row|<cell|<math|\<ldots\>>>|<cell|<key|$><key|.><key|.>>>|<row|<cell|<math|\<vdots\>>>|<cell|<key|$><key|.><key|.><key|tab><key|tab><key|tab>>>|<row|<cell|<math|\<ddots\>>>|<cell|<key|$><key|.><key|.><key|tab><key|tab><key|tab><key|tab>>>>>>>
    省略号的输入
  </big-table>

  当我们把光标放在省略号之后，就可以在底部状态栏看到光标所在位置省略号的名字。

  还有另外两个场景，其本质是矩阵的特殊形式。

  其一是分段函数，在<TeXmacs>中这种数学结构叫做<dfn|选择><glossary-explain|choice|选择>，可以通过<menu|Insert|Table|Choice>输入：

  <\equation*>
    <choice|<tformat|<table|<row|<cell|y=-<frac|1|2>x+3>|<cell|,x\<in\><around*|(|-\<infty\>,0|)>>>|<row|<cell|y=<frac|1|2>x<rsup|2>>|<cell|,x\<in\><around*|[|0,+\<infty\>|)>>>>>>
  </equation*>

  \;

  其二是求和公式下面的<dfn|堆叠><glossary-explain|stack|堆叠>，可以通过<menu|Insert|Table|Stack>输入：

  <\equation*>
    <big|sum><rsub|<stack|<tformat|<table|<row|<cell|0\<less\>i\<less\>n>>|<row|<cell|0\<less\>j\<less\>m>>>>>>x<rsub|i
    j>
  </equation*>

  \;
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|1|?>>
    <associate|auto-11|<tuple|left subscript|?>>
    <associate|auto-12|<tuple|left subscript|?>>
    <associate|auto-13|<tuple|left subscript|?>>
    <associate|auto-14|<tuple|left subscript|?>>
    <associate|auto-15|<tuple|focus dependent icons|?>>
    <associate|auto-16|<tuple|left superscript|?>>
    <associate|auto-17|<tuple|2|?>>
    <associate|auto-18|<tuple|2|?>>
    <associate|auto-19|<tuple|2|?>>
    <associate|auto-2|<tuple|superscript|?>>
    <associate|auto-20|<tuple|3|?>>
    <associate|auto-21|<tuple|square root|?>>
    <associate|auto-22|<tuple|3|?>>
    <associate|auto-23|<tuple|3|?>>
    <associate|auto-24|<tuple|multiple root|?>>
    <associate|auto-25|<tuple|multiple root|?>>
    <associate|auto-26|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-27|<tuple|4|?>>
    <associate|auto-28|<tuple|matrix|?>>
    <associate|auto-29|<tuple|4|?>>
    <associate|auto-3|<tuple|subscript|?>>
    <associate|auto-30|<tuple|4|?>>
    <associate|auto-31|<tuple|5|?>>
    <associate|auto-32|<tuple|choice|?>>
    <associate|auto-33|<tuple|choice|?>>
    <associate|auto-34|<tuple|stack|?>>
    <associate|auto-35|<tuple|stack|?>>
    <associate|auto-4|<tuple|left superscript|?>>
    <associate|auto-5|<tuple|left subscript|?>>
    <associate|auto-6|<tuple|script above|?>>
    <associate|auto-7|<tuple|script below|?>>
    <associate|auto-8|<tuple|1|?>>
    <associate|auto-9|<tuple|1|?>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnote-3|<tuple|3|?>>
    <associate|footnote-4|<tuple|4|?>>
    <associate|footnr-1|<tuple|1|?>>
    <associate|footnr-2|<tuple|2|?>>
    <associate|footnr-3|<tuple|3|?>>
    <associate|footnr-4|<tuple|4|?>>
    <associate|matrix|<tuple|4|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|gly>
      <tuple|normal|superscript|上标|<pageref|auto-2>>

      <tuple|normal|subscript|下标|<pageref|auto-3>>

      <tuple|normal|left superscript|左上标|<pageref|auto-4>>

      <tuple|normal|left subscript|左下标|<pageref|auto-5>>

      <tuple|normal|script above|顶标|<pageref|auto-6>>

      <tuple|normal|script below|底标|<pageref|auto-7>>

      <tuple|normal|left subscript|左下标|<pageref|auto-11>>

      <tuple|normal|left subscript|左下标|<pageref|auto-12>>

      <tuple|normal|left subscript|左下标|<pageref|auto-14>>

      <tuple|normal|focus dependent icons|焦点工具栏|<pageref|auto-15>>

      <tuple|normal|left superscript|左上标|<pageref|auto-16>>

      <tuple|normal|square root|平方根|<pageref|auto-21>>

      <tuple|normal|multiple root|高次方根|<pageref|auto-24>>

      <tuple|normal|matrix|矩阵|<pageref|auto-28>>

      <tuple|normal|choice|选择|<pageref|auto-32>>

      <tuple|normal|stack|堆叠|<pageref|auto-34>>
    </associate>
    <\associate|idx>
      <tuple|<tuple|<with|font-family|<quote|ss>|插入>|<with|font-family|<quote|ss>|上下标>|<with|font-family|<quote|ss>|顶标>>|<pageref|auto-9>>

      <tuple|<tuple|<with|font-family|<quote|ss>|插入>|<with|font-family|<quote|ss>|上下标>|<with|font-family|<quote|ss>|底标>>|<pageref|auto-10>>

      <tuple|<tuple|<with|font-family|<quote|ss>|插入>|<with|font-family|<quote|ss>|上下标>|<with|font-family|<quote|ss>|Left
      Subscript>>|<pageref|auto-13>>

      <tuple|<tuple|<with|font-family|<quote|ss>|插入>|<with|font-family|<quote|ss>|分式>>|<pageref|auto-19>>

      <tuple|<tuple|<with|font-family|<quote|ss>|插入>|<with|font-family|<quote|ss>|平方根>>|<pageref|auto-23>>

      <tuple|<tuple|<with|font-family|<quote|ss>|插入>|<with|font-family|<quote|ss>|高次方根>>|<pageref|auto-25>>

      <tuple|<tuple|<with|font-family|<quote|ss>|焦点>|<with|font-family|<quote|ss>|高次方根>>|<pageref|auto-26>>

      <tuple|<tuple|<with|font-family|<quote|ss>|插入>|<with|font-family|<quote|ss>|表格>|<with|font-family|<quote|ss>|行列式>>|<pageref|auto-30>>

      <tuple|<tuple|<with|font-family|<quote|ss>|插入>|<with|font-family|<quote|ss>|表格>|<with|font-family|<quote|ss>|选择>>|<pageref|auto-33>>

      <tuple|<tuple|<with|font-family|<quote|ss>|插入>|<with|font-family|<quote|ss>|表格>|<with|font-family|<quote|ss>|堆叠>>|<pageref|auto-35>>
    </associate>
    <\associate|table>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        上下标的输入方式
      </surround>|<pageref|auto-8>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|2>|>
        分式的输入方式
      </surround>|<pageref|auto-18>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3>|>
        平方根的输入方式
      </surround>|<pageref|auto-22>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4>|>
        矩阵一览
      </surround>|<pageref|auto-29>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|5>|>
        省略号的输入
      </surround>|<pageref|auto-31>>
    </associate>
    <\associate|toc>
      <with|par-left|<quote|1tab>|1<space|2spc>上标和下标
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|1tab>|2<space|2spc>分式
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|3<space|2spc>根式
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|4<space|2spc>矩阵
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>
    </associate>
  </collection>
</auxiliary>