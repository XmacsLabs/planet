<TeXmacs|2.1.2>

<style|<tuple|book|chinese|doc|old-spacing|old-dots|old-lengths>>

<\body>
  \;

  <doc-data|<doc-title|<TeXmacs>图形编程>|<doc-author|<author-data|<author-name|沈浪熊猫儿>|<author-email|shenda@ustc.edu>>>|<doc-date|<date>>>

  <section|简介>

  因为<TeXmacs>的介绍资料不多，所以打算边学边写，写一系列用<name|Scheme>作图的小文章。早先我在自己的博客上写过两篇：使用Scheme在<TeXmacs>中生成图片<\footnote>
    <href|http://sadhen.com/blog/2014/11/04/texmacs-graphics.html>
  </footnote>和使用Scheme在<TeXmacs>中画内核代码结构体关系图<\footnote>
    <href|http://sadhen.com/blog/2014/11/09/texmacs-graphics-struct.html>
  </footnote>，对其图形系统的文档树有一个大概的了解。这次打算系统性地介绍作图方法并构建用<name|Scheme>编程作图的配置文件。

  本文对读者的基本要求就是熟悉<TeXmacs>的基本使用和<name|Scheme>语言的基础。<TeXmacs>相关的操作和内部原理，我尽量会使用自己的语言阐述清楚，或者给出<TeXmacs>官方文档的具体位置。另外，本文原始文档托管在Github<\footnote>
    <href|https://github.com/sadhen/articles-and-notes-by-TeXmacs>
  </footnote>上，所使用的<TeXmacs>版本为<TeXmacs-version>。

  <with|ornament-color|#efefef|<\ornamented>
    <\remark>
      由于文中使用了大量交互式<name|Scheme>进程，在原始文档中才能够对其求值并作图，所以请使用<TeXmacs>阅读原始文档。
    </remark>
  </ornamented>>

  本文的交互式代码的执行假定读者是一次性从上到下读完全文，当然这是不现实的，所以附录的小贴士建议优先阅读，以方便你第二次阅读本文中末节时快速进入状态。

  <section|基本原理>

  首先，假设我们已经了解到：一篇<TeXmacs>文档实际上就是一长串<name|Scheme>代码，通过渲染引擎的加工，这些代码得以展现在我们笔记本的屏幕上。这些代码我们称之为<TeXmacs>
  <name|Scheme>。为了区分，我们将在<name|Guile>中运行的代码称为<name|Guile>
  <name|Scheme>。

  通过<menu|insert|session|Scheme>，我们得到一个<name|Scheme>
  <name|REPL>。我们定义第一个函数

  <\session|scheme|default>
    <\input|Scheme] >
      (define (plot l) (stree-\<gtr\>tree l))
      ;按下回车，定义这个函数
    </input>
  </session>

  一串<name|Scheme>代码对应的结构是一棵树，这里的<scm|stree-\<gtr\>tree>就是将<name|Guile>
  <scheme>树转变成<TeXmacs> <scheme>树，以便在文档中显示。比如，我们知道<frac|1|2>的内部表示实际上就是<scm|(frac
  1 2)>。于是，在<name|REPL>中，我们就可以通过

  <\session|scheme|default>
    <\folded-io|Scheme] >
      (plot `(frac 1 2)) ;光标放在这行上，按下回车就能得到1/2
    <|folded-io>
      \;
    </folded-io>
  </session>

  <subsection|原语>

  上面介绍的原语<verbatim|frac>实际上用于数学模式，下面我们介绍图形模式下的原语。先全部列出来：

  <\big-table|<tabular|<tformat|<table|<row|<cell|>>>>><block*|<tformat|<cwith|1|-1|1|-1|cell-hyphen|c>|<table|<row|<\cell>
    原语
  </cell>|<\cell>
    示例
  </cell>|<\cell>
    功能
  </cell>>|<row|<\cell>
    <markup|point>
  </cell>|<\cell>
    <verbatim|<code*|(point \P0\Q \P0\Q)>>
  </cell>|<\cell>
    坐标(0,0)处的一个点
  </cell>>|<row|<\cell>
    <markup|line>
  </cell>|<\cell>
    <verbatim|<\code*>
      (line (point \P0\Q \P0\Q) (point \P0\Q \P1\Q)

      (point \P1\Q \P1\Q))
    </code*>>
  </cell>|<\cell>
    (0,0)<math|\<rightarrow\>>(0,1)<math|\<rightarrow\>>(1,1)

    的一条折线
  </cell>>|<row|<\cell>
    <markup|cline>
  </cell>|<\cell>
    <\code*>
      (cline (point \P0\Q \P0\Q) (point \P0\Q \P1\Q)

      (point \P1\Q \P1\Q))
    </code*>
  </cell>|<\cell>
    <math|(0,0)\<rightarrow\>(0,1)\<rightarrow\>(1,1)\<rightarrow\>(0,0)>

    的一条闭合折线
  </cell>>|<row|<\cell>
    <markup|spline>
  </cell>|<\cell>
    <\code*>
      (spline (point \P0\Q \P0\Q) (point \P0\Q \P1\Q)

      (point \P1\Q \P1\Q))
    </code*>
  </cell>|<\cell>
    <math|(0,0)\<rightarrow\>(0,1)\<rightarrow\>(1,1)>

    的一条样条曲线
  </cell>>|<row|<\cell>
    <markup|cspline>
  </cell>|<\cell>
    <\code*>
      (cspline (point \P0\Q \P0\Q) (point \P0\Q \P1\Q)

      (point \P1\Q \P1\Q))
    </code*>
  </cell>|<\cell>
    <math|(0,0)\<rightarrow\>(0,1)\<rightarrow\>(1,1)\<rightarrow\>(0,0)>

    的一条闭合样条曲线
  </cell>>|<row|<\cell>
    <markup|arc>
  </cell>|<\cell>
    <\code*>
      (arc (point \P0\Q \P0\Q) (point \P0\Q \P1\Q)

      (point \P1\Q \P1\Q))
    </code*>
  </cell>|<\cell>
    过这三点的一条弧
  </cell>>|<row|<\cell>
    <markup|carc>
  </cell>|<\cell>
    <\code*>
      (carc (point \P0\Q \P0\Q) (point \P0\Q \P1\Q)

      (point \P1\Q \P1\Q))
    </code*>
  </cell>|<\cell>
    过这三点的一个圆
  </cell>>|<row|<\cell>
    <markup|text-at>
  </cell>|<\cell>
    <\code*>
      (text-at (texmacs-markup)

      (point \P0\Q \P0\Q))
    </code*>
  </cell>|<\cell>
    这个原语的重要之处在于提

    供了一种在图片上放置

    图片的方法，放在其上

    的图片所处的位置是点

    (0,0)的右边，其竖直方向

    上的对称轴正好过点(0,0)
  </cell>>>>>>
    \;
  </big-table>

  接着，我们在这些原语<\footnote>
    这些原语的代码实现可以在<verbatim|src/Graphics/Types/>下找到
  </footnote>的基础上构建作图所需的基本元素。首先是点，线段，矩形和圆：

  <\session|scheme|default>
    <\input|Scheme] >
      (define (point x y)

      \ \ ; number-\<gtr\>string的作用是将树变成文档中表示数据的字符串

      \ \ `(point ,(number-\<gtr\>string x) ,(number-\<gtr\>string y)))
    </input>

    <\input|Scheme] >
      (define (point.x point)

      \ \ (string-\<gtr\>number (list-ref point 1)))
    </input>

    <\input|Scheme] >
      (define (point.y point)

      \ \ (string-\<gtr\>number (list-ref point 2)))
    </input>

    <\input|Scheme] >
      (define (line . points)

      \ \ (cond ((nlist? points) `())

      \ \ \ \ \ \ \ \ ((== points '()) `())

      \ \ \ \ \ \ \ \ (else `(line ,@points))))
    </input>

    <\input|Scheme] >
      (define (rectangle leftdown rightup)

      \ \ (let ((leftup (point (point.x leftdown) (point.y rightup)))

      \ \ \ \ \ \ \ \ (rightdown (point (point.x rightup) (point.y
      leftdown))))

      \ \ \ \ `(cline ,leftdown ,leftup ,rightup ,rightdown)))
    </input>

    <\input|Scheme] >
      (define (circle center radius)

      \ \ (let ((p1 (point (- (point.x center) radius) (point.y center)))

      \ \ \ \ \ \ \ \ (p2 (point (point.x center) (+ (point.y center)
      radius)))

      \ \ \ \ \ \ \ \ (p3 (point (+ (point.x center) radius) (point.y
      center))))

      \ \ \ \ `(carc ,p1 ,p2 ,p3)))
    </input>
  </session>

  用<verbatim|plot>绘制点、矩形和圆：

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (plot (point 0 0))
    <|unfolded-io>
      <text|<point|0|0>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (plot (rectangle (point 0 0) (point 1 1)))
    <|unfolded-io>
      <text|<cline|<point|0|0>|<point|0|1>|<point|1|1>|<point|1|0>>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (plot (circle (point 0 0) 1))
    <|unfolded-io>
      <text|<carc|<point|-1|0>|<point|0|1>|<point|1|0>>>
    </unfolded-io>
  </session>

  <subsection|操纵样式属性>

  使用<markup|with>原语可以给<TeXmacs>对象附上各种属性。比如

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (plot `(with color "red" fill-color "#eeeeee" ,(circle (point 0 0) 1)))
    <|unfolded-io>
      <text|<with|color|red|fill-color|#eeeeee|<carc|<point|-1|0>|<point|0|1>|<point|1|0>>>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (plot `(with arrow-begin "\<less\>gtr\<gtr\>" dash-style "11100"
      ，(line (point 0 1) (point 0 0) (point 1 1))))
    <|unfolded-io>
      <text|<with|arrow-begin|\<gtr\>|dash-style|11100|<line|<point|0|1>|<point|0|0>|<point|1|1>>>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (plot `(with point-style "star" ,(point 0 0)))
    <|unfolded-io>
      <text|<with|point-style|star|<point|0|0>>>
    </unfolded-io>
  </session>

  根据源码<\footnote>
    <verbatim|TeXmacs/progs/graphics/graphics-drd.scm>
  </footnote>中的定义，可以总结出：

  <big-table|<block*|<tformat|<cwith|1|-1|1|-1|cell-hyphen|c>|<cwith|2|2|2|2|cell-row-span|2>|<cwith|2|2|2|2|cell-col-span|1>|<cwith|8|8|2|2|cell-row-span|2>|<cwith|8|8|2|2|cell-col-span|1>|<cwith|1|-1|1|-1|cell-vcorrect|b>|<table|<row|<\cell>
    属性
  </cell>|<\cell>
    值
  </cell>|<\cell>
    作用
  </cell>>|<row|<\cell>
    color
  </cell>|<\cell>
    \;

    颜色，如<verbatim|"red">，<verbatim|"#eeeee">
  </cell>|<\cell>
    对象本身的颜色
  </cell>>|<row|<\cell>
    fill-color
  </cell>|<\cell>
    \;
  </cell>|<\cell>
    填充色
  </cell>>|<row|<\cell>
    magnify
  </cell>|<\cell>
    浮点数，如<verbatim|"1.1">
  </cell>|<\cell>
    放大或缩小的倍率
  </cell>>|<row|<\cell>
    opacity
  </cell>|<\cell>
    百分比，如<verbatim|"100%">
  </cell>|<\cell>
    透明度
  </cell>>|<row|<\cell>
    point-style
  </cell>|<\cell>
    <verbatim|default,round,square,diamond,triangle,star>
  </cell>|<\cell>
    点的样式
  </cell>>|<row|<\cell>
    dash-style
  </cell>|<\cell>
    <verbatim|"10","11100","1111010">
  </cell>|<\cell>
    线的样式
  </cell>>|<row|<\cell>
    arrow-begin
  </cell>|<\cell>
    <verbatim|"\<less\>less\<gtr\>","\<less\>less\<gtr\>\|","\<less\>less\<gtr\>\<less\>less\<gtr\>",>

    <verbatim|"\<less\>gtr\<gtr\>","\|\<less\>gtr\<gtr\>","\<less\>gtr\<gtr\>\<less\>gtr\<gtr\>">

    \;
  </cell>|<\cell>
    开始处的箭头
  </cell>>|<row|<\cell>
    arrow-end
  </cell>|<\cell>
    \;
  </cell>|<\cell>
    结束处的箭头
  </cell>>>>>|部分对象属性>

  光看表格中的总结不免失之直观，推荐阅读<menu|help|manual|内置作图工具>这章中样式属性详述这一节。

  下面，定义一些函数，方便我们操纵上一节中点、圆和矩形的样式。首先是颜色，我们定义<verbatim|fill>来设置背景色，定义<verbatim|colorize>来设置前景色。粗糙的想法是在图形对象前增加<markup|with>标签以及相应的属性，<em|但是如果我们对同一个对象增加了许多次<markup|with>标签会怎样呢？>
  这个问题可以用函数<verbatim|merge-with>解决，另外我们定义<verbatim|decorate>来设置任意属性：

  <\session|scheme|default>
    <\input|Scheme] >
      (define (merge-with l par val subs)

      \ \ (cond ((== (length l) 0) '())

      \ \ \ \ \ \ \ \ ((== (length l) 1) (append (list par val) l))

      \ \ \ \ \ \ \ \ ((== par (car l))

      \ \ \ \ \ \ \ \ \ (if subs (set-car! (cdr l) val)) l)

      \ \ \ \ \ \ \ \ (else\ 

      \ \ \ \ \ \ \ \ \ \ (let ((t (list (car l) (cadr l))))

      \ \ \ \ \ \ \ \ \ \ \ \ (append t (merge-with (cddr l) par val
      subs))))))
    </input>

    <\input|Scheme] >
      (define (decorate l par val subs)

      \ \ (cond ((or (nlist? l) (null? l)) '())

      \ \ \ \ \ \ \ \ ((list? (car l))\ 

      \ \ \ \ \ \ \ \ \ (append (list (decorate (car l) par val subs))\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (decorate (cdr l) par val subs)))

      \ \ \ \ \ \ \ \ ((== (car l) 'with)\ 

      \ \ \ \ \ \ \ \ \ (append '(with) (merge-with (cdr l) par val subs)))

      \ \ \ \ \ \ \ \ ((or (== (car l) 'line) (== (car l) 'cline) (== (car l)
      'carc) (== (car l) 'point) (== (car l) 'graphics))

      \ \ \ \ \ \ \ \ \ (append '(with) (merge-with (list l) par val
      subs)))))
    </input>

    <\input|Scheme] >
      (define (fill fig bc)

      \ \ (decorate fig "fill-color" bc #f))
    </input>

    <\input|Scheme] >
      (define (force-fill fig bc)

      \ \ (decorate fig "fill-color" bc #t))
    </input>

    <\input|Scheme] >
      (define (colorize fig fc)

      \ \ (decorate fig "color" fc #f))
    </input>

    <\input|Scheme] >
      (define (force-colorize fig fc)

      \ \ (decorate fig "color" fc #t))
    </input>

    <\input|Scheme] >
      (define (arrow-begin fig style)

      \ \ (decorate fig "arrow-begin" style #f))
    </input>

    <\input|Scheme] >
      (define (force-arrow-begin fig style)

      \ \ (decorate fig "arrow-begin" style #t))
    </input>

    <\input|Scheme] >
      (define (arrow-end fig style)

      \ \ (decorate fig "arrow-end" style #f))
    </input>

    <\input|Scheme] >
      (define (force-arrow-end fig style)

      \ \ (decorate fig "arrow-end" style #t))
    </input>

    <\input|Scheme] >
      (define (dash-style fig style)

      \ \ (decorate fig "dash-style" style #f))
    </input>

    <\input|Scheme] >
      (define (force-dash-style fig style)

      \ \ (decorate fig "dash-style" style #t))
    </input>

    <\unfolded-io|Scheme] >
      (plot (dash-style (fill (colorize (circle (point 0 0) 1) "blue")
      "green") "1111010"))
    <|unfolded-io>
      <text|<with|color|blue|fill-color|green|dash-style|1111010|<carc|<point|-1|0>|<point|0|1>|<point|1|0>>>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (plot (arrow-end (line (point -2 0) (point 0 0) (point 1 1))
      "\|\<less\>gtr\<gtr\>"))
    <|unfolded-io>
      <text|<with|arrow-end|\|\<gtr\>|<line|<point|-2|0>|<point|0|0>|<point|1|1>>>>
    </unfolded-io>
  </session>

  <subsection|摆弄画布>

  前文所作之图，我们都只是将图形对象生成出来<TeXmacs>文档树放在<scheme>进程的输出上，我们观察到坐标的原点就在文档横截线的中点上。用光标选中这个图案，可以看到左边的一大截空白。在上一节作出的箭头图案前输入了单词left后，你可以清晰地看到这些空白。

  left<with|arrow-end|\|\<gtr\>|<line|<point|-2|0>|<point|0|0>|<point|1|1>>>

  由此可以知道，在没有画布的情况下，<TeXmacs>会分配一个动态大小的画布，以适应图形的尺寸。

  前文中的图像都只是单个图形对象在默认画布上的显示。引入画布之后，我们就可以将多个图形对象叠加在同一个画布上。通过逆向工程<\footnote>
    方法请参考附录中的小贴士
  </footnote>，可以举出这个例子：

  <\session|scheme|default>
    <\input|Scheme] >
      (define (graphics . objects)

      \ \ (cond ((nlist? objects) '(graphics "" ""))

      \ \ \ \ \ \ \ \ ((== objects '()) '(graphics "" ""))

      \ \ \ \ \ \ \ \ (else `(graphics "" ,@objects))))
    </input>

    <\input|Scheme] >
      (define (geometry fig x y)

      \ \ (decorate fig "gr-geometry" `(tuple "geometry" ,x ,y "center") #f))
    </input>

    <\unfolded-io|Scheme] >
      (plot (geometry (graphics\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (fill (rectangle (point -2 -1) (point
      1 1)) "blue")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (fill (rectangle (point -1 -1) (point
      2 1)) "red")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (dash-style (line (point 1 -1) (point
      1 1)) "11100"))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ "5cm" "3cm"))
    <|unfolded-io>
      <text|<with|gr-geometry|<tuple|geometry|5cm|3cm|center>|<graphics||<with|fill-color|blue|<cline|<point|-2|-1>|<point|-2|1>|<point|1|1>|<point|1|-1>>>|<with|fill-color|red|<cline|<point|-1|-1>|<point|-1|1>|<point|2|1>|<point|2|-1>>>|<with|dash-style|11100|<line|<point|1|-1>|<point|1|1>>>>>>
    </unfolded-io>
  </session>

  现在我们就能够用函数<verbatim|graphics>，将多个图形对象叠加在同一个画布上，而且，图形对象的顺序决定了渲染的顺序，后者会覆盖前者。如上图所示，虚线表示原来蓝色矩形的右边界，现在被红色矩形覆盖了。

  而<verbatim|geometry>函数可以控制画布的大小。注意，前文中都没有讨论长度单位这一因素。但实际上前文中所有的坐标的单位都是<verbatim|cm>。所以在指定画布的宽度和高度的时候，我们需要加上<verbatim|cm>这个单位，因为这里的默认单位不是<verbatim|cm>。

  另外，我们还可以剪裁画布，尽可能减少画布周围的空白。

  <\session|scheme|default>
    <\input|Scheme] >
      (define (crop fig)

      \ \ (decorate fig "gr-auto-crop" "true" #f))
    </input>

    <\unfolded-io|Scheme] >
      (plot (crop (graphics\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (fill (rectangle (point -2 -1) (point
      1 1)) "blue")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (fill (rectangle (point -1 -1) (point
      2 1)) "red")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (dash-style (line (point 1 -1) (point
      1 1)) "11100"))))
    <|unfolded-io>
      <text|<with|gr-auto-crop|true|<graphics||<with|fill-color|blue|<cline|<point|-2|-1>|<point|-2|1>|<point|1|1>|<point|1|-1>>>|<with|fill-color|red|<cline|<point|-1|-1>|<point|-1|1>|<point|2|1>|<point|2|-1>>>|<with|dash-style|11100|<line|<point|1|-1>|<point|1|1>>>>>>
    </unfolded-io>
  </session>

  选中最近的这两个一样的图像，你就可以看到区别。

  <section|画廊>

  这一章主要利用前文定义好的函数，绘制各种各样有趣的图案。

  <subsection|金刚石图案>

  将半径为R的圆周n等分，然后用直线将各个等分点两两相连。

  <subsection|圆环图案>

  将半径为<math|R<rsub|1>>的圆周n等分，然后以每个等分点为圆心，以<math|R<rsub|2>>为半径画n个圆。

  <subsection|肾形图案>

  <subsection|心脏形图案>

  <subsection|分形图案>

  <subsubsection|树>

  <subsubsection|Koch snowflake<\footnote>
    <href|https://en.wikipedia.org/wiki/Koch_snowflake>
  </footnote>>

  <subsubsection|Sierpinski carpet<\footnote>
    <href|https://en.wikipedia.org/wiki/Sierpinski_carpet>
  </footnote> and triangle<\footnote>
    <href|https://en.wikipedia.org/wiki/Sierpinski_triangle>
  </footnote>>

  <subsubsection|Mandelbrot set<\footnote>
    <href|https://en.wikipedia.org/wiki/Mandelbrot_set>
  </footnote>>

  <section|附录>

  <subsection|小贴士>

  <subsubsection|对本文所有的<scheme>表达式求值>

  当你刚刚用编辑器打开本文时，如果你跳到中间的某节去执行代码，很有可能会出错，因为当前的代码很有可能依赖上前文中已经出现过的函数和变量。而将前文中所有的代码都执行一遍这个操作实际上非常繁琐。启用<menu|工具|开发菜单>，将光标置于本文的某个<scheme>进程中，然后<menu|Developer|Export
  Sessions...>就可以导出所有的代码到单个文件<verbatim|code.scm>中。然后<menu|转到|无标题文件>，开启一个<scheme>进程并输入<scm|(load
  "/path/to/code.scm")>，回车之后，文中所有的代码就都被加载了。

  <subsubsection|逆向工程>

  <subsection|参考资料>

  <\itemize>
    <item>A TeXmacs graphics tutorial<\footnote>
      <href|http://texmacs.org/tmweb/documents/tutorials/TeXmacs-graphics-tutorial.pdf>
    </footnote>, by Henri Lesourd.

    <item>Turtle schemes<\footnote>
      <href|http://www.texmacs.org/tmweb/miguel/snippet-logo.en.html>
    </footnote>, by Ana Ca�izares Garc�a and Miguel de Benito Delgado

    <item>Fractal turtles<\footnote>
      <href|http://www.texmacs.org/tmweb/miguel/snippet-fractal-1.en.html>
    </footnote>, by Ana Ca�izares Garc�a and Miguel de Benito Delgado
  </itemize>

  \;
</body>

<\initial>
  <\collection>
    <associate|src-style|scheme>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|3|7>>
    <associate|auto-11|<tuple|3.1|7>>
    <associate|auto-12|<tuple|3.2|7>>
    <associate|auto-13|<tuple|3.3|7>>
    <associate|auto-14|<tuple|3.4|7>>
    <associate|auto-15|<tuple|3.5|7>>
    <associate|auto-16|<tuple|3.5.1|7>>
    <associate|auto-17|<tuple|3.5.2|7>>
    <associate|auto-18|<tuple|3.5.3|?>>
    <associate|auto-19|<tuple|3.5.4|?>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-20|<tuple|4|?>>
    <associate|auto-21|<tuple|4.1|?>>
    <associate|auto-22|<tuple|4.1.1|?>>
    <associate|auto-23|<tuple|4.1.1|?>>
    <associate|auto-24|<tuple|4.1.1|?>>
    <associate|auto-25|<tuple|4.1.1|?>>
    <associate|auto-26|<tuple|4.1.2|?>>
    <associate|auto-27|<tuple|4.2|?>>
    <associate|auto-3|<tuple|2|3>>
    <associate|auto-4|<tuple|2.1|3>>
    <associate|auto-5|<tuple|1|3>>
    <associate|auto-6|<tuple|2.2|4>>
    <associate|auto-7|<tuple|2|5>>
    <associate|auto-8|<tuple|2|5>>
    <associate|auto-9|<tuple|2.3|6>>
    <associate|footnote-1|<tuple|1|3>>
    <associate|footnote-10|<tuple|10|?>>
    <associate|footnote-11|<tuple|11|?>>
    <associate|footnote-12|<tuple|12|?>>
    <associate|footnote-13|<tuple|13|?>>
    <associate|footnote-14|<tuple|14|?>>
    <associate|footnote-15|<tuple|15|?>>
    <associate|footnote-16|<tuple|16|?>>
    <associate|footnote-17|<tuple|17|?>>
    <associate|footnote-18|<tuple|18|?>>
    <associate|footnote-19|<tuple|19|?>>
    <associate|footnote-2|<tuple|2|3>>
    <associate|footnote-20|<tuple|20|?>>
    <associate|footnote-21|<tuple|21|?>>
    <associate|footnote-3|<tuple|3|3>>
    <associate|footnote-4|<tuple|4|4>>
    <associate|footnote-5|<tuple|5|5>>
    <associate|footnote-6|<tuple|6|6>>
    <associate|footnote-7|<tuple|7|7>>
    <associate|footnote-8|<tuple|8|7>>
    <associate|footnote-9|<tuple|9|7>>
    <associate|footnr-1|<tuple|1|3>>
    <associate|footnr-14|<tuple|14|?>>
    <associate|footnr-15|<tuple|15|?>>
    <associate|footnr-18|<tuple|18|?>>
    <associate|footnr-19|<tuple|19|?>>
    <associate|footnr-2|<tuple|2|3>>
    <associate|footnr-20|<tuple|20|?>>
    <associate|footnr-21|<tuple|21|?>>
    <associate|footnr-3|<tuple|3|3>>
    <associate|footnr-4|<tuple|4|4>>
    <associate|footnr-5|<tuple|5|5>>
    <associate|footnr-6|<tuple|6|6>>
    <associate|footnr-9|<tuple|9|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|font-family|<quote|ss>|插入>|<with|font-family|<quote|ss>|会话>|<with|font-family|<quote|ss>|Scheme>>|<pageref|auto-3>>

      <tuple|<tuple|<with|font-family|<quote|ss>|帮助>|<with|font-family|<quote|ss>|用户手册>|<with|font-family|<quote|ss>|内置作图工具>>|<pageref|auto-8>>

      <tuple|<tuple|<with|font-family|<quote|ss>|工具>|<with|font-family|<quote|ss>|开发菜单>>|<pageref|auto-23>>

      <tuple|<tuple|<with|font-family|<quote|ss>|开发者>|<with|font-family|<quote|ss>|Export
      Sessions...>>|<pageref|auto-24>>

      <tuple|<tuple|<with|font-family|<quote|ss>|转到>|<with|font-family|<quote|ss>|无标题文件>>|<pageref|auto-25>>
    </associate>
    <\associate|table>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        \;
      </surround>|<pageref|auto-5>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||部分对象属性>|<pageref|auto-7>>
    </associate>
    <\associate|toc>
      1<space|2spc>简介 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      2<space|2spc>基本原理 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|2.1<space|2spc>原语
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>操纵样式属性
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>摆弄画布
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      3<space|2spc>画廊 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>

      <with|par-left|<quote|1tab>|3.1<space|2spc>金刚石图案
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>圆环图案
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>肾形图案
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>心脏形图案
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|3.5<space|2spc>分形图案
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|2tab>|3.5.1<space|2spc>树
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|2tab>|3.5.2<space|2spc>Koch
      snowflake<assign|footnote-nr|7><hidden-binding|<tuple>|7><\float|footnote|>
        <with|font-size|<quote|0.771>|<with|par-mode|<quote|justify>|par-left|<quote|0cm>|par-right|<quote|0cm>|font-shape|<quote|right>|dummy|<quote|1.0fn>|dummy|<quote|7.5fn>|<\surround|<locus|<id|%-52A10B5C8--528F31208>|<link|hyperlink|<id|%-52A10B5C8--528F31208>|<url|#footnr-7>>|7>.
        |<hidden-binding|<tuple|footnote-7>|7><specific|texmacs|<htab|0fn|first>>>
          <locus|<id|%-52A10B5C8--528F31298>|<link|hyperlink|<id|%-52A10B5C8--528F31298>|<url|https://en.wikipedia.org/wiki/Koch_snowflake>>|<with|font-family|<quote|tt>|language|<quote|verbatim>|https://en.wikipedia.org/wiki/Koch_snowflake>>
        </surround>>>
      </float><space|0spc><rsup|<with|font-shape|<quote|right>|<reference|footnote-7>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|2tab>|3.5.3<space|2spc>Sierpinski
      carpet<assign|footnote-nr|10><hidden-binding|<tuple>|10><\float|footnote|>
        <with|font-size|<quote|0.771>|<with|par-mode|<quote|justify>|par-left|<quote|0cm>|par-right|<quote|0cm>|font-shape|<quote|right>|dummy|<quote|1.0fn>|dummy|<quote|7.5fn>|<\surround|<locus|<id|%-52A10B5C8--528F31360>|<link|hyperlink|<id|%-52A10B5C8--528F31360>|<url|#footnr-10>>|10>.
        |<hidden-binding|<tuple|footnote-10>|10><specific|texmacs|<htab|0fn|first>>>
          <locus|<id|%-52A10B5C8--528F313F0>|<link|hyperlink|<id|%-52A10B5C8--528F313F0>|<url|https://en.wikipedia.org/wiki/Sierpinski_carpet>>|<with|font-family|<quote|tt>|language|<quote|verbatim>|https://en.wikipedia.org/wiki/Sierpinski_carpet>>
        </surround>>>
      </float><space|0spc><rsup|<with|font-shape|<quote|right>|<reference|footnote-10>>>
      and triangle<assign|footnote-nr|11><hidden-binding|<tuple>|11><\float|footnote|>
        <with|font-size|<quote|0.771>|<with|par-mode|<quote|justify>|par-left|<quote|0cm>|par-right|<quote|0cm>|font-shape|<quote|right>|dummy|<quote|1.0fn>|dummy|<quote|7.5fn>|<\surround|<locus|<id|%-52A10B5C8--528F60A28>|<link|hyperlink|<id|%-52A10B5C8--528F60A28>|<url|#footnr-11>>|11>.
        |<hidden-binding|<tuple|footnote-11>|11><specific|texmacs|<htab|0fn|first>>>
          <locus|<id|%-52A10B5C8--528F319F8>|<link|hyperlink|<id|%-52A10B5C8--528F319F8>|<url|https://en.wikipedia.org/wiki/Sierpinski_triangle>>|<with|font-family|<quote|tt>|language|<quote|verbatim>|https://en.wikipedia.org/wiki/Sierpinski_triangle>>
        </surround>>>
      </float><space|0spc><rsup|<with|font-shape|<quote|right>|<reference|footnote-11>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|2tab>|3.5.4<space|2spc>Mandelbrot
      set<assign|footnote-nr|16><hidden-binding|<tuple>|16><\float|footnote|>
        <with|font-size|<quote|0.771>|<with|par-mode|<quote|justify>|par-left|<quote|0cm>|par-right|<quote|0cm>|font-shape|<quote|right>|dummy|<quote|1.0fn>|dummy|<quote|7.5fn>|<\surround|<locus|<id|%-52A10B5C8--528F4F6E8>|<link|hyperlink|<id|%-52A10B5C8--528F4F6E8>|<url|#footnr-16>>|16>.
        |<hidden-binding|<tuple|footnote-16>|16><specific|texmacs|<htab|0fn|first>>>
          <locus|<id|%-52A10B5C8--528F4F7A0>|<link|hyperlink|<id|%-52A10B5C8--528F4F7A0>|<url|https://en.wikipedia.org/wiki/Mandelbrot_set>>|<with|font-family|<quote|tt>|language|<quote|verbatim>|https://en.wikipedia.org/wiki/Mandelbrot_set>>
        </surround>>>
      </float><space|0spc><rsup|<with|font-shape|<quote|right>|<reference|footnote-16>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      4<space|2spc>附录 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>

      <with|par-left|<quote|1tab>|4.1<space|2spc>小贴士
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|2tab>|4.1.1<space|2spc>对本文所有的<with|font-shape|<quote|small-caps>|Scheme>表达式求值
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|2tab>|4.1.2<space|2spc>逆向工程
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>参考资料
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>
    </associate>
  </collection>
</auxiliary>