<TeXmacs|2.1.2>

<style|<tuple|generic|doc|compact-list>>

<\body>
  <doc-data|<doc-title|Math Symbols List>|>

  <abstract-data|<abstract|This list contains the keyboard shorthands and
  macros for common mathematical symbols following the document
  <hlink|maths-symbols|https://www.ctan.org/pkg/maths-symbols>.>>

  <\note*>
    \;

    <\itemize-dot>
      <item>The <TeXmacs>-style keyboard shorthands work only in the math
      mode. Macros work also in the text mode, but according to the font
      settings, the symbols may be shown differently from those in math mode,
      since the document font and the math font can be set up separately.

      <item>Macros with <todo|red markups> are <em|<with|color|dark red|not>>
      yet supported in GNU <TeXmacs>/<name|Mogan Editor>.

      <item>Although some unusual symbols are not supported by shorthands in
      GNU <TeXmacs>/<name|Mogan Editor>, but they can be entered using menu,
      e.g. <math|\<smile\>> and <math|\<frown\>>. The background color of
      these symbols are set <marked|green>.\ 

      <item>Macros with a * are not predefined in <LaTeX>
      2<math|\<varepsilon\>>. They need one of the packages
      <markup|latexsym>, <markup|amsfonts> or <markup|amssymb>.\ 
    </itemize-dot>
  </note*>

  <section*|Math Symbols>

  <\big-table>
    <tabular*|<tformat|<table|<row|<cell|<math|\<alpha\>>>|<cell|<key*|a
    var>>|<cell|>|<cell|<math|\<theta\>>>|<cell|<key*|j
    var>>|<cell|>|<cell|<math|\<omicron\>>>|<cell|<key*|o
    var>>|<cell|>|<cell|<math|\<upsilon\>>>|<cell|<key*|u
    var>>>|<row|<cell|>|<cell|<markup|\\alpha>>|<cell|>|<cell|>|<cell|<markup|\\theta>>|<cell|>|<cell|>|<cell|<markup|\\omicron>>|<cell|>|<cell|>|<cell|<markup|\\upsilon>>>|<row|<cell|<math|\<beta\>>>|<cell|<key*|b
    var>>|<cell|>|<cell|<math|\<vartheta\>>>|<cell|<key|j var var
    var>>|<cell|>|<cell|<math|\<pi\>>>|<cell|<key*|p
    var>>|<cell|>|<cell|<math|\<phi\>>>|<cell|<key*|v
    var>>>|<row|<cell|>|<cell|<markup|\\beta>>|<cell|>|<cell|>|<cell|<markup|\\vartheta>>|<cell|>|<cell|>|<cell|<markup|\\pi>>|<cell|>|<cell|>|<cell|<markup|\\phi>>>|<row|<cell|<math|\<gamma\>>>|<cell|<key*|g
    var>>|<cell|>|<cell|<math|\<iota\>>>|<cell|<key*|i
    var>>|<cell|>|<cell|<math|\<varpi\>>>|<cell|<key|p var var
    var>>|<cell|>|<cell|<math|\<varphi\>>>|<cell|<key*|v var
    var>>>|<row|<cell|>|<cell|<markup|\\gamma>>|<cell|>|<cell|>|<cell|<markup|\\iota>>|<cell|>|<cell|>|<cell|<markup|\\varpi>>|<cell|>|<cell|>|<cell|<markup|\\varphi>>>|<row|<cell|<math|\<delta\>>>|<cell|<key*|d
    var>>|<cell|>|<cell|<math|\<kappa\>>>|<cell|<key*|k
    var>>|<cell|>|<cell|<math|\<rho\>>>|<cell|<key*|r
    var>>|<cell|>|<cell|<math|\<chi\>>>|<cell|<key*|q
    var>>>|<row|<cell|>|<cell|<markup|\\delta>>|<cell|>|<cell|>|<cell|<markup|\\kappa>>|<cell|>|<cell|>|<cell|<markup|\\rho>>|<cell|>|<cell|>|<cell|<markup|\\chi>>>|<row|<cell|<math|\<epsilon\>>>|<cell|<key*|e
    var>>|<cell|>|<cell|<math|\<lambda\>>>|<cell|<key*|l
    var>>|<cell|>|<cell|<math|\<varrho\>>>|<cell|<key*|r var
    var>>|<cell|>|<cell|<math|\<psi\>>>|<cell|<key*|y
    var>>>|<row|<cell|>|<cell|<markup|\\varepsilon>>|<cell|>|<cell|>|<cell|<markup|\\lambda>>|<cell|>|<cell|>|<cell|<markup|\\varrho>>|<cell|>|<cell|>|<cell|<markup|\\psi>>>|<row|<cell|<math|\<varepsilon\>>>|<cell|<key|e
    var var var>>|<cell|>|<cell|<math|\<mu\>>>|<cell|<key*|m
    var>>|<cell|>|<cell|<math|\<sigma\>>>|<cell|<key*|s
    var>>|<cell|>|<cell|<math|\<omega\>>>|<cell|<key*|w
    var>>>|<row|<cell|>|<cell|<markup|\\epsilon>>|<cell|>|<cell|>|<cell|<markup|\\mu>>|<cell|>|<cell|>|<cell|<markup|\\sigma>>|<cell|>|<cell|>|<cell|<markup|\\omega>>>|<row|<cell|<math|\<zeta\>>>|<cell|<key*|z
    var>>|<cell|>|<cell|<math|\<nu\>>>|<cell|<key*|n
    var>>|<cell|>|<cell|<math|\<varsigma\>>>|<cell|<key*|s var
    var>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<markup|\\zeta>>|<cell|>|<cell|>|<cell|<markup|\\nu>>|<cell|>|<cell|>|<cell|<markup|\\varsigma>>|<cell|>|<cell|>|<cell|>>|<row|<cell|<math|\<eta\>>>|<cell|<key*|h
    var>>|<cell|>|<cell|<math|\<xi\>>>|<cell|<key*|x
    var>>|<cell|>|<cell|<math|\<tau\>>>|<cell|<key*|t
    var>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<markup|\\eta>>|<cell|>|<cell|>|<cell|<markup|\\xi>>|<cell|>|<cell|>|<cell|<markup|\\tau>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|<math|\<Gamma\>>>|<cell|<key|G
    var>>|<cell|>|<cell|<math|\<Lambda\>>>|<cell|<key|L
    var>>|<cell|>|<cell|<math|\<Sigma\>>>|<cell|<key|S
    var>>|<cell|>|<cell|<math|\<Psi\>>>|<cell|<key|Y
    var>>>|<row|<cell|>|<cell|<markup|\\Gamma>>|<cell|>|<cell|>|<cell|<markup|\\Lambda>>|<cell|>|<cell|>|<cell|<markup|\\Sigma>>|<cell|>|<cell|>|<cell|<markup|\\Psi>>>|<row|<cell|<math|\<Delta\>>>|<cell|<key|D
    var>>|<cell|>|<cell|<math|\<Xi\>>>|<cell|<key|X
    var>>|<cell|>|<cell|<math|\<Upsilon\>>>|<cell|<key|U
    var>>|<cell|>|<cell|<math|\<Omega\>>>|<cell|<key|W
    var>>>|<row|<cell|>|<cell|<markup|\\Delta>>|<cell|>|<cell|>|<cell|<markup|\\Xi>>|<cell|>|<cell|>|<cell|<markup|\\Upsilon>>|<cell|>|<cell|>|<cell|<markup|\\Omega>>>|<row|<cell|<math|\<Theta\>>>|<cell|<key|J
    var>>|<cell|>|<cell|<math|\<Pi\>>>|<cell|<key|J
    var>>|<cell|>|<cell|<math|\<Phi\>>>|<cell|<key|F
    var>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<markup|\\Theta>>|<cell|>|<cell|>|<cell|<markup|\\Pi>>|<cell|>|<cell|>|<cell|<markup|\\Phi>>|<cell|>|<cell|>|<cell|>>>>>
  <|big-table>
    Greek Letters
  </big-table>

  <\big-table|<tabular|<tformat|<cwith|7|7|4|5|cell-background|#afa>|<table|<row|<cell|<math|\<amalg\>>>|<cell|<key|%><key|var><key|var><key|var>>|<cell|>|<cell|<math|\<cup\>>>|<cell|<key|%
  var>>|<cell|>|<cell|<math|\<oplus\>>>|<cell|<key|@><key|+>>|<cell|>|<cell|<math|\<times\>>>|<cell|<key|*
  tab>>|<cell|>>|<row|<cell|>|<cell|<markup|\\amalg>>|<cell|>|<cell|>|<cell|<markup|\\cup>>|<cell|>|<cell|>|<cell|<markup|\\oplus>>|<cell|>|<cell|>|<cell|<markup|\\times>>|<cell|>>|<row|<cell|<math|\<ast\>>>|<cell|<key|*
  var var>>|<cell|>|<cell|<math|\<dagger\>>>|<cell|<key|+ var
  var>>|<cell|>|<cell|<math|\<oslash\>>>|<cell|<compound|markup|><key|@ /
  var>>|<cell|>|<cell|<math|\<triangleleft\>>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<markup|\\ast>>|<cell|>|<cell|>|<cell|<math|><markup|\\dagger>>|<cell|>|<cell|>|<cell|<markup|\\oslash>>|<cell|>|<cell|>|<cell|<markup|\\triangleleft>>|<cell|>>|<row|<cell|<math|\<bigcirc\>>>|<cell|<math|>>|<cell|>|<cell|<math|\<ddagger\>>>|<cell|<key|+
  var var var>>|<cell|>|<cell|<math|\<otimes\>>>|<cell|<key|@
  *>>|<cell|>|<cell|<math|\<triangleright\>>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<markup|\\bigcirc>>|<cell|>|<cell|>|<cell|<markup|\\ddagger>>|<cell|>|<cell|>|<cell|<markup|\\otimes>>|<cell|>|<cell|>|<cell|<markup|\\triangleright>>|<cell|>>|<row|<cell|<math|\<bigtriangledown\>>>|<cell|>|<cell|>|<cell|<math|\<diamond\>>>|<cell|>|<cell|>|<cell|<math|\<pm\>>>|<cell|<key|+
  ->>|<cell|>|<cell|<math|\<trianglelefteq\>>>|<cell|<key|\<less\> \| var =
  var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\bigtriangledown>>|<cell|>|<cell|>|<cell|<markup|\\diamond>>|<cell|>|<cell|>|<cell|<markup|\\pm>>|<cell|>|<cell|>|<cell|<todo|<markup|\\unlhd>*>>|<cell|>>|<row|<cell|<math|\<bigtriangleup\>>>|<cell|>|<cell|>|<cell|<math|\<div\>>>|<cell|<key|/
  var var>>|<cell|>|<cell|<math|\<vartriangleright\>>>|<cell|<key|\| \<gtr\>
  var>>|<cell|>|<cell|<math|\<trianglerighteq\>>>|<cell|<key|\| \<gtr\> var =
  var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\bigtriangleup>>|<cell|>|<cell|>|<cell|<markup|\\div>>|<cell|>|<cell|>|<cell|<todo|<markup|\\rhd>*>>|<cell|>|<cell|>|<cell|<todo|<markup|\\unrhd>*>>|<cell|>>|<row|<cell|<math|\<bullet\>>>|<cell|<key|@
  var var>>|<cell|>|<cell|<math|\<vartriangleleft\>>>|<cell|<key|\<less\> \|
  var>>|<cell|>|<cell|<math|\<setminus\>>>|<cell|<key|\\ var
  var>>|<cell|>|<cell|<math|\<uplus\>>>|<cell|<key|% var
  +>>|<cell|>>|<row|<cell|>|<cell|<markup|\\bullet>>|<cell|>|<cell|>|<cell|<todo|<markup|\\lhd>*>>|<cell|>|<cell|>|<cell|<markup|\\setminus>>|<cell|>|<cell|>|<cell|<markup|\\uplus>>|<cell|>>|<row|<cell|<math|\<cap\>>>|<cell|<key|&
  var>>|<cell|>|<cell|<math|\<mp\>>>|<cell|<key|-
  +>>|<cell|>|<cell|<math|\<sqcap\>>>|<cell|<key|& var
  var>>|<cell|>|<cell|<math|\<vee\>>>|<cell|<key|%>>|<cell|>>|<row|<cell|>|<cell|<markup|\\cap>>|<cell|>|<cell|>|<cell|<markup|\\mp>>|<cell|>|<cell|>|<cell|<markup|\\sqcap>>|<cell|>|<cell|>|<cell|<markup|\\vee>>|<cell|>>|<row|<cell|<math|\<cdot\>>>|<cell|<key|*
  var var var>>|<cell|>|<cell|<math|\<odot\>>>|<cell|<key|@
  .><math|>>|<cell|>|<cell|<math|\<sqcup\>>>|<cell|<key|% var
  var>>|<cell|>|<cell|<math|\<wedge\>>>|<cell|<key|&>>|<cell|>>|<row|<cell|>|<cell|<markup|\\cdot>>|<cell|>|<cell|>|<cell|<markup|\\odot>>|<cell|>|<cell|>|<cell|<markup|\\sqcup>>|<cell|>|<cell|>|<cell|<markup|\\wedge>>|<cell|>>|<row|<cell|<math|\<circ\>>>|<cell|<key|@>>|<cell|>|<cell|<math|\<ominus\>>>|<cell|<key|@
  ->>|<cell|>|<cell|<math|\<star\>>>|<cell|<key|*><key|S-var>>|<cell|>|<cell|<math|\<wr\>>>|<cell|<math|>>|<cell|>>|<row|<cell|<markup|>>|<cell|<markup|\\circ>>|<cell|>|<cell|>|<cell|<markup|\\ominus>>|<cell|>|<cell|>|<cell|<markup|\\star>>|<cell|>|<cell|>|<cell|<markup|\\wr>>|<cell|>>>>>>
    Binary Operation Symbols
  </big-table>

  <\big-table|<tabular|<tformat|<cwith|13|13|10|11|cell-background|#afa>|<cwith|15|15|10|11|cell-background|#afa>|<table|<row|<cell|<math|\<leq\>>>|<cell|<key|\<less\>
  = var>>|<cell|>|<cell|<math|\<geq\>>>|<cell|<key|\<gtr\> =
  var>>|<cell|>|<cell|<math|\<equiv\>>>|<cell|<key|= var
  var>>|<cell|>|<cell|<math|\<models\>>>|<cell|<key|\| var
  =>>|<cell|>>|<row|<cell|>|<cell|<markup|\\leq>>|<cell|>|<cell|>|<cell|<markup|\\geq>>|<cell|>|<cell|>|<cell|<markup|\\equiv>>|<cell|>|<cell|>|<cell|<markup|\\models>>|<cell|>>|<row|<cell|<math|\<prec\>>>|<cell|<key|\<less\>
  var var var>>|<cell|>|<cell|<math|\<succ\>>>|<cell|<key|\<gtr\> var var
  var>>|<cell|>|<cell|<math|\<sim\>>>|<cell|<key|~>>|<cell|>|<cell|<math|\<perp\>>>|<cell|<key|T
  var var var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\prec>>|<cell|>|<cell|>|<cell|<markup|\\succ>>|<cell|>|<cell|>|<cell|<markup|\\sim>>|<cell|>|<cell|>|<cell|<markup|\\perp>>|<cell|>>|<row|<cell|<math|\<preceq\>>>|<cell|<key|\<less\>
  var var var = var>>|<cell|>|<cell|<math|\<succeq\>>>|<cell|<key|\<gtr\> var
  var var = var>>|<cell|>|<cell|<math|\<simeq\>>>|<cell|<key|~
  ->>|<cell|>|<cell|<math|\<mid\>>>|<cell|<key|\|
  var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\preceq>>|<cell|>|<cell|>|<cell|<markup|\\succeq>>|<cell|>|<cell|>|<cell|<markup|\\simeq>>|<cell|>|<cell|>|<cell|<markup|\\mid>>|<cell|>>|<row|<cell|<math|\<ll\>>>|<cell|<key|\<less\>
  \<less\>>>|<cell|>|<cell|<math|\<gg\>>>|<cell|<key|\<gtr\>
  \<gtr\>>>|<cell|>|<cell|<math|\<asymp\>>>|<cell|<key|=
  var>>|<cell|>|<cell|<math|<around*|\<\|\|\>||\<nobracket\>>>>|<cell|<key|\|
  \| var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\ll>>|<cell|>|<cell|>|<cell|<markup|\\gg>>|<cell|>|<cell|>|<cell|<markup|\\asymp>>|<cell|>|<cell|>|<cell|<markup|\\parallel>>|<cell|>>|<row|<cell|<math|\<subset\>>>|<cell|<key|\<less\>
  var var>>|<cell|>|<cell|<math|\<supset\>>>|<cell|<key|\<gtr\> var
  var><compound|markup|>>|<cell|>|<cell|<math|\<approx\>>>|<cell|<key|~
  ~>>|<cell|>|<cell|<math|>\<join\>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<markup|\\subset>>|<cell|>|<cell|>|<cell|<markup|\\supset>>|<cell|>|<cell|>|<cell|<markup|\\approx>>|<cell|>|<cell|>|<cell|<todo|<markup|\\bowtie>>>|<cell|>>|<row|<cell|<math|\<subseteq\>>>|<cell|<key|\<less\>
  var var =>>|<cell|>|<cell|<math|\<supseteq\>>>|<cell|<key|\<gtr\> var var
  =>>|<cell|>|<cell|<math|\<cong\>>>|<cell|<key|~
  =>>|<cell|>|<cell|\<Bowtie\>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<markup|\\subseteq>>|<cell|>|<cell|>|<cell|<markup|\\supseteq>>|<cell|>|<cell|>|<cell|<markup|\\cong>>|<cell|>|<cell|>|<cell|<todo|<markup|\\Join>*><compound|markup|>>|<cell|>>|<row|<cell|<math|\<sqsubset\>><compound|markup|>>|<cell|<key|\<less\>
  var var var var>>|<cell|>|<cell|<math|\<sqsupset\>>>|<cell|<key|\<gtr\> var
  var var var>>|<cell|>|<cell|<math|\<neq\>>>|<cell|<key|=
  />>|<cell|>|<cell|<math|\<smile\>>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<todo|<markup|\\sqsubset>*>>|<cell|>|<cell|>|<cell|<todo|<markup|\\sqsupset>*>>|<cell|>|<cell|>|<cell|<markup|\\neq>>|<cell|>|<cell|>|<cell|<markup|\\smile>>|<cell|>>|<row|<cell|<math|\<sqsubseteq\>>>|<cell|<key|\<less\>
  var var var var =>>|<cell|>|<cell|<math|\<sqsupseteq\>>>|<cell|<key|\<gtr\>
  var var var var =>>|<cell|>|<cell|<math|\<doteq\>>>|<cell|<key|.
  =>>|<cell|>|<cell|<math|\<frown\>>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<markup|\\sqsubseteq>>|<cell|>|<cell|>|<cell|<markup|\\sqsupseteq>>|<cell|>|<cell|>|<cell|<todo|<markup|\\doteq>>>|<cell|>|<cell|>|<cell|<markup|\\frown>>|<cell|>>|<row|<cell|<math|\<in\>>>|<cell|<key|\<less\>
  var>>|<cell|>|<cell|<math|\<ni\>>>|<cell|<key|\<gtr\>
  var>>|<cell|>|<cell|<math|\<propto\>>>|<cell|<key|@ @ var
  var>>|<cell|>|<cell|<math|=>>|<cell|<key|=>>|<cell|>>|<row|<cell|>|<cell|<markup|\\in>>|<cell|>|<cell|>|<cell|<markup|\\ni>>|<cell|>|<cell|>|<cell|<markup|\\propto>>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|<math|\<vdash\>>>|<cell|<key|\|
  var ->>|<cell|>|<cell|<math|\<dashv\>>>|<cell|<key|- \|
  var>>|<cell|>|<cell|<math|\<less\>>>|<cell|<key|\<less\>>>|<cell|>|<cell|<math|\<gtr\>>>|<cell|<key|\<gtr\>>>|<cell|>>|<row|<cell|>|<cell|<markup|\\vdash>>|<cell|>|<cell|>|<cell|<markup|\\dashv>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|<math|:>>|<cell|<key|:>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>>
    Relation Symbols
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|<math|,>>|<cell|<key|,>>|<cell|>|<cell|<math|;>>|<cell|<key|;>>|<cell|>|<cell|<math|:>>|<cell|<key|:>>|<cell|>|<cell|<math|.>>|<cell|>|<cell|>|<cell|<math|.>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|<todo|<markup|\\colon>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\ldotp>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\cdotp>><compound|markup|>>>>>>>
    Punctuation Symbols
  </big-table>

  <\big-table|<tabular|<tformat|<cwith|1|1|1|1|cell-halign|c>|<cwith|3|3|5|5|cell-valign|b>|<cwith|15|15|2|2|cell-valign|b>|<cwith|7|7|2|2|cell-valign|b>|<table|<row|<cell|<math|\<leftarrow\>>>|<cell|<key|\<less\>
  ->>|<cell|>|<cell|<math|\<longleftarrow\>>>|<cell|<key|\<less\> -
  ->>|<cell|>|<cell|<math|\<uparrow\>>>|<cell|<key|\<less\> -
  var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\leftarrow>>|<cell|>|<cell|>|<cell|<markup|\\longleftarrow>>|<cell|>|<cell|>|<cell|<markup|\\uparrow>>|<cell|>>|<row|<cell|<math|\<Leftarrow\>>>|<cell|<key|\<less\>
  = var var var>>|<cell|>|<cell|<math|\<Longleftarrow\>>>|<cell|<key|\<less\>
  = =>>|<cell|>|<cell|<math|\<Uparrow\>>>|<cell|<key|= \<gtr\> var
  var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\Leftarrow>>|<cell|>|<cell|>|<cell|<todo|<markup|\\Longleftarrow>>>|<cell|>|<cell|>|<cell|<markup|\\Uparrow>>|<cell|>>|<row|<cell|<math|\<rightarrow\>>>|<cell|<key|-
  \<gtr\>>>|<cell|>|<cell|<math|\<longrightarrow\>>>|<cell|<key|- -
  \<gtr\>>>|<cell|>|<cell|<math|\<downarrow\>>>|<cell|<key|- \<gtr\>
  var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\rightarrow>>|<cell|>|<cell|>|<cell|<markup|\\longrightarrow>>|<cell|>|<cell|>|<cell|<markup|\\downarrow>>|<cell|>>|<row|<cell|<math|\<Rightarrow\>>>|<cell|<key|=
  \<gtr\>>>|<cell|>|<cell|<math|\<Longrightarrow\>>>|<cell|<key|= =
  \<gtr\>>>|<cell|>|<cell|<math|\<Downarrow\>>>|<cell|<key|= \<gtr\>
  var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\Rightarrow>>|<cell|>|<cell|>|<cell|<todo|<markup|\\Longrightarrow>>>|<cell|>|<cell|>|<cell|<markup|\\Downarrow>>|<cell|>>|<row|<cell|<math|\<leftrightarrow\>>>|<cell|<key|\<less\>
  - \<gtr\>>>|<cell|>|<cell|<math|\<longleftrightarrow\>>>|<cell|<key|\<less\>
  - - \<gtr\>>>|<cell|>|<cell|<math|\<updownarrow\>>>|<cell|<key|\<less\> -
  \<gtr\> var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\leftrightarrow>>|<cell|>|<cell|>|<cell|<markup|\\longleftrightarrow>>|<cell|>|<cell|>|<cell|<markup|\\updownarrow>>|<cell|>>|<row|<cell|<math|\<Leftrightarrow\>>>|<cell|<key|\<less\>
  = \<gtr\>>>|<cell|>|<cell|<math|\<Longleftrightarrow\>>>|<cell|<key|\<less\>
  = = \<gtr\>>>|<cell|>|<cell|<math|\<Updownarrow\>>>|<cell|<key|\<less\> =
  \<gtr\> var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\Leftrightarrow>>|<cell|>|<cell|>|<cell|<todo|<markup|\\Longleftrightarrow>>>|<cell|>|<cell|>|<cell|<markup|\\Updownarrow>>|<cell|>>|<row|<cell|<math|\<mapsto\>>>|<cell|<key|\|
  - \<gtr\>>>|<cell|>|<cell|<math|\<longmapsto\>>>|<cell|<key|\| - -
  \<gtr\>>>|<cell|>|<cell|<math|\<nearrow\>>>|<cell|<key|- \<gtr\> var var
  var var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\mapsto>>|<cell|>|<cell|>|<cell|<markup|\\longmapsto>>|<cell|>|<cell|>|<cell|<markup|\\nearrow>>|<cell|>>|<row|<cell|<math|\<hookleftarrow\>>>|<cell|<key|\<less\>
  - \| var>>|<cell|>|<cell|<math|\<hookrightarrow\>>>|<cell|<key|\| - \<gtr\>
  var>>|<cell|>|<cell|<math|\<searrow\>>>|<cell|<key|- \<gtr\> var var
  var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\hookleftarrow>>|<cell|>|<cell|>|<cell|<markup|\\hookrightarrow>>|<cell|>|<cell|>|<cell|<markup|\\searrow>>|<cell|>>|<row|<cell|<math|\<leftharpoonup\>>>|<cell|<key|/
  - var>>|<cell|>|<cell|<math|\<rightharpoonup\>>>|<cell|<key|- / var
  var>>|<cell|>|<cell|<math|\<swarrow\>>>|<cell|<key|\<less\> - var var var
  var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\leftharpoonup>>|<cell|>|<cell|>|<cell|<markup|\\rightharpoonup>>|<cell|>|<cell|>|<cell|<markup|\\swarrow>>|<cell|>>|<row|<cell|<math|\<leftharpoondown\>>>|<cell|<key|/
  - var var>>|<cell|>|<cell|<math|\<rightharpoondown\>>>|<cell|<key|- /
  var>>|<cell|>|<cell|<math|\<nwarrow\>>>|<cell|<key|\<less\> - var var
  var>>|<cell|>>|<row|<cell|>|<cell|<markup|\\leftharpoondown>>|<cell|>|<cell|>|<cell|<markup|\\rightharpoondown>>|<cell|>|<cell|>|<cell|<markup|\\nwarrow>>|<cell|>>|<row|<cell|<math|\<rightleftharpoons\>>>|<cell|<key|-
  \<gtr\> \<less\> - var>>|<cell|>|<cell|<math|\<rightsquigarrow\>>>|<cell|<key|~
  \<gtr\>>>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<markup|\\rightleftharpoons>>|<cell|>|<cell|>|<cell|<todo|<markup|\\leadsto>*>>|<cell|>|<cell|>|<cell|>|<cell|>>>>>>
    Arrow Symbols
  </big-table>

  <\big-table|<tabular|<tformat|<cwith|5|5|4|5|cell-background|#afa>|<cwith|18|18|4|5|cell-background|#afa>|<table|<row|<cell|<math|\<ldots\>>>|<cell|<key|.
  .>>|<cell|>|<cell|<math|\<cdots\>>>|<cell|<key|. .
  var>>|<cell|>|<cell|<math|\<vdots\>>>|<cell|<key|. . var var var
  >>|<cell|>|<cell|<math|\<ddots\>>>|<cell|<key|. . Shift+Tab
  Shift+Tab>>>|<row|<cell|>|<cell|<markup|\\ldots>>|<cell|>|<cell|>|<cell|<markup|\\cdots>>|<cell|>|<cell|>|<cell|<markup|\\vdots>>|<cell|>|<cell|>|<cell|<markup|\\ddots>>>|<row|<cell|<math|\<aleph\>>>|<cell|<key|A
  var var var>>|<cell|>|<cell|<math|<lprime|'>>>|<cell|<key|'>>|<cell|>|<cell|<math|\<forall\>>>|<cell|<key|A
  var var>>|<cell|>|<cell|<math|\<infty\>>>|<cell|<key|@
  @>>>|<row|<cell|>|<cell|<markup|\\aleph>>|<cell|>|<cell|>|<cell|<todo|<markup|\\prime>>>|<cell|>|<cell|>|<cell|<markup|\\forall>>|<cell|>|<cell|>|<cell|<markup|\\infty>>>|<row|<cell|<math|\<hbar\>>>|<cell|<key|h
  var var>>|<cell|>|<cell|<math|\<emptyset\>>>|<cell|>|<cell|>|<cell|<math|\<exists\>>>|<cell|<key|E
  var var>>|<cell|>|<cell|<math|\<box\>>>|<cell|<key|@
  var>>>|<row|<cell|>|<cell|<markup|\\hbar>>|<cell|>|<cell|>|<cell|<markup|\\emptyset>>|<cell|>|<cell|>|<cell|<markup|\\exists>>|<cell|>|<cell|>|<cell|<todo|<markup|\\Box>*>>>|<row|<cell|<math|\<imath\>>>|<cell|<key|i
  var var var>>|<cell|>|<cell|<math|\<nabla\>>>|<cell|<key|V var
  var>>|<cell|>|<cell|<math|\<neg\>>>|<cell|<key|!
  var>>|<cell|>|<cell|<math|>⬦>|<cell|>>|<row|<cell|>|<cell|<markup|\\imath>>|<cell|>|<cell|>|<cell|<markup|\\nabla>>|<cell|>|<cell|>|<cell|<markup|\\neg>>|<cell|>|<cell|>|<cell|<todo|<markup|\\Diamond>*>>>|<row|<cell|<math|\<jmath\>>>|<cell|<key|j
  var var>>|<cell|>|<cell|<math|<sqrt|>>>|<cell|<key|escape escape
  s>>|<cell|>|<cell|<math|\<flat\>>>|<cell|<key|b var
  var>>|<cell|>|<cell|<math|\<triangle\>>>|<cell|<math|>>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|<key*|escape
  escape s>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<markup|\\jmath>>|<cell|>|<cell|>|<cell|<todo|<markup|\\surd>>>|<cell|>|<cell|>|<cell|<markup|\\flat>>|<cell|>|<cell|>|<cell|<markup|\\triangle>>>|<row|<cell|<math|\<ell\>>>|<cell|<key|l
  var var var>>|<cell|>|<cell|<math|\<top\>>>|<cell|<key|T var
  var>>|<cell|>|<cell|<math|\<natural\>>>|<cell|<key|# var
  var>>|<cell|>|<cell|<math|\<clubsuit\>>>|<cell|<key|\<less\> \<gtr\> var
  var var var>>>|<row|<cell|>|<cell|<markup|\\ell>>|<cell|>|<cell|>|<cell|<markup|\\top>>|<cell|>|<cell|>|<cell|<markup|\\natural>>|<cell|>|<cell|>|<cell|<markup|\\clubsuit>>>|<row|<cell|<math|\<wp\>>>|<cell|<key|P
  var var>>|<cell|>|<cell|<math|\<bot\>>>|<cell|<key|T var var var
  >>|<cell|>|<cell|<math|\<sharp\>>>|<cell|<key|#
  var>>|<cell|>|<cell|<math|\<diamondsuit\>>>|<cell|<key|\<less\> \<gtr\>
  var>>>|<row|<cell|>|<cell|<markup|\\wp>>|<cell|>|<cell|>|<cell|<markup|\\bot>>|<cell|>|<cell|>|<cell|<markup|\\sharp>>|<cell|>|<cell|>|<cell|<markup|\\diamondsuit>>>|<row|<cell|<math|\<Re\>>>|<cell|<key|R
  var var>>|<cell|>|<cell|<math|\<\|\|\>>>|<cell|<key|\| \|
  var>>|<cell|>|<cell|<math|\<backslash\>>>|<cell|<key|\\
  var>>|<cell|>|<cell|<math|\<heartsuit\>>>|<cell|<key|\<less\> \<gtr\> var
  var>>>|<row|<cell|>|<cell|<markup|\\Re>>|<cell|>|<cell|>|<cell|<markup|\\\|>>|<cell|>|<cell|>|<cell|<markup|\\backslash>>|<cell|>|<cell|>|<cell|<markup|\\heartsuit>>>|<row|<cell|<math|\<Im\>>>|<cell|<key|I
  var var>>|<cell|>|<cell|<math|\<angle\>>>|<cell|>|<cell|>|<cell|<math|\<partial\>>>|<cell|<key|d
  var var var>>|<cell|>|<cell|<math|\<spadesuit\>>>|<cell|<key|\<less\>
  \<gtr\> var var var>>>|<row|<cell|>|<cell|<markup|\\Im>>|<cell|>|<cell|>|<cell|<markup|\\angle>>|<cell|>|<cell|>|<cell|<markup|\\partial>>|<cell|>|<cell|>|<cell|<markup|\\spadesuit>>>|<row|<cell|<math|\<Mho\>>>|<cell|<key|W
  var var>>|<cell|>|<cell|<math|.>>|<cell|<key|.>>|<cell|>|<cell|<math|<around*|\|||\<nobracket\>>>>|<cell|<key|\|
  var var>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<todo|<markup|\\mho>*>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>>
    Miscellaneous Symbols
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|<math|<big|sum>>>|<cell|<key|S-F5
  S>>|<cell|>|<cell|<math|<big|cap>>>|<cell|<key|S-F5
  N>>|<cell|>|<cell|<math|<big|odot>>>|<cell|<key|S-F5 @
  .>>|<cell|>>|<row|<cell|>|<cell|<markup|\\sum>>|<cell|>|<cell|>|<cell|<markup|\\bigcap>>|<cell|>|<cell|>|<cell|<markup|\\bigodot>>|<cell|>>|<row|<cell|<math|<big|prod>>>|<cell|<key|S-F5
  P>>|<cell|>|<cell|<math|<big|cup>>>|<cell|<key|S-F5
  U>>|<cell|>|<cell|<math|<big|otimes>>>|<cell|<key|S-F5 @
  *>>|<cell|>>|<row|<cell|>|<cell|<markup|\\prod>>|<cell|>|<cell|>|<cell|<markup|\\bigcup>>|<cell|>|<cell|>|<cell|<math|<markup|\\bigotimes>>>|<cell|>>|<row|<cell|<math|<big|amalg>>>|<cell|<key|S-F5
  A>>|<cell|>|<cell|<math|<big|sqcup>>>|<cell|<key|S-F5 U
  var>>|<cell|>|<cell|<math|<big|oplus>>>|<cell|<key|S-F5 @
  +>>|<cell|>>|<row|<cell|>|<cell|<markup|\\coprod>>|<cell|>|<cell|>|<cell|<markup|\\bigsqcup>>|<cell|>|<cell|>|<cell|<markup|\\bigoplus>>|<cell|>>|<row|<cell|<math|<big|int>>>|<cell|<key|S-F5
  I>>|<cell|>|<cell|<math|<big|vee>>>|<cell|<key|S-F5
  V>>|<cell|>|<cell|<math|<big|pluscup>>>|<cell|<math|><key|S-F5 U
  +>>|<cell|>>|<row|<cell|>|<cell|<markup|\\int>>|<cell|>|<cell|>|<cell|<markup|\\bigvee>>|<cell|>|<cell|>|<cell|<todo|<markup|\\biguplus>>>|<cell|>>|<row|<cell|<math|<big|oint>>>|<cell|<key|S-F5
  O>>|<cell|>|<cell|<math|<big|wedge>>>|<cell|<key|S-F5
  W>>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<markup|\\oint>>|<cell|>|<cell|>|<cell|<markup|\\bigwedge>>|<cell|>|<cell|>|<cell|>|<cell|>>>>>>
    Variable-sized Symbols
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>>>>>>
    \;
  </big-table>

  <\note*>
    <menu|Edit|Preferences|Keyboard|Automatic brackets> is enabled in math
    mode by default. That's why when you type <key|(> in math mode and get
    <math|<around*|(||)>>. You can go right and then delete back to delete
    <math|<around*|\<nobracket\>||)>> or disable <menu|Automatic brackets>
    and then type <key|(>.
  </note*>

  <\big-table|<tformat|<table|<row|<cell|<math|<around*|(||\<nobracket\>>>>|<key|(>|<cell|>|<cell|<math|<around*|\<nobracket\>||)>>>|<cell|<key|)>>|<cell|>|<cell|<math|\<uparrow\>>>|<cell|<key|\<less\>
  - var>>|<cell|>|<cell|<math|\<Uparrow\>>>|<cell|<key|= \<gtr\> var
  var>>>|<row|<cell|>|<cell|<markup|(>>|<cell|>|<cell|>|<cell|<markup|)>>|<cell|>|<cell|>|<cell|<markup|\\uparrow><compound|markup|><compound|markup|><compound|markup|><compound|markup|><compound|markup|>>|<cell|>|<cell|>|<cell|<markup|\\Uparrow>>>|<row|<math|<tformat|<table|<row|<cell|<around*|[||\<nobracket\>>>>>>>|<cell|<key|]>>|<cell|>|<cell|<math|<around*|\<nobracket\>||]>>>|<cell|<key|]>>|<cell|>|<cell|<math|\<downarrow\>>>|<cell|<key|-
  \<gtr\> var>>|<cell|>|<cell|<math|\<Downarrow\>>>|<cell|<key|= \<gtr\>
  var>>>|<row|<cell|>|<cell|<markup|[>>|<cell|>|<cell|>|<cell|<markup|]>>|<cell|>|<cell|>|<cell|<markup|\\downarrow>>|<cell|>|<cell|>|<cell|<markup|\\Downarrow>>>|<row|<cell|<math|<around*|{||\<nobracket\>>>>|<cell|<key|{>>|<cell|>|<cell|<math|<around*|\<nobracket\>||}>>>|<cell|<key|}>>|<cell|>|<cell|<math|\<updownarrow\>>>|<cell|<key|\<less\>
  - \<gtr\> var>>|<cell|>|<cell|<math|\<Updownarrow\>>>|<cell|<key|\<less\> =
  \<gtr\> var>>>|<row|<cell|>|<cell|<markup|{>>|<cell|>|<cell|>|<cell|<markup|}>>|<cell|>|<cell|>|<cell|<markup|\\updownarrow>>|<cell|>|<cell|>|<cell|<markup|\\Updownarrow>>>|<row|<cell|<math|\<lfloor\>>>|<cell|<key|\|
  .>>|<cell|>|<cell|<math|\<rfloor\>>>|<cell|<key|.
  \|>>|<cell|>|<cell|<math|<around*|\<lceil\>||\<nobracket\>>>>|<cell|<key|\|
  ‘>>|<cell|>|<math|\<rceil\>>|<cell|<key|‘
  \|>>>|<row|<cell|>|<cell|<markup|\\lfloor>>|<cell|>|<cell|>|<cell|<markup|\\rfloor>>|<cell|>|<cell|>|<cell|<markup|\\lceil>>|<cell|>|<cell|>|<cell|<markup|\\rceil>>>|<row|<cell|<math|<around*|\<langle\>||\<nobracket\>>>>|<cell|<key|\<less\>
  S-var>>|<cell|>|<cell|<math|\<rangle\>>>|<cell|<key|\<gtr\>
  S-var>>|<cell|>|<cell|<math|/>>|<cell|<key|/>>|<cell|>|<cell|<math|\\>>|<cell|<key|\\
  var>>>|<row|<cell|>|<cell|<markup|\\langle>>|<cell|>|<cell|>|<cell|<markup|\\rangle>>|<cell|>|<cell|>|<cell|<markup|/>>|<cell|>|<cell|>|<cell|<markup|\\backslash>>>|<row|<cell|<math|\|>>|<cell|<key|\|
  var>>|<cell|>|<cell|<math|\<\|\|\>>>|<cell|<key|\| \|
  var>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|<markup|\\\|>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>><tabular|<tformat|<table|<row|<cell|>>>>>>
    Delimiters
  </big-table>

  <\big-table|<tabular|<tformat|<cwith|4|4|6|6|cell-halign|c>|<table|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|<math|<around*|\|||\<nobracket\>>>>|<cell|>|<cell|>|<cell|<math|<around*|\|||\|>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<todo|<markup|\\arrowvert>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\Arrowvert>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>>
    Large Delimiters
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|<math|<wide|a|^>>>|<cell|<key|escape
  escape ^>>|<cell|>|<cell|<math|<wide|a|\<acute\>>>>|<cell|<math|<rsup|>><key|escape
  escape '>>|<cell|>|<cell|<math|<wide|a|\<bar\>>>>|<cell|<key|escape escape
  B>>|<cell|>|<cell|<math|<wide|a|\<dot\>>>>|<cell|<key|escape escape
  .>>|<cell|>>|<row|<cell|>|<cell|<key*|escape escape
  ^>>|<cell|>|<cell|>|<cell|<math|<rsup|>><key*|escape escape
  '>>|<cell|>|<cell|>|<cell|<key*|escape escape
  B>>|<cell|>|<cell|>|<cell|<key*|escape escape
  .>>|<cell|>>|<row|<cell|>|<cell|<markup|\\hat>>|<cell|>|<cell|>|<cell|<markup|\\acute>>|<cell|>|<cell|>|<cell|<markup|\\bar>>|<cell|>|<cell|>|<cell|<markup|\\dot>>|<cell|>>|<row|<cell|<math|<wide|a|\<check\>>>>|<cell|<key|escape
  escape C>>|<cell|>|<cell|<math|<wide|a|\<grave\>>>>|<cell|<key|escape
  escape `>>|<cell|>|<cell|<math|<wide|a|\<vect\>>>>|<cell|<key|escape escape
  V>>|<cell|>|<cell|<math|<wide|a|\<ddot\>>>>|<cell|<key|escape escape
  ">>|<cell|>>|<row|<cell|>|<cell|<key*|escape escape
  C>>|<cell|>|<cell|>|<cell|<key*|escape escape
  `>>|<cell|>|<cell|>|<cell|<key*|escape escape
  V>>|<cell|>|<cell|>|<cell|<key*|escape escape
  ">>|<cell|>>|<row|<cell|>|<cell|<markup|\\check>>|<cell|>|<cell|>|<cell|<markup|\\grave>>|<cell|>|<cell|>|<cell|<todo|<markup|\\vec>>>|<cell|>|<cell|>|<cell|<markup|\\ddot>>|<cell|>>|<row|<cell|<math|<wide|a|\<breve\>>>>|<cell|<key|escape
  escape U>>|<cell|>|<cell|<math|<wide|a|~>>>|<cell|<key|escape escape
  ~>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<key*|escape
  escape U>>|<cell|>|<cell|>|<cell|<key*|escape escape
  ~>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<markup|\\breve>>|<cell|>|<cell|>|<cell|<markup|\\tilde>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>>
    Math Mode accents
  </big-table>

  <\big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-valign|c>|<table|<row|<cell|<math|<wide|abc|~>>>|<cell|<key|A-~>>|<cell|>|<cell|<math|<wide|abc|^>>>|<cell|<key|A-^>>|<cell|>|<cell|<math|<wide|abc|\<wide-varleftarrow\>>>>|<cell|<key|A-o
  \<less\>>>|<cell|>|<cell|<math|<wide|abc|\<wide-varrightarrow\>>>>|<cell|<key|A-o
  \<gtr\>>>>|<row|<cell|>|<cell|<markup|\\widetilde>>|<cell|>|<cell|>|<cell|<markup|\\widehat>>|<cell|>|<cell|>|<cell|<todo|<markup|\\overleftarrow>><compound|markup|>>|<cell|>|<cell|>|<cell|<todo|<markup|\\overrightarrow>>>>|<row|<cell|<math|<wide|abc|\<wide-bar\>>>>|<cell|<key|A-o
  ->>|<cell|>|<cell|<math|<underline|abc>>>|<cell|<key|A-u
  ->>|<cell|>|<cell|<math|<wide|abc|\<wide-overbrace\>>>>|<cell|<key|A-o
  {>>|<cell|>|<cell|<math|<wide*|abc|\<wide-underbrace\>>>>|<cell|<key|A-u
  }>>>|<row|<cell|>|<cell|<markup|\\overline>>|<cell|>|<cell|>|<cell|<markup|\\underline>>|<cell|>|<cell|>|<cell|<markup|\\overbrace>>|<cell|>|<cell|>|<cell|<markup|\\underbrace>>>|<row|<cell|<math|<sqrt|abc>>>|<cell|<key|A-s>>|<cell|>|<cell|<math|<sqrt|abc|n>>>|<cell|<key|A-s
  var>>|<cell|>|<cell|<math|f<rprime|'>>>|<cell|<key|f
  '>>|<cell|>|<cell|<math|<frac|abc|xyz>>>|<cell|<key|A-F>>>|<row|<cell|>|<cell|<markup|\\sqrt>>|<cell|>|<cell|>||<cell|>|<cell|>|<cell|<markup|f'>>|<cell|>|<cell|>|<cell|<markup|\\frac>>>>>><tabular|<tformat|<table|<row|<cell|>>>>>>
    Some other constructions
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|<math|\<ulcorner\>>>|<cell|>|<cell|>|<cell|<math|\<urcorner\>>>|<cell|>|<cell|>|<cell|<math|\<llcorner\>>>|<cell|>|<cell|>|<cell|<math|\<lrcorner\>>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<markup|\\ulcorner>>|<cell|>|<cell|>|<cell|<markup|\\urcorner>>|<cell|>|<cell|>|<cell|<markup|\\llcorner>>|<cell|>|<cell|>|<cell|<markup|\\lrcorner>>|<cell|>>>>>>
    AMS Delimiters
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|<math|\<leftleftarrows\>>>|<cell|<key|\<less\>
  - \<less\> ->>|<cell|>|<cell|<math|\<leftrightarrows\>>>|<cell|<key|\<less\>
  - - \<gtr\> var var>>>|<row|<cell|>|<cell|<todo|<markup|\\dashrightarrow>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\dashleftarrow>>>|<cell|>|<cell|>|<cell|<markup|\\leftleftarrows>>|<cell|>|<cell|>|<cell|<markup|\\leftrightarrows>>>|<row|<cell|<math|\<Lleftarrow\>>>|<cell|<key|\<less\>
  - var var var var>>|<cell|>|<cell|<math|\<twoheadleftarrow\>>>|<cell|>|<cell|>|<cell|<math|\<leftarrowtail\>>>|<cell|>|<cell|>|<cell|<math|\<looparrowleft\>>>|<cell|>>|<row|<cell|>|<cell|<markup|\\Lleftarrow>>|<cell|>|<cell|>|<cell|<markup|\\twoheadleftarrow>>|<cell|>|<cell|>|<cell|<markup|\\leftarrowtail>>|<cell|>|<cell|>|<cell|<markup|\\looparrowleft>>>|<row|<cell|<math|\<leftrightharpoons\>>>|<cell|>|<cell|>|<cell|<math|\<curvearrowleft\>>>|<cell|>|<cell|>|<cell|\<circlearrowleft\>>|<cell|>|<cell|>|<cell|<math|\<Lsh\>>>|<cell|>>|<row|<cell|>|<cell|<markup|\\leftrightharpoons>>|<cell|>|<cell|>|<cell|<markup|\\curvearrowleft>>|<cell|>|<cell|>|<cell|<markup|\\circlearrowleft>>|<cell|>|<cell|>|<cell|<markup|\\Lsh>>>|<row|<cell|<math|\<upuparrows\>>>|<cell|>|<cell|>|<cell|<math|\<upharpoonleft\>>>|<cell|>|<cell|>|<cell|<math|\<downharpoonleft\>>>|<cell|>|<cell|>|<cell|<math|\<multimap\>>>|<cell|>>|<row|<cell|>|<cell|<markup|\\upuparrows>>|<cell|>|<cell|>|<cell|<markup|\\upharpoonleft>>|<cell|>|<cell|>|<cell|<markup|\\downharpoonleft>>|<cell|>|<cell|>|<cell|<markup|\\multimap>>>|<row|<cell|<math|\<leftrightsquigarrow\>>>|<cell|>|<cell|>|<cell|<math|\<rightrightarrows\>>>|<cell|>|<cell|>|<cell|<math|\<rightleftarrows\>>>|<cell|>|<cell|>|<cell|<math|\<rightrightarrows\>>>|<cell|>>|<row|<cell|>|<cell|<markup|\\leftrightsquigarrow>>|<cell|>|<cell|>|<cell|<markup|\\rightrightarrows>>|<cell|>|<cell|>|<cell|<markup|\\rightleftarrows>>|<cell|>|<cell|>|<cell|<markup|\\rightrightarrows>>>|<row|<cell|<math|\<rightleftarrows\>>>|<cell|>|<cell|>|<cell|<math|\<twoheadrightarrow\>>>|<cell|>|<cell|>|<cell|<math|\<rightarrowtail\>>>|<cell|>|<cell|>|<cell|<math|\<looparrowright\>>>|<cell|>>|<row|<cell|>|<cell|<markup|\\rightleftarrows>>|<cell|>|<cell|>|<cell|<markup|\\twoheadrightarrow>>|<cell|>|<cell|>|<cell|<markup|\\rightarrowtail>>|<cell|>|<cell|>|<cell|<markup|\\looparrowright>>>|<row|<cell|<math|\<rightleftharpoons\>>>|<cell|>|<cell|>|<cell|<math|\<curvearrowright\>>>|<cell|>|<cell|>|<cell|<math|\<circlearrowright\>>>|<cell|>|<cell|>|<cell|<math|\<Rsh\>>>|<cell|>>|<row|<cell|>|<cell|<markup|\\rightleftharpoons>>|<cell|>|<cell|>|<cell|<markup|\\curvearrowright>>|<cell|>|<cell|>|<cell|<markup|\\circlearrowright>>|<cell|>|<cell|>|<cell|<markup|\\Rsh>>>|<row|<cell|<math|\<downdownarrows\>>>|<cell|>|<cell|>|<cell|<math|\<upharpoonright\>>>|<cell|>|<cell|>|<cell|<math|\<downharpoonright\>>>|<cell|>|<cell|>|<cell|<math|\<rightsquigarrow\>>>|<cell|>>|<row|<cell|>|<cell|<markup|\\downdownarrows>>|<cell|>|<cell|>|<cell|<markup|\\upharpoonright>>|<cell|>|<cell|>|<cell|<markup|\\downharpoonright>>|<cell|>|<cell|>|<cell|<markup|\\rightsquigarrow>>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>>
    AMS Arrows
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>>>>>>
    \;
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>>>>>>
    \;
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>>>>>>
    \;
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>>>>>>
    \;
  </big-table>

  <\big-table|<tabular|<tformat|<cwith|1|16|1|8|cell-halign|l>|<cwith|4|4|2|2|cell-valign|b>|<cwith|5|5|2|2|cell-valign|b>|<cwith|9|12|5|5|cell-halign|l>|<table|<row|<cell|\<barwedge\>>|<cell|<key|-
  &>>|<cell|>|<cell|\<circledcirc\>>|<cell|>|<cell|>|<cell|\<intercal\>>|<cell|<todo|<key|T
  tab tab tab tab tab tab tab tab>>>>|<row|<cell|>|<cell|<markup|\\barwedge>>|<cell|>|<cell|>|<cell|<markup|\\circledcirc>>|<cell|>|<cell|>|<cell|<markup|\\intercal>>>|<row|<cell|\<boxdot\>>|<cell|<key|@
  tab .>>|<cell|>|<cell|\<circleddash\>>|<cell|<todo|<key|@ - tab
  tab>>>|<cell|>|<cell|\<leftthreetimes\>>|<cell|<key|T tab tab tab
  tab>>>|<row|<cell|>|<cell|<markup|\\boxdot>>|<cell|>|<cell|>|<cell|<markup|\\circleddash>>|<cell|>|<cell|>|<cell|<markup|\\leftthreetimes>>>|<row|<cell|\<boxminus\>>|<cell|<math|><key|@
  tab ->>|<cell|>|<cell|\<Cup\>>|<cell|<todo|<key|% tab
  %>>>|<cell|>|<cell|\<ltimes\>>|<cell|<key|\| tab
  *>>>|<row|<cell|>|<cell|<markup|\\boxminus>>|<cell|>|<cell|>|<cell|<markup|\\Cup>>|<cell|>|<cell|>|<cell|<markup|\\ltimes>>>|<row|<cell|\<boxplus\>>|<cell|<key|@
  tab +>>|<cell|>|<cell|\<curlyvee\>>|<cell|<key|% tab tab tab
  tab>>|<cell|>|<cell|\<rightthreetimes\>>|<cell|<key|T tab tab tab tab
  tab>>>|<row|<cell|>|<cell|<markup|\\boxplus>>|<cell|>|<cell|>|<cell|<markup|\\curlyvee>>|<cell|>|<cell|>|<cell|<markup|\\rightthreetimes>>>|<row|<cell|\<boxtimes\>>|<cell|<key|@
  tab *>>|<cell|>|<cell|\<curlywedge\>>|<cell|<key|& tab tab tab
  tab>>|<cell|>|<cell|\<rtimes\>>|<cell|<key|* tab
  \|>>>|<row|<cell|>|<cell|<markup|\\boxtimes>>|<cell|>|<cell|>|<cell|<markup|\\curlywedge>>|<cell|>|<cell|>|<cell|<markup|\\rtimes>>>|<row|<cell|\<Cap\>>|<cell|<math|><todo|<key|&
  tab &>>>|<cell|>|<cell|\<divideontimes\>>|<cell|<math|*><todo|<key|/ tab
  tab *>>>|<cell|>|<cell|\<smallsetminus\>>|<cell|>>|<row|<cell|>|<cell|<markup|\\Cap>>|<cell|>|<cell|>|<cell|<markup|\\divideontimes>>|<cell|>|<cell|>|<cell|<markup|\\smallsetminus>>>|<row|<cell|\<centerdot\>>|<cell|<math|\<nosymbol\><todo|<key|.
  tab \ tab tab tab>>>>|<cell|>|<cell|\<dotplus\>>|<cell|<key|.
  +>>|<cell|>|<cell|\<veebar\>>|<cell|<key|%
  ->>>|<row|<cell|>|<cell|<markup|\\centerdot>>|<cell|>|<cell|>|<cell|<markup|\\dotplus>>|<cell|>|<cell|>|<cell|<markup|\\veebar>>>|<row|<cell|\<circledast\>>|<cell|<key|@
  * tab>>|<cell|>|<cell|\<doublebarwedge\>>|<cell|<math|><todo|<key|=
  &>>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<markup|\\circledast>>|<cell|>|<cell|>|<cell|<markup|\\doublebarwedge>>|<cell|>|<cell|>|<cell|>>>>>>
    AMS Binary Operators
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>>>>>>
    \;
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>>>>>>
    \;
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>>>>>>
    \;
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>>>>>>
    \;
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>>>>>>
    \;
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>>>>>>
    \;
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|<math|<big|box>>>|<cell|>|<cell|>|<cell|<math|<big|curlyvee>>>|<cell|>|<cell|>|<cell|<math|<big|curlywedge>>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<todo|<markup|\\bigbox>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\bigcurlyvee>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\bigcurlywedge>>>|<cell|>>|<row|<cell|<math|<big|interleave>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|<math|<big|parallel>>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<todo|<markup|\\biginterleave>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\bignplus>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\bigparallel>>>|<cell|>>|<row|<cell|<math|<big|sqcap>>>|<cell|>|<cell|>|<cell|<math|<big|triangledown>>>|<cell|>|<cell|>|<cell|<math|<big|triangleup>>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<todo|<markup|\\bigsqcap>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\bigtriangledown>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\bigtriangleup>>>|<cell|>>>>>>
    <verbatim|stmaryrd> Large Binary Operators
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|<math|\<subsetplus\>>>|<cell|<key|\<less\>
  var var +>>|<cell|>|<cell|<math|\<subsetpluseq\>>>|<cell|<key|\<less\> var
  var + =>>|<cell|>>|<row|<cell|>|<cell|<todo|<markup|\\inplus>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\niplus>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\subsetplus>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\subsetpluseq>>>|<cell|>>|<row|<cell|<math|\<supsetplus\>>>|<cell|<key|\<gtr\>
  var var +>>|<cell|>|<cell|<math|\<supsetpluseq\>>>|<cell|<key|\<gtr\> var
  var + =>>|<cell|>|<cell|<math|\<trianglelefteqslant\>>>|<cell|<key|\<less\>
  \| var =>>|<cell|>|<cell|<math|\<trianglerighteqslant\>>>|<cell|<key|\|
  \<gtr\> var =>>|<cell|>>|<row|<cell|>|<cell|<todo|<markup|\\supsetplus>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\supsetpluseq>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\trianglelefteqslant>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\trianglerighteqslant>>>|<cell|>>>>>>
    <verbatim|stmaryrd> Binary Relations
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|<math|\<ntrianglelefteqslant\>>>|<cell|<key|\<less\>
  \| var = />>|<cell|>|<cell|<math|\<ntrianglerighteqslant\>>>|<cell|<key|\|
  \<gtr\> var = />>|<cell|>>|<row|<cell|>|<cell|<todo|<markup|\\ntrianglelefteqslant>>>|<cell|>|<cell|>|<cell|<todo|<markup|\\ntrianglerighteqslant>>>|<cell|>>>>>>
    <verbatim|stmaryrd> Negated Binary Relations
  </big-table>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>>>>>>
    Math Alphabets
  </big-table>
