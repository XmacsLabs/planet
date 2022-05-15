<TeXmacs|2.1.1>

<style|<tuple|article|chinese|old-dots|old-lengths>>

<\body>
  <doc-data|<doc-title|Bash\<#811A\>\<#672C\>\<#57FA\>\<#7840\>>|<doc-author|<author-data|<author-name|\<#6C88\>\<#8FBE\>>>>>

  <section|\<#8D4B\>\<#503C\>\<#4E0E\>\<#66FF\>\<#6362\>>

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

  <section|\<#53D8\>\<#91CF\>>

  <\description>
    <item*|\<#5185\>\<#7F6E\>\<#53D8\>\<#91CF\>>\<#6BD4\>\<#5982\><verbatim|$HOME>\<#6216\>\<#8005\><verbatim|$PWD>\<#FF0C\>\<#66F4\>\<#591A\>\<#4F8B\>\<#5B50\>\<#53EF\>\<#4EE5\>\<#53C2\>\<#8003\>
    <shell|man 7 environ>

    <item*|\<#4F4D\>\<#7F6E\>\<#53C2\>\<#6570\>><verbatim|$0>\<#662F\>basename\<#FF0C\><verbatim|$@>\<#662F\>basename\<#4E4B\>\<#540E\>\<#7684\>\<#6240\>\<#6709\>\<#53C2\>\<#6570\>

    <tree|<verbatim|$@>|<verbatim|$1>|<verbatim|$2>|<verbatim|$3>|<verbatim|$4>|<text-dots>>

    <item*|\<#7279\>\<#6B8A\>\<#53C2\>\<#6570\>><verbatim|$?>\<#662F\>\<#547D\>\<#4EE4\>\<#3001\>\<#51FD\>\<#6570\>\<#6216\>\<#8005\>\<#811A\>\<#672C\>\<#672C\>\<#8EAB\>\<#7684\>\<#8FD4\>\<#56DE\>\<#72B6\>\<#6001\>\<#FF0C\>\<#4E00\>\<#822C\>\<#7528\>0\<#8868\>\<#793A\>\<#4E00\>\<#5207\>\<#6B63\>\<#5E38\>
  </description>

  <section|\<#5206\>\<#652F\>>

  <\shell-code>
    if [ condition1 ];then

    \ \ \ \ command_series1

    elif [ condition2 ];then

    \ \ \ \ command_series2

    else

    \ \ \ \ default_command_series3

    fi
  </shell-code>

  <section|\<#5FAA\>\<#73AF\>>

  <\description>
    <item*|\<#5FAA\>\<#73AF\>\<#FF1A\>\<#4E0E\>Python\<#8BED\>\<#6CD5\>\<#76F8\>\<#8FD1\>>

    <\shell-code>
      for arg in `seq 10`

      do

      \ \ \ \ echo $arg

      done
    </shell-code>

    <item*|\<#5FAA\>\<#73AF\>\<#FF1A\>\<#4E0E\>C\<#8BED\>\<#8A00\>for\<#8BED\>\<#6CD5\>\<#76F8\>\<#8FD1\>>

    <\shell-code>
      for ((a=1; a\<less\>=LIMIT; a++))

      do

      \ \ \ \ echo -n "$a "

      done
    </shell-code>

    <item*|\<#5FAA\>\<#73AF\>: \<#4E0E\>C\<#8BED\>\<#8A00\>while\<#8BED\>\<#6CD5\>\<#76F8\>\<#8FD1\>>

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
    \<#8BFB\>\<#53D6\>\<#7136\>\<#540E\>\<#8986\>\<#76D6\>

    command \<gtr\>\<gtr\> output-file \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ #
    \<#8FFD\>\<#52A0\>
  </shell-code>

  <section|\<#51FD\>\<#6570\>>

  <\shell-code>
    # \<#5982\>\<#4F55\>\<#5B9A\>\<#4E49\>\<#51FD\>\<#6570\>1

    function fun_name(){

    \ \ \ \ command...

    }

    # \<#5982\>\<#4F55\>\<#5B9A\>\<#4E49\>\<#51FD\>\<#6570\>2

    fun_name(){ # arg1 arg2 arg3

    \ \ \ \ command...

    }

    \;

    # \<#51FD\>\<#6570\>\<#7684\>\<#5E94\>\<#7528\>

    fun_name $arg1 $arg2 $arg3

    \;

    \;

    # \<#5F15\>\<#7528\>\<#89E3\>\<#9664\>

    fun_name(){ # arg1

    \ \ \ \ eval "$1=hello"

    }

    fun_name arg1

    \;

    # \<#4E0A\>\<#8FF0\>\<#4EE3\>\<#7801\>\<#7247\>\<#6BB5\>\<#7B49\>\<#4EF7\>\<#4E8E\>\ 

    arg1=hello
  </shell-code>

  <section|\<#8C03\>\<#8BD5\>>

  <\itemize>
    <item>\<#7528\>\<#597D\>sh\<#547D\>\<#4EE4\>

    <\description>
      <item*|sh -n script>\<#68C0\>\<#67E5\>\<#811A\>\<#672C\>\<#8BED\>\<#6CD5\>

      <item*|sh -v script>\<#5728\>\<#6267\>\<#884C\>\<#524D\>\<#5C06\>\<#6240\>\<#6709\>\<#547D\>\<#4EE4\>\<#6253\>\<#5370\>\<#51FA\>\<#6765\>

      <item*|sh -x script>\<#5728\>\<#6267\>\<#884C\>\<#524D\>\<#5C06\>\<#6240\>\<#6709\>\<#547D\>\<#4EE4\>\<#5230\>\<#6253\>\<#5370\>\<#5230\>\<#9519\>\<#8BEF\>\<#8F93\>\<#51FA\>\<#FF0C\>\<#5E76\>\<#5728\>\<#547D\>\<#4EE4\>\<#524D\>\<#9762\>\<#52A0\>\<#4E0A\><shell|+>\<#524D\>\<#7F00\>
    </description>

    <item>\<#5229\>\<#7528\><shell|echo>

    <item>\<#5229\>\<#7528\><shell|trap>
  </itemize>

  <section|\<#5E76\>\<#884C\>>

  \<#5229\>\<#7528\>GNU Parallel<\footnote>
    <slink|https://www.gnu.org/software/parallel/>
  </footnote>

  <section|\<#4EE3\>\<#7801\>\<#98CE\>\<#683C\>>

  \<#5229\>\<#7528\>ShellCheck<\footnote>
    <slink|https://github.com/koalaman/shellcheck>
  </footnote>
</body>

<initial|<\collection>
</collection>>

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
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>\<#8D4B\>\<#503C\>\<#4E0E\>\<#66FF\>\<#6362\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>\<#53D8\>\<#91CF\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>\<#5206\>\<#652F\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>\<#5FAA\>\<#73AF\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>IO>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>\<#51FD\>\<#6570\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>\<#8C03\>\<#8BD5\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>\<#5E76\>\<#884C\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>\<#4EE3\>\<#7801\>\<#98CE\>\<#683C\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>