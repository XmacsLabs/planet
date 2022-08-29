<TeXmacs|2.1.3>

<style|<tuple|article|chinese|old-dots|old-lengths>>

<\body>
  <doc-data|<doc-title|Bash脚本基础>|<doc-author|<author-data|<author-name|沈达>>>>

  <section|赋值与替换>

  <\session|shell|default>
    <\input|Shell] >
      a=375
    </input>

    <\input|Shell] >
      hello=$a
    </input>

    <\folded-io|Shell] >
      echo $hello
    <|folded-io>
      375
    </folded-io>

    <\input|Shell] >
      \;
    </input>
  </session>

  <section|变量>

  <\description>
    <item*|内置变量>比如<verbatim|$HOME>或者<verbatim|$PWD>，更多例子可以参考
    <shell|man 7 environ>

    <item*|位置参数><verbatim|$0>是basename，<verbatim|$@>是basename之后的所有参数

    <tree|<verbatim|$@>|<verbatim|$1>|<verbatim|$2>|<verbatim|$3>|<verbatim|$4>|<text-dots>>

    <item*|特殊参数><verbatim|$?>是命令、函数或者脚本本身的返回状态，一般用0表示一切正常
  </description>

  <section|分支>

  <\shell-code>
    if [ condition1 ];then

    \ \ \ \ command_series1

    elif [ condition2 ];then

    \ \ \ \ command_series2

    else

    \ \ \ \ default_command_series3

    fi
  </shell-code>

  <section|循环>

  <\description>
    <item*|循环：与Python语法相近>

    <\shell-code>
      for arg in `seq 10`

      do

      \ \ \ \ echo $arg

      done
    </shell-code>

    <item*|循环：与C语言for语法相近>

    <\shell-code>
      for ((a=1; a\<less\>=LIMIT; a++))

      do

      \ \ \ \ echo -n "$a "

      done
    </shell-code>

    <item*|循环: 与C语言while语法相近>

    <\shell-code>
      a=1

      while ((a\<less\>=LIMIT))

      do

      \ \ \ \ echo -n "$a "

      \ \ \ \ ((a += 1))

      done
    </shell-code>
  </description>

  <section|IO>

  <\shell-code>
    command \<less\> input-file \<gtr\> output-file \ \ \ \ #
    读取然后覆盖

    command \<gtr\>\<gtr\> output-file \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ #
    追加
  </shell-code>

  <section|函数>

  <\shell-code>
    # 如何定义函数1

    function fun_name(){

    \ \ \ \ command...

    }

    # 如何定义函数2

    fun_name(){ # arg1 arg2 arg3

    \ \ \ \ command...

    }

    \;

    # 函数的应用

    fun_name $arg1 $arg2 $arg3

    \;

    \;

    # 引用解除

    fun_name(){ # arg1

    \ \ \ \ eval "$1=hello"

    }

    fun_name arg1

    \;

    # 上述代码片段等价于\ 

    arg1=hello
  </shell-code>

  <section|调试>

  <\itemize>
    <item>用好sh命令

    <\description>
      <item*|sh -n script>检查脚本语法

      <item*|sh -v script>在执行前将所有命令打印出来

      <item*|sh -x script>在执行前将所有命令到打印到错误输出，并在命令前面加上<shell|+>前缀
    </description>

    <item>利用<shell|echo>

    <item>利用<shell|trap>
  </itemize>

  <section|并行>

  利用GNU Parallel<\footnote>
    <slink|https://www.gnu.org/software/parallel/>
  </footnote>

  <section|代码风格>

  利用ShellCheck<\footnote>
    <slink|https://github.com/koalaman/shellcheck>
  </footnote>
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
    <associate|auto-4|<tuple|4|?>>
    <associate|auto-5|<tuple|5|?>>
    <associate|auto-6|<tuple|6|?>>
    <associate|auto-7|<tuple|7|?>>
    <associate|auto-8|<tuple|8|?>>
    <associate|auto-9|<tuple|9|?>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnr-1|<tuple|1|?>>
    <associate|footnr-2|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>赋值与替换>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>变量>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>分支>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>循环>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>IO>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>函数>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>调试>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>并行>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>代码风格>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>