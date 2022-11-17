<TeXmacs|2.1.3>

<style|<tuple|generic|chinese>>

<\body>
  <doc-data|<doc-title|Git新用户常用配置>|<doc-author|<author-data|<author-name|沈浪熊猫儿>>>>

  <\table-of-contents|toc>
    <with|par-left|1tab|配置常用别名，可以减少手指的磨损
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1>>

    <with|par-left|1tab|如何正常显示中文
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|配置用户名和邮箱
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>
  </table-of-contents>

  本文在macOS 12.2.1中撰写。

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

  <subsection*|配置常用别名，可以减少手指的磨损>

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

  <subsection*|如何正常显示中文>

  默认情况下，<shell|git status>无法显示中文（以正在撰写中的本文为例）：

  <\session|shell|default>
    <\unfolded-io|Shell] >
      cd ~/planet && git status # 仅用于展示效果，不影响Git配置
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

  通过配置可以解决这个问题：

  <\session|shell|default>
    <\input|Shell] >
      git config --global core.quotepath false
    </input>

    <\unfolded-io|Shell] >
      cd ~/planet && git status # 仅用于展示效果，不影响Git配置
    <|unfolded-io>
      On branch da/git_intro

      Untracked files:

      \ \ (use "git add \<less\>file\<gtr\>..." to include in what will be
      committed)

      \ \ \ \ \ \ \ \ 沈浪熊猫儿/Git入门.tm

      \;

      nothing added to commit but untracked files present (use "git add" to
      track)
    </unfolded-io>

    <\input|Shell] >
      \;
    </input>
  </session>

  <subsection*|配置用户名和邮箱>

  <\warning*>
    请使用你自己的用户名和邮箱
  </warning*>

  <\session|shell|default>
    <\input|Shell] >
      git config --global user.name "沈浪熊猫儿"
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

      \ \ \ \ \ \ \ \ name = 沈浪熊猫儿

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
      <with|par-left|<quote|1tab>|配置常用别名，可以减少手指的磨损
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|1tab>|如何正常显示中文
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|配置用户名和邮箱
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>