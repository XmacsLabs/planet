<TeXmacs|2.1.2>

<style|<tuple|generic|chinese>>

<\body>
  <doc-data|<doc-title|\<#5982\>\<#4F55\>\<#5728\>Debian\<#4E2D\>\<#5207\>\<#6362\>\<#9ED8\>\<#8BA4\>Python\<#7248\>\<#672C\>>>

  \<#9996\>\<#5148\>\<#67E5\>\<#770B\>\<#5F53\>\<#524D\>\<#7CFB\>\<#7EDF\>\<#4E2D\>\<#9ED8\>\<#8BA4\>\<#7684\>Python\<#7248\>\<#672C\>\<#FF1A\>

  <\session|shell|default>
    <\output>
      Shell session inside TeXmacs pid = 1042144
    </output>

    <\unfolded-io|Shell] >
      python --version
    <|unfolded-io>
      Python 3.7.7
    </unfolded-io>

    <\input|Shell] >
      \;
    </input>
  </session>

  \<#7136\>\<#540E\>\<#67E5\>\<#770B\>\<#5F53\>\<#524D\>\<#7CFB\>\<#7EDF\>\<#53EF\>\<#7528\>\<#7684\>Python\<#6709\>\<#54EA\>\<#4E9B\>\<#FF1A\>

  <\session|shell|default>
    <\unfolded-io|Shell] >
      ls /usr/bin/python[0-9].*[0-9]
    <|unfolded-io>
      /usr/bin/python3.10 \ /usr/bin/python3.7 \ /usr/bin/python3.8
      \ /usr/bin/python3.9
    </unfolded-io>

    <\input|Shell] >
      \;
    </input>
  </session>

  \<#6211\>\<#4EEC\>\<#53EF\>\<#4EE5\>\<#628A\>\<#4EE5\>\<#4E0A\>\<#7684\>python\<#7248\>\<#672C\>\<#90FD\>\<#653E\>\<#5165\>python\<#547D\>\<#4EE4\>\<#7684\>\<#5019\>\<#8865\>\<#5217\>\<#8868\>\<#FF1A\>

  <\shell-code>
    sudo update-alternatives --install /usr/bin/python python
    /usr/bin/python3.8 2

    sudo update-alternatives --install /usr/bin/python python
    /usr/bin/python3.9 3

    sudo update-alternatives --install /usr/bin/python python
    /usr/bin/python3.10 4
  </shell-code>

  \<#73B0\>\<#5728\>\<#6211\>\<#4EEC\>\<#53EF\>\<#4EE5\>\<#5217\>\<#51FA\>\<#8FD9\>\<#4E2A\>\<#5019\>\<#8865\>\<#5217\>\<#8868\>

  <\session|shell|default>
    <\unfolded-io|Shell] >
      update-alternatives --list python
    <|unfolded-io>
      /usr/bin/python3.10

      /usr/bin/python3.7

      /usr/bin/python3.8

      /usr/bin/python3.9
    </unfolded-io>

    <\unfolded-io|Shell] >
      python --version
    <|unfolded-io>
      Python 3.10.5
    </unfolded-io>

    <\input|Shell] >
      \;
    </input>
  </session>

  \<#73B0\>\<#5728\>\<#9ED8\>\<#8BA4\>\<#7684\>Python\<#7248\>\<#672C\>\<#5DF2\>\<#7ECF\>\<#5207\>\<#6362\>\<#5230\>Python
  3.10.5\<#FF0C\>\<#8BF4\>\<#660E\>\<#4E0A\>\<#9762\>\<#6700\>\<#540E\>\<#7684\>\<#6570\>\<#5B57\>\<#8D8A\>\<#5927\>\<#FF0C\>\<#4F18\>\<#5148\>\<#7EA7\>\<#8D8A\>\<#9AD8\>\<#3002\>

  \<#6211\>\<#4EEC\>\<#4E5F\>\<#53EF\>\<#4EE5\>\<#4F7F\>\<#7528\>

  <\shell-code>
    <code|update-alternatives --config python>
  </shell-code>

  \<#5728\>\<#7EC8\>\<#7AEF\>\<#4E2D\>\<#4EE5\>\<#4EA4\>\<#4E92\>\<#6A21\>\<#5F0F\>\<#9009\>\<#62E9\>\<#6211\>\<#4EEC\>\<#7684\>\<#9ED8\>\<#8BA4\>Python\<#7248\>\<#672C\>\<#3002\>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>