<TeXmacs|2.1.3>

<style|<tuple|generic|chinese>>

<\body>
  <doc-data|<doc-title|如何在Debian中切换默认Python版本>>

  首先查看当前系统中默认的Python版本：

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

  然后查看当前系统可用的Python有哪些：

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

  我们可以把以上的python版本都放入python命令的候补列表：

  <\shell-code>
    sudo update-alternatives --install /usr/bin/python python
    /usr/bin/python3.8 2

    sudo update-alternatives --install /usr/bin/python python
    /usr/bin/python3.9 3

    sudo update-alternatives --install /usr/bin/python python
    /usr/bin/python3.10 4
  </shell-code>

  现在我们可以列出这个候补列表

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

  现在默认的Python版本已经切换到Python
  3.10.5，说明上面最后的数字越大，优先级越高。

  我们也可以使用

  <\shell-code>
    <code|update-alternatives --config python>
  </shell-code>

  在终端中以交互模式选择我们的默认Python版本。
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>