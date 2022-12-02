<TeXmacs|2.1.2>

<style|<tuple|metropolis|libertine-font|doc|preview-ref|smart-ref|number-long-article>>

<\body>
  <\hide-preamble>
    <assign|p|<macro|x|<with|color|magenta|<arg|x>>>>
  </hide-preamble>

  <screens|<\shown>
    <strong|<tabular|<tformat|<cwith|1|1|1|1|cell-background|#aff>|<table|<row|<cell|Math>>>>>
    mode>

    <\title-slide|<with|font|Linux Biolinum|font-family|rm|font-series|bold|font-base-size|20|Typing
    Math with GNU <TeXmacs>>>
      <\padded-right-aligned>
        <person|Yiqi Xu>
      </padded-right-aligned>

      <\padded-right-aligned>
        <name|LCPU <math|<text|\<times\>>> USTCLUG Salon>
      </padded-right-aligned>

      <\padded-right-aligned>
        <date|27 Nov. 2022>
      </padded-right-aligned>

      \;
    </title-slide|>
  </shown>|<\hidden>
    <tit|<strong|GNU <TeXmacs> v. <LaTeX>>>

    \;

    <\folded-explain>
      <paragraph|Why do we need <TeXmacs> other than <LaTeX>?>
    <|folded-explain>
      <\folded>
        <LaTeX> is far from satisfactory for scientific writing.
      <|folded>
        <\quote-env>
          You know Leslie Lamport, \ ACM Turing Award laureate, if you are
          using <LaTeX>. He is actually surprised <LaTeX> is still being used
          and no-one has invented something better :)
          <with|color|#5195d9|#HLF22>

          <hlink|RT @DrHouriehKh|https://twitter.com/drhouriehkh/status/1572194337781325824?s=61&t=Sd8hLzqu4lLQeZwkGjWxGg>
        </quote-env>

        <LaTeX> is a tool, and it empowers you as well as limit you, in many
        ways.\ 

        <TeXmacs> is designed for those who are not satisfied by the usual
        <LaTeX> workflow and dreamt of something different. With <TeXmacs>
        you will have time to develop more interesting skills in college.

        <\quote-env>
          The best latex code is no latex code :) and <TeXmacs> allows you to
          write your best latex no-code.

          <hlink|RT @gnu_texmacs|https://twitter.com/gnu_texmacs/status/1593978848965804032?s=61&t=Sd8hLzqu4lLQeZwkGjWxGg>
        </quote-env>
      </folded>

      <\folded-std>
        <TeXmacs> makes scientific writing intuitive (truly <abbr|WYSIWYG>)
        and structured (so <abbr|WYSIWYM>) in comparison to <LaTeX>.
      <|folded-std>
        <TeXmacs> is driven by the very philosophy of making technical
        document editing both innovative and more humane, beautiful and
        conceptually correct.

        No waste of screen estate, uncluttered UIs, structured editing and
        pixel-perfect typesetting. <TeXmacs> allows you to focus on your work
        without distractions.
      </folded-std>

      <\folded>
        All you need is in one place.
      <|folded>
        <TeXmacs> has slide tools, graphics tools, an internal bibliographic
        database, interactive sessions in a variety of engines, various
        plugins and allows to export <name|PDF>, <LaTeX>, or <name|HTML>,
        etc.
      </folded>
    </folded-explain>

    <\folded-explain>
      <paragraph|<math|<TeXmacs>\<neq\><TeX>+<name|<text|Emacs>>>>
    <|folded-explain>
      The name was chosen early on to pay due respect to the two main sources
      of inspiration: the <TeX> system and the <name|Emacs> editor, but does
      not share any code with these programs.

      <TeXmacs> has a radically different design. It aims neither to be
      another <LaTeX> frontend nor to be limited by <LaTeX> in how the output
      is produced.
    </folded-explain>

    <\folded-explain>
      <paragraph|Can <TeXmacs> replace <LaTeX> in everyday study and work?>
    <|folded-explain>
      <\quote-env>
        I use <TeXmacs> everyday for lectures, presentations, papers,
        exercise sheets and export most of my documents to <LaTeX>. There is
        no need of <LaTeX> in my workflow, just to send the final version to
        the editors. <person|Joris> and other people I know, including most
        of my current students and collaborators use it also for slides and
        other stuff.

        \V Massimiliano Gubinelli <hlink|@The GNU <TeXmacs>
        Forum|http://forum.texmacs.cn/t/is-texmacs-better-than-lyx-for-users-who-need-to-export-to-latex/1151/4>
      </quote-env>
    </folded-explain>
  </hidden>|<\hidden>
    <paragraph|Three ways to input math>

    <\itemize>
      <item>toolbar / menubar

      <item><markup|macros / <LaTeX> names> (<inactive|<hybrid|>>) or
      \ <markup|internal <TeXmacs> names> (<p|<key|C-q>>)

      <item><with|color|magenta|keyboard shortcuts>
    </itemize>

    <paragraph|Three types of formulae>

    <\itemize>
      <item>Inline formulae <with|color|magenta|<key|$>>

      Let <math|x<rsub|1>,\<ldots\>,x<rsub|n>> be variables.
      Let<math|V=\<bbb-R\><rsup|n>> a real vector space.

      <item>Displayed formulae <with|color|magenta|<shortcut|(make-equation*)>>

      <\equation*>
        x<rsup|2>+y<rsup|2>=z<rsup|2>
      </equation*>

      <item>Several equations\ 

      <with|color|magenta|<shortcut|(make-eqnarray*)>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||x-y+z|\|>>|<cell|\<leqslant\>>|<cell|<around*|\||x-y|\|>+<around*|\||z|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||x|\|>+<around*|\||y|\|>+<around*|\||z|\|>>>>>
      </eqnarray*>
    </itemize>

    <paragraph|Variants><with|color|magenta|<math|<with|color|magenta|<key|var>>>>
    \ <with|color|magenta|<key|S-var>>

    <\equation*>
      \<forall\>\<alpha\>.\<exists\>\<beta\>.\<Delta\>+\<nabla\>\<sqsubset\>\<wp\>
    </equation*>

    <paragraph|Juxtaposition>

    <\equation*>
      a\<rightarrow\>b\<twoheadrightarrow\>c\<rightarrowtail\>d\<otimes\>e\<oplus\>f\<boxdot\>x
    </equation*>

    <paragraph|Special fonts><with|color|magenta|<prefix|math:up>>
    \ <with|color|magenta|<prefix|math:bold>>
    \ <with|color|magenta|<prefix|math:cal>>
    \ <with|color|magenta|<prefix|math:frak>> and <with|color|magenta|<key|F6
    F7>> \ <with|color|magenta|<key|F6 F5>>

    <with|color|magenta|<prefix|math:bbb>>(=type the same capital twice)
    \ <with|color|magenta|<key|math:greek>>

    <\equation*>
      f+\<up-a\>+\<b-V\>+\<cal-A\>+\<frak-M\>+\<b-cal-A\>+\<b-up-a\>
    </equation*>

    <paragraph|2D math markup>

    <with|color|magenta|<key|math f>> \ <with|color|magenta|<key|math s>>
    \ <with|color|magenta|<key|math s var>>

    <\equation*>
      <frac|a<rsub|1>+\<cdots\>+a<rsub|n>|n>\<leqslant\><sqrt|<frac|a<rsub|1><rsup|2>+\<cdots\>+a<rsub|n><rsup|2>|n>>\<leqslant\><sqrt|<frac|a<rsub|1><rsup|k>+\<cdots\>+a<rsub|n><rsup|k>|n>|k>
    </equation*>

    <\equation*>
      \<phi\>=<frac|<sqrt|5>+1|2>=<frac|1|1+<frac|1|1+<frac|1|1+\<ddots\>>>>
    </equation*>

    <p|<key|math ~>> \ <p|<key|math ^>>

    <\equation*>
      <wide|a+b|~>,<application-space|2em><wide|c+d|^><application-space|2em>
    </equation*>

    <paragraph|Brackets><with|color|magenta|<key|A-M-up>>
    \ <with|color|magenta|<key|A-M-down>>
    \ <with|color|magenta|<key|A-M-delete>> \ <with|color|magenta|<key|escape
    *>>

    <\equation*>
      <around*|(|<frac|x|y>|]>
    </equation*>

    <paragraph|Large symbols><p|<key|S-F5>>

    <p|<key|S-F5 S>>

    <\equation*>
      <big|sum><rsub|k=1><rsup|\<infty\>><frac|1|k<rsup|2>>=<frac|\<pi\><rsup|2>|6>
    </equation*>

    <p|<key|S-F5 I>> \ <p|<key|S-F5 I !>>\ 

    <\equation*>
      <big|int><rsub|-\<infty\>><rsup|\<infty\>> <frac|sin(x)|x> <frac|sin(x
      / 3)|x / 3> ...<frac|sin(x / 13)|x / 13> \<mathd\>x=\<pi\>
    </equation*>

    \;

    <p|<key|S-F5 P>>

    <\equation*>
      <frac|sin z|z>=<big|prod><rsub|n=1><rsup|\<infty\>><around*|(|1-<frac|z<rsup|2>|n<rsup|2>*z<rsup|2>>|)>
    </equation*>

    <paragraph|Matrices><p|<key|M-C-t N m>> \ <p|<key|M-C-t N d>>

    <\equation*>
      <tabular*|<tformat|<table|<row|<cell|>>>>><det|<tformat|<cwith|1|1|4|4|cell-row-span|4>|<cwith|1|1|4|4|cell-col-span|4>|<cwith|1|1|4|4|cell-valign|c>|<cwith|4|4|1|1|cell-row-span|4>|<cwith|4|4|1|1|cell-col-span|4>|<cwith|4|4|1|1|cell-valign|c>|<cwith|1|3|1|3|cell-background|#aff>|<cwith|5|7|5|7|cell-background|>|<table|<row|<cell|a<rsub|1\<nocomma\>1>>|<cell|\<cdots\>>|<cell|a<rsub|1\<nocomma\>n>>|<cell|\<b-0\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|a<rsub|n\<nocomma\>1>>|<cell|\<cdots\>>|<cell|a<rsub|n\<nocomma\>n>>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|<math-bf|0>>|<cell|>|<cell|>|<cell|b<rsub|1\<nocomma\>1>>|<cell|b<rsub|1\<nocomma\>2>>|<cell|\<cdots\>>|<cell|b<rsub|1\<nocomma\>n>>>|<row|<cell|>|<cell|>|<cell|>|<cell|b<rsub|2\<nocomma\>1>>|<cell|b<rsub|1\<nocomma\>1>>|<cell|\<cdots\>>|<cell|b<rsub|1\<nocomma\>n>>>|<row|<cell|>|<cell|>|<cell|>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|>|<cell|>|<cell|>|<cell|b<rsub|n\<nocomma\>1>>|<cell|b<rsub|n\<nocomma\>1>>|<cell|\<cdots\>>|<cell|b<rsub|n\<nocomma\>n>>>>>>=<det|<tformat|<cwith|1|-1|1|-1|cell-background|#aff>|<table|<row|<cell|a<rsub|1\<nocomma\>1>>|<cell|\<cdots\>>|<cell|a<rsub|1\<nocomma\>n>>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|a<rsub|n\<nocomma\>1>>|<cell|\<cdots\>>|<cell|a<rsub|n\<nocomma\>n>>>>>><det|<tformat|<cwith|1|-1|1|-1|cell-background|>|<table|<row|<cell|b<rsub|1\<nocomma\>1>>|<cell|\<cdots\>>|<cell|b<rsub|1\<nocomma\>n>>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|b<rsub|n\<nocomma\>1>>|<cell|\<cdots\>>|<cell|b<rsub|n\<nocomma\>n>>>>>>
    </equation*>

    <paragraph|Commutative diagrams>

    <\equation*>
      <with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|8.1cm|3.1cm|center>|gr-grid|<tuple|empty>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|2|none>>|gr-edit-grid|<tuple|empty>|gr-text-at-halign|center|gr-arrow-end|\<gtr\>|gr-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-grid-aspect|<tuple|<tuple|axes|#e0e0ff>|<tuple|1|#e0e0ff>|<tuple|2|#e0e0ff>>|gr-grid-aspect-props|<tuple|<tuple|axes|#e0e0ff>|<tuple|1|#e0e0ff>|<tuple|2|#e0e0ff>>|gr-text-at-valign|center|gr-auto-crop|true|<graphics||<with|text-at-halign|center|text-at-valign|center|<math-at|G|<point|-2|1>>>|<with|text-at-halign|center|text-at-valign|center|<math-at|H|<point|1|1>>>|<with|text-at-halign|center|text-at-valign|center|<math-at|G/Ker<around*|(|f|)>|<point|-2|-1>>>|<with|text-at-halign|center|text-at-valign|center|<math-at|Im<around*|(|f|)>|<point|1|-1>>>|<with|arrow-end|\<gtr\>|<line|<point|-2|0.752361>|<point|-2.0|-0.6952034473702129>>>|<with|arrow-end|\<gtr\>|<line|<point|1|-0.695203>|<point|1.0|0.7565829790959407>>>|<with|arrow-end|\<gtr\>|<arrow-with-text|<point|-1.75446|1>|<point|0.7523515850704746|1.0>|<math-at|f>>>|<with|arrow-end|\<gtr\>|<arrow-with-text|<point|-1.03076|-1>|<point|0.35890975944281783|-1.0>|<math-at|<wide|f|\<wide-bar\>>>>>>>
    </equation*>

    \;

    <paragraph|When a symbol is hard to find>

    <\itemize>
      <item>System tools (e.g. <markup|Character viewer> in <name|macOS>)

      <\equation*>
        \<twonotes\><space|2em>\<circlearrowleft\><application-space|2em>\<#3088\><rsub|\<cal-C\>>\<of\>\<cal-C\><rsup|op>\<rightarrow\><around*|[|\<cal-C\>,<math-bf|Set>|]>
      </equation*>

      <item>Internal <TeXmacs> names <p|<key|math q>>

      <\equation*>
        \<twonotes\><application-space|2em>\<circlearrowleft\>
      </equation*>

      <item><name|Unicode> numbers <p|<key|math q>>

      <\equation*>
        \<#266B\><application-space|2em>\<#3088\><rsub|\<cal-C\>>\<of\>\<cal-C\><rsup|op>\<rightarrow\><around*|[|\<cal-C\>,<math-bf|Set>|]>
      </equation*>
    </itemize>

    <paragraph|Numbering><p|<key|A-#>>

    <\equation>
      L<around|(|s,\<chi\>|)>=<big|sum><rsub|n=1><rsup|\<infty\>><frac|\<chi\><around*|(|n|)>|n<rsup|s>><label|eq:L>
    </equation>

    <paragraph|Labels and reference><p|<shortcut|(make-label)>>
    \ <p|<key|C-?>> \ <markup|smart-ref> and <markup|preview-ref>

    <\conjecture>
      <dueto|Zhang, <cite-detail|Zhang22|Theorem 1>><label|conj:Zhang>If
      <math|\<chi\>> is a real primitive character to the modulus <math|D>,
      then

      <\equation*>
        L<around|(|1,\<chi\>|)>\<gtr\>c<rsub|1><around|(|log D|)><rsup|-2022>
      </equation*>

      where <math|c<rsub|1>\<gtr\>0> is an absolute, effectively computable
      constant and <math|L<around*|(|s,\<chi\>|)>> is defined in
      <smart-ref|eq:L>
    </conjecture>

    As a direct consequence of <smart-ref|conj:Zhang> we have\ 

    <\corollary>
      <dueto|<cite-detail|Zhang22|Theorem 2>>If <math|\<chi\>> is a real
      primitive character to the modulus <math|D>, then

      <\equation*>
        L<around|(|\<sigma\>,\<chi\>|)>\<neq\>0
      </equation*>

      for

      <\equation*>
        \<sigma\>\<gtr\>1-c<rsub|2><around|(|log D|)><rsup|-2024>
      </equation*>

      where <math|c<rsub|2>\<gtr\>0> is an absolute, effectively computable
      constant.
    </corollary>

    <\bibliography|bib|tm-plain|LCPU_math.bib>
      <\bib-list|1>
        <bibitem*|1><label|bib-Zhang22>Yitang Zhang. <newblock>Discrete mean
        estimates and the landau-siegel zero. <newblock> 2022.<newblock>
      </bib-list>
    </bibliography>

    <\equation*>
      \;
    </equation*>

    \;

    <\equation*>
      \;
    </equation*>

    <\equation*>
      \;
    </equation*>

    \;

    \;
  </hidden>|<\hidden>
    \;
  </hidden>>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|info-flag|detailed>
    <associate|page-medium|papyrus>
    <associate|preamble|false>
  </collection>
