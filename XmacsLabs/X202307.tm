<TeXmacs|2.1.2>

<style|<tuple|seminar|comment>>

<\body>
  <\hide-preamble>
    \;

    <assign|x_0|<macro|<math|x<rsub|0>>>>

    <assign|x_1|<macro|<math|x<rsub|1>>>>

    <assign|dlink|<macro|name|<hlink|[<arg|name>]|<merge|<arg|name>|.tm>>>>
  </hide-preamble>

  <doc-data|<doc-title|Seminar X202307>|<doc-author|<author-data|<author-name|jingkaimori>>>>

  <section|Welcome>

  \;

  <section|Topic: Unicode support>

  <subsection|tmu format>

  <\itemize>
    <item>legacy mogan document detection

    <item>tmu specification
  </itemize>

  <subsection|Inner implemention of unicode string>

  <\itemize>
    <item>scheme support of unicode

    <item>inner encoding of unicode string
  </itemize>

  <subsection|Unicode handling at user interface>

  <\itemize>
    <item>Unicode normalization during input.

    <item>Handling of chinese numerals and roman numerals.

    <item>File system and file metadata.

    <item>CJK word count.

    <item>IME related problems.
  </itemize>

  <section|Discussion>

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|info-flag|detailed>
    <associate|page-medium|paper>
    <associate|preamble|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|3|4>>
    <associate|auto-11|<tuple|4|5>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|2.1|2>>
    <associate|auto-4|<tuple|2.2|2>>
    <associate|auto-5|<tuple|2.3|3>>
    <associate|auto-6|<tuple|3|3>>
    <associate|auto-7|<tuple|2.2|4>>
    <associate|auto-8|<tuple|2.3|4>>
    <associate|auto-9|<tuple|2.4|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        An navigation template on Wikipedia, displaying items divided into
        several categories. The community of wikipedia is trying to use
        wikidata for it.
      </surround>|<pageref|auto-4>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|2>|>
        Table generated from knowledge graph on Wikipedia.
      </surround>|<pageref|auto-5>>
    </associate>
    <\associate|table>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        Some tasks of mogan project. This table can be managed with some data
        structure rather than table.
      </surround>|<pageref|auto-6>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Welcome>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Topic:
      Mechanism to manage tm files> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>document lookup and
      classification <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>project of embedded code and
      session <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Git(VCS) Integration
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>technique detail and
      backward compability <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Topic:
      Unicode support> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Discussion>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>