</body>

<\initial>
  <\collection>
    <associate|marked-color|#afa>
    <associate|page-medium|papyrus>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-10|<tuple|8|4>>
    <associate|auto-11|<tuple|8|4>>
    <associate|auto-12|<tuple|9|5>>
    <associate|auto-13|<tuple|10|5>>
    <associate|auto-14|<tuple|11|5>>
    <associate|auto-15|<tuple|12|5>>
    <associate|auto-16|<tuple|13|5>>
    <associate|auto-17|<tuple|14|6>>
    <associate|auto-18|<tuple|15|6>>
    <associate|auto-19|<tuple|16|6>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|17|6>>
    <associate|auto-21|<tuple|18|6>>
    <associate|auto-22|<tuple|19|6>>
    <associate|auto-23|<tuple|20|6>>
    <associate|auto-24|<tuple|21|6>>
    <associate|auto-25|<tuple|22|6>>
    <associate|auto-26|<tuple|23|7>>
    <associate|auto-27|<tuple|24|7>>
    <associate|auto-28|<tuple|25|7>>
    <associate|auto-29|<tuple|26|7>>
    <associate|auto-3|<tuple|2|2>>
    <associate|auto-30|<tuple|27|7>>
    <associate|auto-31|<tuple|28|7>>
    <associate|auto-32|<tuple|29|7>>
    <associate|auto-4|<tuple|3|3>>
    <associate|auto-5|<tuple|4|3>>
    <associate|auto-6|<tuple|5|3>>
    <associate|auto-7|<tuple|6|4>>
    <associate|auto-8|<tuple|7|4>>
    <associate|auto-9|<tuple|8|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|font-family|<quote|ss>|Edit>|<with|font-family|<quote|ss>|Preferences>|<with|font-family|<quote|ss>|Keyboard>|<with|font-family|<quote|ss>|Automatic
      brackets>>|<pageref|auto-10>>

      <tuple|<tuple|<with|font-family|<quote|ss>|Automatic
      brackets>>|<pageref|auto-11>>
    </associate>
    <\associate|table>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        Greek Letters
      </surround>|<pageref|auto-2>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|2>|>
        Binary Operation Symbols
      </surround>|<pageref|auto-3>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3>|>
        Relation Symbols
      </surround>|<pageref|auto-4>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4>|>
        Punctuation Symbols
      </surround>|<pageref|auto-5>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|5>|>
        Arrow Symbols
      </surround>|<pageref|auto-6>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|6>|>
        Miscellaneous Symbols
      </surround>|<pageref|auto-7>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|7>|>
        Variable-sized Symbols
      </surround>|<pageref|auto-8>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|8>|>
        \;
      </surround>|<pageref|auto-9>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|9>|>
        Delimiters
      </surround>|<pageref|auto-12>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|10>|>
        Large Delimiters
      </surround>|<pageref|auto-13>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|11>|>
        Math Mode accents
      </surround>|<pageref|auto-14>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|12>|>
        Some other constructions
      </surround>|<pageref|auto-15>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|13>|>
        AMS Delimiters
      </surround>|<pageref|auto-16>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|14>|>
        AMS Arrows
      </surround>|<pageref|auto-17>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|15>|>
        \;
      </surround>|<pageref|auto-18>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|16>|>
        \;
      </surround>|<pageref|auto-19>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|17>|>
        \;
      </surround>|<pageref|auto-20>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|18>|>
        \;
      </surround>|<pageref|auto-21>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|19>|>
        \;
      </surround>|<pageref|auto-22>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|20>|>
        \;
      </surround>|<pageref|auto-23>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|21>|>
        \;
      </surround>|<pageref|auto-24>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|22>|>
        \;
      </surround>|<pageref|auto-25>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|23>|>
        \;
      </surround>|<pageref|auto-26>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|24>|>
        \;
      </surround>|<pageref|auto-27>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|25>|>
        \;
      </surround>|<pageref|auto-28>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|26>|>
        <with|font-family|<quote|tt>|language|<quote|verbatim>|stmaryrd>
        Large Binary Operators
      </surround>|<pageref|auto-29>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|27>|>
        <with|font-family|<quote|tt>|language|<quote|verbatim>|stmaryrd>
        Binary Relations
      </surround>|<pageref|auto-30>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|28>|>
        <with|font-family|<quote|tt>|language|<quote|verbatim>|stmaryrd>
        Negated Binary Relations
      </surround>|<pageref|auto-31>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|29>|>
        Math Alphabets
      </surround>|<pageref|auto-32>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Math
      Symbols> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>