</initial>

<\attachments>
  <\collection>
    <\associate|bib-bibliography>
      <\db-entry|+2InaPNNd2GsDQNCb|misc|Zhang22>
        <db-field|contributor|admin>

        <db-field|modus|imported>

        <db-field|date|1669849110>
      <|db-entry>
        <db-field|author|Yitang <name|Zhang>>

        <db-field|title|Discrete mean estimates and the landau-siegel zero>

        <db-field|year|2022>

        <db-field|copyright|Creative Commons Attribution 4.0 International>

        <db-field|doi|10.48550/ARXIV.2211.02515>

        <db-field|keywords|Number Theory (math.NT), FOS: Mathematics, FOS:
        Mathematics>

        <db-field|publisher|arXiv>

        <db-field|url|<slink|https://arxiv.org/abs/2211.02515>>

        <db-field|bdsk-url-1|<slink|https://arxiv.org/abs/2211.02515>>

        <db-field|bdsk-url-2|<slink|https://doi.org/10.48550/ARXIV.2211.02515>>
      </db-entry>
    </associate>
  </collection>
</attachments>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|10|?>>
    <associate|auto-11|<tuple|11|?>>
    <associate|auto-12|<tuple|12|?>>
    <associate|auto-13|<tuple|13|?>>
    <associate|auto-14|<tuple|14|?>>
    <associate|auto-15|<tuple|15|?>>
    <associate|auto-16|<tuple|16|?>>
    <associate|auto-17|<tuple|2|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
    <associate|auto-4|<tuple|4|?>>
    <associate|auto-5|<tuple|5|?>>
    <associate|auto-6|<tuple|6|?>>
    <associate|auto-7|<tuple|7|?>>
    <associate|auto-8|<tuple|8|?>>
    <associate|auto-9|<tuple|9|?>>
    <associate|bib-Zhang22|<tuple|1|?>>
    <associate|conj:Zhang|<tuple|1|?>>
    <associate|eq:L|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      Zhang22

      Zhang22
    </associate>
    <\associate|toc>
      <with|par-left|<quote|4tab>|Why do we need
      T<rsub|<space|-0.4spc><move|<resize|<with|math-level|<quote|0>|E>||||0.5fn>|0fn|-0.1fn>><space|-0.4spc>X<rsub|<space|-0.4spc><move|<resize|M<space|-0.2spc>A<space|-0.4spc>CS||||0.5fn>|0fn|-0.1fn>>
      other than L<rsup|<space|-0.8spc><move|A|0fn|-0.1fn>><space|-0.2spc>T<rsub|<space|-0.4spc><move|<resize|<with|math-level|<quote|0>|E>||||0.5fn>|0fn|-0.1fn>><space|-0.4spc>X?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|<with|color|<quote|#503050>|font-family|<quote|rm>|<with|mode|<quote|math>|T<rsub|<space|-0.4spc><move|<resize|<with|math-level|<quote|0>|E>||||0.5fn>|0fn|-0.1fn>><space|-0.4spc>X<rsub|<space|-0.4spc><move|<resize|M<space|-0.2spc>A<space|-0.4spc>CS||||0.5fn>|0fn|-0.1fn>>\<neq\>T<rsub|<space|-0.4spc><move|<resize|<with|math-level|<quote|0>|E>||||0.5fn>|0fn|-0.1fn>><space|-0.4spc>X+<with|font-family|<quote|rm>|font-shape|<quote|small-caps>|<with|mode|<quote|text>|Emacs>>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Can T<rsub|<space|-0.4spc><move|<resize|<with|math-level|<quote|0>|E>||||0.5fn>|0fn|-0.1fn>><space|-0.4spc>X<rsub|<space|-0.4spc><move|<resize|M<space|-0.2spc>A<space|-0.4spc>CS||||0.5fn>|0fn|-0.1fn>>
      replace L<rsup|<space|-0.8spc><move|A|0fn|-0.1fn>><space|-0.2spc>T<rsub|<space|-0.4spc><move|<resize|<with|math-level|<quote|0>|E>||||0.5fn>|0fn|-0.1fn>><space|-0.4spc>X
      in everyday study and work? <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Three ways to input math
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Three types of formulae
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Variants
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Juxtaposition
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Special fonts
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|2D math markup
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Brackets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Large symbols
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Matrices
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Commutative diagrams
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|When a symbol is hard to find
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Numbering
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Labels and reference
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>