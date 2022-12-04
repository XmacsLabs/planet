<TeXmacs|2.1.2>

<style|<tuple|metropolis|doc>>

<\body>
  <screens|<\shown>
    <tit|<strong|Architecture and Implementation>>

    <\big-table*>
      <\wide-tabular>
        <tformat|<cwith|2|4|1|1|cell-halign|c>|<cwith|2|2|1|1|cell-valign|c>|<cwith|3|3|1|1|cell-valign|c>|<cwith|6|6|2|2|cell-row-span|1>|<cwith|6|6|2|2|cell-col-span|2>|<cwith|5|5|1|1|cell-row-span|1>|<cwith|5|5|1|1|cell-col-span|2>|<cwith|2|2|2|2|cell-row-span|2>|<cwith|2|2|2|2|cell-col-span|1>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|1|1|cell-halign|c>|<cwith|5|5|1|1|cell-halign|c>|<cwith|2|2|3|3|cell-row-span|3>|<cwith|2|2|3|3|cell-col-span|1>|<cwith|2|2|3|3|cell-halign|c>|<cwith|2|2|3|3|cell-valign|c>|<cwith|6|6|2|2|cell-background|#faa>|<cwith|2|2|3|3|cell-background|pastel
        red>|<cwith|5|5|3|3|cell-background|pastel
        green>|<cwith|4|4|2|2|cell-background|pastel
        green>|<cwith|5|5|1|1|cell-background|pastel
        green>|<cwith|6|6|1|1|cell-background|#afa>|<cwith|4|4|1|1|cell-background|#ffa>|<cwith|2|2|2|2|cell-background|#aff>|<cwith|2|3|1|1|cell-background|pastel
        red>|<cwith|1|1|2|2|cell-row-span|1>|<cwith|1|1|2|2|cell-col-span|2>|<cwith|1|1|1|-1|cell-halign|c>|<cwith|1|1|1|1|cell-background|pastel
        magenta>|<cwith|1|1|2|2|cell-background|pastel
        magenta>|<table|<row|<\cell>
          What you see
        </cell>|<\cell>
          What you type or click
        </cell>|<\cell>
          \;
        </cell>>|<row|<\cell>
          Renderer
        </cell>|<\cell>
          Editor
        </cell>|<\cell>
          Widget
        </cell>>|<row|<\cell>
          Typesetter
        </cell>|<\cell>
          \;
        </cell>|<\cell>
          \;
        </cell>>|<row|<\cell>
          <TeXmacs> Style Sheet
        </cell>|<\cell>
          Scheme API
        </cell>|<\cell>
          \;
        </cell>>|<row|<\cell>
          Data Model as a tree in <TeXmacs> scheme data
        </cell>|<\cell>
          \;
        </cell>|<\cell>
          Scheme API
        </cell>>|<row|<\cell>
          Standard S7 Scheme
        </cell>|<\cell>
          Qt Framework in C++
        </cell>|<\cell>
          \;
        </cell>>>>
      </wide-tabular>

      \;
    <|big-table*>
      Architecture of GNU <TeXmacs>
    </big-table*>

    <\itemize-dot>
      <item>Content Model: How does <TeXmacs> document stored and rendered?

      <item>Code Structure: How is <TeXmacs> code organized?

      <item>Example: What happens when we type in the editor?

      <item>Ongoing Work: Can <TeXmacs> run in browser?
    </itemize-dot>
  </shown>|<\hidden>
    <\tit>
      <strong|Content Model: Documet as a tree>
    </tit>

    <\equation*>
      x+y+<frac|1|2>+<sqrt|y+z>
    </equation*>

    A <TeXmacs> document can be serialized in <name|TM> formart:\ 

    <\verbatim-code>
      \<less\>\\equation*\<gtr\>

      \ \ x+y+\<less\>frac\|1\|2\<gtr\>+\<less\>sqrt\|y+z\<gtr\>

      \<less\>/equation*\<gtr\>
    </verbatim-code>

    or <TeXmacs> <name|Scheme> format:

    <\scm-code>
      (equation*

      \ (document

      \ \ (concat "x+y+" (frac "1" "2") "+" (sqrt "y+z"))))\ 
    </scm-code>
  </hidden>|<\hidden>
    <tit|<strong|Content Model: Documet as a tree>>

    <TeXmacs> can load the document and store it as a tree in the memory:

    <\equation*>
      <tree|<markup|document><around*|[|0|]>|<tree|<markup|equation*><around*|[|0,0|]>|<tree|<markup|document><around*|[|0,0,0|]>|<tree|<markup|concat><around*|[|0,0,0,0|]>|<scm|"x+y"><around*|[|0,0,0,0,0|]>|<tree|<markup|frac><around*|[|1,0,0,0,0|]>|1<around*|[|0,1,0,0,0,0|]>|2<around*|[|1,1,0,0,0,0|]>>|<scm|"+">|<tree|<markup|sqrt>|<scm|"y+z">>>>>>
    </equation*>
  </hidden>|<\hidden>
    <tit|<strong|Content Model: From tree to boxes>>

    The Typesetter converts the <TeXmacs> tree into graphical Boxes, which
    contains rendering and other auxiliary information. e.g. physical
    bounding boxes, computing the positions of cursors and selections, etc.

    <\equation*>
      <tree|concat box|<tree|text box|<scm|"x+y+">>|<tree|math box
      <around*|(|<frac|\<box\>|\<box\>>|)>|<tree|text
      box|<scm|"1">>|<tree|text box|<scm|"2">>>|<tree|math box
      <around*|(|<sqrt|\<box\>>|)>|<tree|text box|<scm|"y+z">>>>
    </equation*>
  </hidden>|<\hidden>
    <tit|<strong|Content Model: Rendering boxes>>

    The last step is using render to draw the boxes:

    <\itemize-dot>
      <item>Qt implements the rendering on screen canvas

      <item>Hummus PDF implements the export to PDF

      <item>etc
    </itemize-dot>
  </hidden>|<\hidden>
    <\tit>
      <strong|Code Structure: Overview of Scheme modules>
    </tit>

    <big-figure|<with|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-mode|<tuple|group-edit|edit-props>|gr-fill-color|black|gr-line-width|1ln|gr-frame|<tuple|scale|0.707101cm|<tuple|0.5gw|0.499999gh>>|magnify|0.7071067807598522|gr-grid-aspect|<tuple|<tuple|axes|#808080>|<tuple|1|#c0c0c0>|<tuple|10|#e0e0ff>>|gr-grid-aspect-props|<tuple|<tuple|axes|#808080>|<tuple|1|#c0c0c0>|<tuple|10|#e0e0ff>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-auto-crop|true|<graphics||<with|fill-color|grey|<cline|<point|-6.5|-0.5>|<point|6.5|-0.5>|<point|6.5|-4>|<point|-6.5|-4>>>|<with|fill-color|pastel
    grey|<cline|<point|-4|-2>|<point|4|-2>|<point|4|-1>|<point|-4|-1>>>|<with|fill-color|#afa|<cline|<point|-6|-1>|<point|-4.5|-1>|<point|-4.5|-2.5>|<point|-0.25|-2.5>|<point|-0.25|-3.5>|<point|-6|-3.5>>>|<with|fill-color|#faa|<cline|<point|0.25|-2.5>|<point|4.5|-2.5>|<point|4.5|-1>|<point|6|-1>|<point|6|-3.5>|<point|0.25|-3.5>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<scheme>
    routines from glue|<point|3.25|-3>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|Standard
    <scheme> language|<point|-3.25|-3>>>|<line|<point|-2.25|-2>>|<line|<point|-2.25|-2>>|<with|fill-color|black|color|none|<cline|<point|-2.5|-2.25>|<point|-2.25|-2>|<point|-2|-2.25>>>|<with|fill-color|black|color|none|<cline|<point|1.75|-2.25>|<point|2|-2>|<point|2.25|-2.25>>>|<with|fill-color|black|color|none|<cline|<point|-0.25|-0.75>|<point|0|-0.5>|<point|0.25|-0.75>>>|<with|fill-color|black|color|none|<cline|<point|-5.5|-0.75>|<point|-5.25|-0.5>|<point|-5|-0.75>>>|<with|fill-color|black|color|none|<cline|<point|5|-0.75>|<point|5.25|-0.5>|<point|5.5|-0.75>>>|<with|line-width|2ln|<line|<point|-2.25|-2.5>|<point|-2.25|-2.25>>>|<with|line-width|2ln|<line|<point|2|-2.5>|<point|2|-2.25>>>|<with|line-width|2ln|<line|<point|0|-1>|<point|0|-0.75>>>|<with|line-width|2ln|<line|<point|-5.25|-1>|<point|-5.25|-0.75>>>|<with|line-width|2ln|<line|<point|5.25|-1>|<point|5.25|-0.75>>>|<with|fill-color|pastel
    grey|<cline|<point|-6.5|0>|<point|6.5|0>|<point|6.5|-0.5>|<point|-6.5|-0.5>>>|<with|fill-color|grey|<cline|<point|-6.5|1>|<point|-6.5|3.5>|<point|-0.5|3.5>|<point|-0.5|1>>>|<with|fill-color|grey|<cline|<point|0.5|3.5>|<point|6.5|3.5>|<point|6.5|1>|<point|0.5|1>>>|<with|fill-color|pastel
    grey|<cline|<point|-6|2.5>|<point|-6|1.5>|<point|-4.5|1.5>|<point|-4.5|2.5>>>|<with|fill-color|pastel
    grey|<cline|<point|-4.25|1.5>|<point|-2.75|1.5>|<point|-2.75|2.5>|<point|-4.25|2.5>>>|<with|fill-color|pastel
    grey|<cline|<point|-2.5|1.5>|<point|-1|1.5>|<point|-1|2.5>|<point|-2.5|2.5>>>|<with|fill-color|pastel
    grey|<cline|<point|1|2.5>|<point|1|1.5>|<point|2.5|1.5>|<point|2.5|2.5>>>|<with|fill-color|pastel
    grey|<cline|<point|2.75|2.5>|<point|2.75|1.5>|<point|4.25|1.5>|<point|4.25|2.5>>>|<with|fill-color|pastel
    grey|<cline|<point|4.5|1.5>|<point|6|1.5>|<point|6|2.5>|<point|4.5|2.5>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|Plug-ins|<point|3.5|3>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|Internal
    modules|<point|-3.5|3>>>|<with|line-width|2ln|<line|<point|-3.5|0>|<point|-3.5|1>>>|<with|line-width|2ln|<line|<point|3.5|0>|<point|3.5|1>>>|<with|line-width|2ln|<line|<point|-0.5|2.25>|<point|0.5|2.25>>>|<with|fill-color|black|color|none|<cline|<point|-3.75|0.75>|<point|-3.5|1>|<point|-3.25|0.75>>>|<with|fill-color|black|color|none|<cline|<point|3.25|0.75>|<point|3.5|1>|<point|3.75|0.75>>>|<with|fill-color|black|color|none|<cline|<point|0.25|2.5>|<point|0.5|2.25>|<point|0.25|2>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|Language
    extensions, utilities and libraries|<point|0|-1.5>>>>>|Schematic
    organization of the <scheme> API.>
  </hidden>|<\hidden>
    <tit|<strong|Code Structure: Scheme routines from glue>>

    <\itemize>
      <item>C++ (Typesetter, UI Frameworks)

      <item>Exported to Scheme via glue

      <\itemize-minus>
        <item>Operations on Data Model

        <item>User Interface: Keyboard/Mouse events, Scheme bindings of Qt.
        e.g.\ 

        <\session|scheme|default>
          <\input>
            Scheme]\ 
          <|input>
            (open-window)
          </input>
        </session>

        <item>many others, you can find the full list in following files:

        <\itemize-arrow>
          <item>src/Scheme/Glue/build-glue-basic.scm

          <item>src/Scheme/Glue/build-glue-editor.scm

          <item>src/Scheme/Glue/build-glue-server.scm
        </itemize-arrow>
      </itemize-minus>
    </itemize>
  </hidden>|<\hidden>
    <tit|<strong|Code Structure: Scheme utils and modules>>

    <\itemize-dot>
      <item><marked|Extensions to Scheme and utilities> provide frequently
      used functionalities. Corresponding files can be found in following
      folders:

      <\itemize-arrow>
        <item>TeXmacs/progs/kernel

        <item>TeXmacs/progs/utils
      </itemize-arrow>

      <item><marked|Internal modules and plugins> are very similar, they
      usually correspond to a particular type of content, e.g.

      <\itemize-arrow>
        <item>TeXmacs/progs/source

        <item>TeXmacs/progs/math

        <item>TeXmacs/progs/table
      </itemize-arrow>

      or correspond to a particular type of functionality, e.g.

      <\itemize-arrow>
        <item>TeXmacs/progs/fonts
      </itemize-arrow>
    </itemize-dot>
  </hidden>|<\hidden>
    <tit|<strong|Example: Type in the editor>>

    <\equation*>
      \<alpha\>+x+y+<frac|1|2>+<sqrt|y+z>
    </equation*>

    <\itemize>
      <item>Qt UI Frameworks: Keyboard Press Event

      <item><tabular|<tformat|<cwith|1|1|1|1|cell-background|#afa>|<table|<row|<cell|Scheme:
      <scm|key-press>>>>>> (C++: Cursor Path, Buffering Shortcuts)

      <\itemize>
        <item><tabular|<tformat|<cwith|1|1|1|1|cell-background|#afa>|<table|<row|<cell|<TeXmacs>
        tree changes>>>>> <math|\<rightarrow\>>
        <tabular|<tformat|<cwith|1|1|1|1|cell-background|#faa>|<table|<row|<cell|Typeset
        Boxes changes>>>>> <math|\<rightarrow\>>
        <tabular|<tformat|<cwith|1|1|1|1|cell-background|#faa>|<table|<row|<cell|Qt
        Renderer re-render>>>>>

        <item><tabular|<tformat|<cwith|1|1|1|1|cell-background|#afa>|<table|<row|<cell|UI
        Changes>>>>> (Menu/Tool Bars/Status Bars/Context Menu)
      </itemize>
    </itemize>
  </hidden>|<\hidden>
    <tit|<strong|Future: the WASM port>>

    <strong|What is Webassembly?> (https://webassembly.org)

    <\quotation>
      WebAssembly (abbreviated<nbsp><with|font-shape|italic|Wasm>) is a
      binary instruction format for a stack-based virtual machine. Wasm is
      designed as a portable compilation target for programming languages,
      enabling deployment on the web for client and server applications.
    </quotation>

    Webassembly is now shipped with all four major browser engines, it has
    almost native performance.

    Emscripten is a toolchain for comipling C++ code to Wasm.
  </hidden>|<\hidden>
    <tit|<strong|Future: the WASM port>>

    Mogan has been successfully compiled to Wasm. <hlink|try it
    now|https://yufeng-shen.github.io>

    Future improvements:

    <\itemize-dot>
      <item>make executable file and data file smaller to reduce loading time

      <item>fix browser specific issues (some version of browser/ os has
      rendering issue)

      <item>add workarounds for functionalities that not directly supported
      by Wasm (e.g. upload files, hyperlinks, clipboard etc.)

      <item>more
    </itemize-dot>
  </hidden>>
</body>

<\initial>
  <\collection>
    <associate|font|roman>
    <associate|font-base-size|12>
    <associate|font-family|rm>
    <associate|math-font|roman>
    <associate|page-medium|beamer>
    <associate|preamble|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?>>
    <associate|auto-2|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Schematic
      organization of the <with|font-family|<quote|rm>|font-shape|<quote|small-caps>|Scheme>
      API.>|<pageref|auto-2>>
    </associate>
    <\associate|table>
      <\tuple|normal>
        Architecture of GNU T<rsub|<space|-0.4spc><move|<resize|<with|math-level|<quote|0>|E>||||0.5fn>|0fn|-0.1fn>><space|-0.4spc>X<rsub|<space|-0.4spc><move|<resize|M<space|-0.2spc>A<space|-0.4spc>CS||||0.5fn>|0fn|-0.1fn>>
      </tuple|<pageref|auto-1>>
    </associate>
  </collection>
</auxiliary>