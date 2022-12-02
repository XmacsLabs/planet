<TeXmacs|2.1.2>

<style|generic>

<\body>
  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (tree-ref t 1)
    <|unfolded-io>
      <text|<\equation*>
        x+y+<frac|1|2>+<sqrt|y+\<alpha\>>
      </equation*>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (tree-set t 3 "")
    <|unfolded-io>
      <text|>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (tree-ref (tree-ref (tree-ref t 1) 0) 0)
    <|unfolded-io>
      <text|x+y+<frac|1|2>+<sqrt|y+\<alpha\>>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (tree-ref (tree-ref (tree-ref (tree-ref t 1) 0) 0) 1)
    <|unfolded-io>
      <text|<frac|1|2>>
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (tree-set (tree-ref (tree-ref (tree-ref (tree-ref t 1) 0) 0) 1) 1
      '(sqrt "y"))
    <|unfolded-io>
      <text|<sqrt|y>>
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>