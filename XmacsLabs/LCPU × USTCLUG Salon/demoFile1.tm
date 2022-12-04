<TeXmacs|2.1.2>

<style|generic>

<\body>
  This is the first line.

  <\equation*>
    x+y+<frac|1|2>+<sqrt|y+\<alpha\>>
  </equation*>

  This is the line after the formula.

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (use-modules (utils library tree))
    <|unfolded-io>
      (#1=(inlet 'primitive-symbol? symbol? 'boot-start 724
      'remote-client-list () 'original-display #_display 'original-write
      #_write 'write write 'current-module current-module 'provide-public
      provide-public 'module-available? module-available? 'list-\<gtr\>module
      list-\<gtr\>module 'module-provide module-provide 'resolve-module
      resolve-module 're-export re-export 'inherit-modules inherit-modules
      'texmacs-module texmacs-module 'quit-TeXmacs-scheme quit-TeXmacs-scheme
      'on-entry on-entry 'on-exit on-exit 'curried-define curried-define '1-
      1- 'delq delq 'seed-\<gtr\>random-state seed-\<gtr\>random-state
      'assoc-set! assoc-set! 'force-output force-output 'string-null?
      string-null? 'append! append! 'string-split string-split
      'make-record-type make-record-type 'record-constructor
      record-constructor 'record-accessor record-accessor 'record-predicate
      record-predicate 'make-promise make-promise ...))
    </unfolded-io>

    <\unfolded-io|Scheme] >
      (tm-define t (buffer-tree))
    <|unfolded-io>
      ((texmacs-user))
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