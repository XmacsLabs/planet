<TeXmacs|2.1.2>

<style|<tuple|generic|doc|british|preview-ref|smart-ref>>

<\body>
  <doc-data|<doc-title|Text mode in GNU <TeXmacs>>|<doc-author|<author-data|<author-name|<person|Darcy
  Shen>>>>>

  <\note*>
    Enable <menu|Tool|Keyboard|Show key presses> first!
  </note*>

  <section|Focus Toolbar>

  <\subsection>
    <icon|tm_portrait_1col.svg>
  </subsection>

  <\itemize>
    <item>Paper

    <item>Paperus

    <item>Book (like reading a real Book)

    <item>Panorama
  </itemize>

  <subsection|Style>

  <\itemize>
    <item>Generic

    <item>Book (Interactive_SICP.tm)

    <item>Seminar

    <item>Beamer

    <item>Source<label|source_style>
  </itemize>

  <subsection|Style packages>

  <\itemize>
    <item>doc

    <item>comment

    <item>language
  </itemize>

  <\question>
    How to view the source code of the style package?
  </question>

  <\subsection>
    <icon|tm_focus_help.svg>
  </subsection>

  <section|<menu|Insert> menu>

  <subsection|Presentation Tag>

  <underline|Underline> <overline|Overline> <strike-through|Strike through>
  <rsub|subscript>body<rsup|supscript>

  <subsection|Content Tag (Semantics Tag)>

  See <hlink|Source Style|#source_style>.

  <strong|Strong> <em|Empasize> <dfn|Definition> <samp|Sample>

  <name|Name> <person|Person>

  <deleted|Deleted> <fill-out|Fill out>

  <\question>
    What is semantics?
  </question>

  <\itemize>
    <item>x<rsup|2>

    <item><inactive|<math-square|x>>
  </itemize>

  <subsection|Size tag>

  <really-tiny|Really tiny> <tiny|Tiny> <very-small|Very small> <small|Small>
  Normal <larger|Large> <very-large|Very Large> <huge|Huge>

  <\question>
    How to highlight the text?
  </question>

  <\answer>
    <key|\\ m a r k e d>
  </answer>

  <section|<menu|Format> menu>

  <subsection|Color>

  <\question>
    How to set the background color?
  </question>

  <\answer>
    <key|\\ t a b u l a r>
  </answer>

  <subsection|Paragraph>

  <section|<menu|Document> menu>

  <subsection|Informative flags>

  <subsection|Part \<rightarrow\> Preamble>

  <subsection|Page>

  <\question>
    How to make page-number right-aligned?
  </question>
</body>

<\initial>
  <\collection>
    <associate|info-flag|detailed>
    <associate|page-medium|papyrus>
    <associate|page-orientation|landscape>
    <associate|par-columns|1>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|2>>
    <associate|auto-10|<tuple|2|3>>
    <associate|auto-11|<tuple|2.1|3>>
    <associate|auto-12|<tuple|2.2|?>>
    <associate|auto-13|<tuple|2.3|?>>
    <associate|auto-14|<tuple|3|3>>
    <associate|auto-15|<tuple|3|3>>
    <associate|auto-16|<tuple|3|3>>
    <associate|auto-17|<tuple|3|3>>
    <associate|auto-18|<tuple|3.1|3>>
    <associate|auto-19|<tuple|3.2|?>>
    <associate|auto-2|<tuple|1|2>>
    <associate|auto-20|<tuple|4|?>>
    <associate|auto-21|<tuple|4|3>>
    <associate|auto-22|<tuple|4|3>>
    <associate|auto-23|<tuple|4|3>>
    <associate|auto-24|<tuple|4.1|3>>
    <associate|auto-25|<tuple|4.2|?>>
    <associate|auto-26|<tuple|4.3|?>>
    <associate|auto-3|<tuple|1.1|2>>
    <associate|auto-4|<tuple|1.2|2>>
    <associate|auto-5|<tuple|1.3|2>>
    <associate|auto-6|<tuple|1.4|3>>
    <associate|auto-7|<tuple|2|?>>
    <associate|auto-9|<tuple|2|3>>
    <associate|source_style|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|font-family|<quote|ss>|Insert>>|<pageref|auto-9>>

      <tuple|<tuple|<with|font-family|<quote|ss>|Document>>|<pageref|auto-14>>

      <tuple|<tuple|<with|font-family|<quote|ss>|Format>>|<pageref|auto-21>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Focus
      Toolbar> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc><image|file:///Applications/Mogan.app/Contents/Resources/share/Xmacs/misc/pixmaps/modern/16x16/focus/tm_portrait_1col.svg||2ex||-0.333ex>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Style
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Style packages
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc><image|file:///Applications/Mogan.app/Contents/Resources/share/Xmacs/misc/pixmaps/modern/16x16/focus/tm_focus_help.svg||2ex||-0.333ex>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc><with|font-family|<quote|ss>|Insert><assign|auto-nr|7><write|idx|<tuple|<tuple|<with|font-family|<quote|ss>|Insert>>|<pageref|auto-7>>>
      menu> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Content/Size/Presentation
      Tag <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc><with|font-family|<quote|ss>|Document><assign|auto-nr|12><write|idx|<tuple|<tuple|<with|font-family|<quote|ss>|Document>>|<pageref|auto-12>>>
      menu> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Informative flags
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Part \<rightarrow\> Preamble
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Page
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc><with|font-family|<quote|ss>|Format><assign|auto-nr|19><write|idx|<tuple|<tuple|<with|font-family|<quote|ss>|Format>>|<pageref|auto-19>>>
      menu> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Color
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Font
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Paragraph
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>
    </associate>
  </collection>
</auxiliary>