<TeXmacs|2.1.2>

<style|<tuple|generic|chinese>>

<\body>
  <doc-data|<doc-title|Git\<#65B0\>\<#7528\>\<#6237\>\<#5E38\>\<#7528\>\<#914D\>\<#7F6E\>>|<doc-author|<author-data|<author-name|\<#6C88\>\<#6D6A\>\<#718A\>\<#732B\>\<#513F\>>>>>

  <\table-of-contents|toc>
    <with|par-left|1tab|\<#914D\>\<#7F6E\>\<#5E38\>\<#7528\>\<#522B\>\<#540D\>\<#FF0C\>\<#53EF\>\<#4EE5\>\<#51CF\>\<#5C11\>\<#624B\>\<#6307\>\<#7684\>\<#78E8\>\<#635F\>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1>>

    <with|par-left|1tab|\<#5982\>\<#4F55\>\<#6B63\>\<#5E38\>\<#663E\>\<#793A\>\<#4E2D\>\<#6587\>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|\<#914D\>\<#7F6E\>\<#7528\>\<#6237\>\<#540D\>\<#548C\>\<#90AE\>\<#7BB1\>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>
  </table-of-contents>

  \<#672C\>\<#6587\>\<#5728\>macOS 12.2.1\<#4E2D\>\<#64B0\>\<#5199\>\<#3002\>

  <\session|shell|default>
    <\unfolded-io|Shell] >
      git --version
    <|unfolded-io>
      git version 2.30.1 (Apple Git-130)
    </unfolded-io>

    <\input|Shell] >
      \;
    </input>
  </session>

  <subsection*|\<#914D\>\<#7F6E\>\<#5E38\>\<#7528\>\<#522B\>\<#540D\>\<#FF0C\>\<#53EF\>\<#4EE5\>\<#51CF\>\<#5C11\>\<#624B\>\<#6307\>\<#7684\>\<#78E8\>\<#635F\>>

  <\session|shell|default>
    <\input|Shell] >
      git config --global alias.co checkout
    </input>

    <\input|Shell] >
      git config --global alias.ci commit
    </input>

    <\input|Shell] >
      git config --global alias.br branch
    </input>

    <\input|Shell] >
      git config --global alias.st status
    </input>

    <\input|Shell] >
      \;
    </input>
  </session>

  <subsection*|\<#5982\>\<#4F55\>\<#6B63\>\<#5E38\>\<#663E\>\<#793A\>\<#4E2D\>\<#6587\>>

  \<#9ED8\>\<#8BA4\>\<#60C5\>\<#51B5\>\<#4E0B\>\<#FF0C\><shell|git
  status>\<#65E0\>\<#6CD5\>\<#663E\>\<#793A\>\<#4E2D\>\<#6587\>\<#FF08\>\<#4EE5\>\<#6B63\>\<#5728\>\<#64B0\>\<#5199\>\<#4E2D\>\<#7684\>\<#672C\>\<#6587\>\<#4E3A\>\<#4F8B\>\<#FF09\>\<#FF1A\>

  <\session|shell|default>
    <\unfolded-io|Shell] >
      cd ~/planet && git status # \<#4EC5\>\<#7528\>\<#4E8E\>\<#5C55\>\<#793A\>\<#6548\>\<#679C\>\<#FF0C\>\<#4E0D\>\<#5F71\>\<#54CD\>Git\<#914D\>\<#7F6E\>
    <|unfolded-io>
      On branch da/git_intro

      Untracked files:

      \ \ (use "git add \<less\>file\<gtr\>..." to include in what will be
      committed)

      \ \ \ \ \ \ \ \ [31m"\\346\\262\\210\\346\\265\\252\\347\\206\\212\\347\\214\\253\\345\\204\\277/Git\\345\\205\\245\\351\\227\\250.tm"[m

      \;

      nothing added to commit but untracked files present (use "git add" to
      track)
    </unfolded-io>

    <\input|Shell] >
      \;
    </input>
  </session>

  \<#901A\>\<#8FC7\>\<#914D\>\<#7F6E\>\<#53EF\>\<#4EE5\>\<#89E3\>\<#51B3\>\<#8FD9\>\<#4E2A\>\<#95EE\>\<#9898\>\<#FF1A\>

  <\session|shell|default>
    <\input|Shell] >
      git config --global core.quotepath false
    </input>

    <\unfolded-io|Shell] >
      cd ~/planet && git status # \<#4EC5\>\<#7528\>\<#4E8E\>\<#5C55\>\<#793A\>\<#6548\>\<#679C\>\<#FF0C\>\<#4E0D\>\<#5F71\>\<#54CD\>Git\<#914D\>\<#7F6E\>
    <|unfolded-io>
      On branch da/git_intro

      Untracked files:

      \ \ (use "git add \<less\>file\<gtr\>..." to include in what will be
      committed)

      \ \ \ \ \ \ \ \ \<#6C88\>\<#6D6A\>\<#718A\>\<#732B\>\<#513F\>/Git\<#5165\>\<#95E8\>.tm

      \;

      nothing added to commit but untracked files present (use "git add" to
      track)
    </unfolded-io>

    <\input|Shell] >
      \;
    </input>
  </session>

  <subsection*|\<#914D\>\<#7F6E\>\<#7528\>\<#6237\>\<#540D\>\<#548C\>\<#90AE\>\<#7BB1\>>

  <\warning*>
    \<#8BF7\>\<#4F7F\>\<#7528\>\<#4F60\>\<#81EA\>\<#5DF1\>\<#7684\>\<#7528\>\<#6237\>\<#540D\>\<#548C\>\<#90AE\>\<#7BB1\>
  </warning*>

  <\session|shell|default>
    <\input|Shell] >
      git config --global user.name "\<#6C88\>\<#6D6A\>\<#718A\>\<#732B\>\<#513F\>"
    </input>

    <\input|Shell] >
      git config --global user.email "shenda@ustc.edu"
    </input>

    <\unfolded-io|Shell] >
      cat ~/.gitconfig
    <|unfolded-io>
      [alias]

      \ \ \ \ \ \ \ \ co = checkout

      \ \ \ \ \ \ \ \ ci = commit

      \ \ \ \ \ \ \ \ br = branch

      [core]

      \ \ \ \ \ \ \ \ quotepath = false

      [user]

      \ \ \ \ \ \ \ \ name = \<#6C88\>\<#6D6A\>\<#718A\>\<#732B\>\<#513F\>

      \ \ \ \ \ \ \ \ email = shenda@ustc.edu
    </unfolded-io>

    <\input|Shell] >
      \;
    </input>
  </session>
</body>

<\initial>
  <\collection>
    <associate|page-medium|papyrus>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|?|1>>
    <associate|auto-3|<tuple|?|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|1tab>|\<#914D\>\<#7F6E\>\<#5E38\>\<#7528\>\<#522B\>\<#540D\>\<#FF0C\>\<#53EF\>\<#4EE5\>\<#51CF\>\<#5C11\>\<#624B\>\<#6307\>\<#7684\>\<#78E8\>\<#635F\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|1tab>|\<#5982\>\<#4F55\>\<#6B63\>\<#5E38\>\<#663E\>\<#793A\>\<#4E2D\>\<#6587\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|\<#914D\>\<#7F6E\>\<#7528\>\<#6237\>\<#540D\>\<#548C\>\<#90AE\>\<#7BB1\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>