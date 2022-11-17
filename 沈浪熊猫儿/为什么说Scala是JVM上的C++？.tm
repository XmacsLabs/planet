<TeXmacs|2.1.3>

<style|<tuple|generic|chinese>>

<\body>
  <doc-data|<doc-title|为什么说Scala是JVM上的C++?>|<doc-author|<author-data|<author-name|沈浪熊猫儿>>>>

  <section*|问题原文>

  <\quote-env>
    如题。以及请大家分析下未来静态语言的主流，C++、java、scala三门语言未来的发展方向
  </quote-env>

  <section*|我的回答>

  <subsection*|为什么说Scala是JVM上的C++?>

  不知道是谁说Scala是JVM上的C++。这种没有具体展开的话，大概和网上盛传的各种马云语录，比如

  <\quote-env>
    刚毕业的年轻人应该在一家公司待满五年
  </quote-env>

  一样没有实际的意义。

  把Scala和C++放在一起对比的朋友，大概说的是特性多、杂这个特点。最初学习Scala的时候，大致把知乎上关于Scala的问答都浏览了一遍。目前印象最深的还是这个问题中
  @阅千人而惜知己 的观点。

  后来翻译完《Scala实用指南》在写序的时候，我把千人的观点浓缩成了一句话：

  <\quote-env>
    Scala的美在于精巧的内核，Scala的丑陋在于复杂的实现。
  </quote-env>

  至于C++，我觉得它的复杂程度更甚于Scala。我目前在维护的C++项目GNU
  TeXmacs，C++的代码行数在20万这个量级，项目的作者是一个法国数学家(Joris
  van der Hoeven)，从90年代至今，至少已经有20年的历史了。这个项目对于C++的态度就是非常审慎的，没有用C++的标准库（或许90年代的时候C++标准库的口碑很差），像hashmap、list、string这些容器都是自己实现的，内存管理也是自己实现，大家有兴趣可以点击文末的链接，看一下GNU
  TeXmacs的豆瓣小组组长做的一些源代码分析。个人对这些自己实现的容器是不信任的，所以最近在逐行Review，添加单元测试，并做性能测试。

  前段时间咨询Joris，主要是想用一些handy的C++新特性（已经在单元测试和Benchmark代码中使用），比如auto，Joris和其他的维护者是反对的。其实我也是反对使用绝大部分C++的新特性，比如函数式编程的支持，从语法上就比Scala差了很多，另外，在具体的实现上，我也是不信任C++编译器的。对于一个比较大型的代码仓库，其实很容易就遇到一些编译器的BUG。为了避免把时间浪费在一些无关紧要的细节上，聪明的工程师应该懂得取舍。

  <subsection*|C++、Java、Scala三门语言未来的发展动向>

  语言也是一个工程。一门语言的未来其实要看这门语言的工程项目的发展，和整体生态的发展。

  <strong|从项目管理的角度>，Scala未来的发展不可限量。Scala项目的一切都已经在Github上了，对于开发者来说，在Github上给Scala标准库和编译器提交代码实际上变成了一件门槛比较低的事情。
  @杨博 很早之前就开始给Scala项目做贡献。我是最近在给Spark做Scala
  2.12支持的时候，顺手给Scala项目修了一个bug。最近，在CSUG微信群里面，我鼓吹一个观点：给Scala项目做贡献实际上非常简单的。然后，
  @Uncle Kevin 和 @何品 也开始给Scala提PR。虽然我们目前做的贡献都是非常Trivial的，但是不可否认，给Scala项目做贡献，比给C++和Java做贡献要方便简单很多。这些老派的编程语言，在源代码管理和开发者社区建设这点上做得这么差劲，其发展自然没有新兴的语言快。（注：我和Uncle
  Kevin应该都是2016年之后才正式开始学习Scala的）

  <strong|至于生态>，Java和Scala是绑定在一块的。C++我就呵呵哒了。在阿里云实习的时候，看到工程师们为了追求极限的性能和极少资源消耗，日志的收集竟然也是用C++写的（兼容Linux和Windows），线上的环境比较复杂，这个日志收集程序把所有依赖的代码都放到了同一个工程中管理，包含Boost和Kafka的C
  Binding等，我直接导入代码，KDevelop就崩溃了。可能对于那位骨灰级的C++玩家，这很简单，而且非常方便，看到Boost里面有bug就顺手修了。但是从代码复用的角度，JVM生态是完胜的。

  最后，GraalVM已经横空出世很久了，polyglot不再是空中楼阁，可以畅想，十年之后软件开发可以多么愉悦。而ScalaJS、Scala
  Native到那时候想必已经打磨得差不多了。未来，Scala程序员完全可以全栈，Scala实现的、通用的、抽象的Library完全可以跨平台使用。然而，未来的程序员，或许仍然无法逃离Java
  API、C POSIX API和JavaScript的魔咒。

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|papyrus>
    <associate|prog-scripts|python>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?|../../../../.Xmacs/texts/scratch/no_name_21.tm>>
    <associate|auto-2|<tuple|?|?|../../../../.Xmacs/texts/scratch/no_name_21.tm>>
    <associate|auto-3|<tuple|?|?|../../../../.Xmacs/texts/scratch/no_name_21.tm>>
    <associate|auto-4|<tuple|?|?|../../../../.Xmacs/texts/scratch/no_name_21.tm>>
    <associate|auto-7|<tuple|1|?|../../../../.Xmacs/texts/scratch/no_name_21.tm>>
  </collection>
</references>