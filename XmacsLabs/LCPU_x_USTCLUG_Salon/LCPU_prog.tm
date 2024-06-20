<TeXmacs|2.1.2>

<style|<tuple|metropolis|narrow-multiply|doc>>

<\body>
  <\hide-preamble>
    <assign|lcpu|\<#5317\>\<#4EAC\>\<#5927\>\<#5B66\>Linux\<#4FF1\>\<#4E50\>\<#90E8\>>

    <assign|ustclug|\<#4E2D\>\<#56FD\>\<#79D1\>\<#5B66\>\<#6280\>\<#672F\>\<#5927\>\<#5B66\>Linux\<#7528\>\<#6237\>\<#534F\>\<#4F1A\>>

    <assign|ustcug|<macro|dep|\<#4E2D\>\<#56FD\>\<#79D1\>\<#5B66\>\<#6280\>\<#672F\>\<#5927\>\<#5B66\><arg|dep>\<#7528\>\<#6237\>\<#534F\>\<#4F1A\>>>

    <assign|scm-code|<\macro|body>
      <with|body-color|pastel green|<\pseudo-code>
        <scm|<arg|body>>
      </pseudo-code>>
    </macro>>

    \;

    <assign|red-star|<with|color|red|\<heartsuit\>>>

    <assign|fake-star|<with|color|red|\<#2661\>>>
  </hide-preamble>

  <\slideshow>
    <\slide>
      <title-slide|Prog mode in GNU <TeXmacs>||>
    </slide>

    <\slide>
      <\section-slide>
        Inline Code and Code Block
      </section-slide>
    </slide>

    <\slide>
      <tit|How to insert? (1/2)>

      \;

      <\itemize>
        <item>Inline Code

        <item>Code Block
      </itemize>

      <\question>
        How to do numbering?
      </question>

      <\question>
        How to change the code hightlighting?
      </question>

      No answers!

      \;

      Prog mode status: <value|red-star><value|red-star><value|fake-star><value|fake-star><value|fake-star>

      \;

      <marked|Join us and make Mogan Code!!!>
    </slide>

    <\slide>
      <tit|How to insert? (2/2)>

      \;

      <key|\<#2018\> \<#2018\> \<#2018\> var>

      <\session|scheme|default>
        <\unfolded-io|Scheme] >
          (kbd-map ("` ` ` p y"

          \ \ \ \ \ \ \ \ \ \ (make `python-code)))))
        <|unfolded-io>
          ("` ` ` p y")
        </unfolded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>

      \;

      \;
    </slide>

    <\slide>
      <tit|Code Highlighting>

      \;

      <hlink|plugins/code/progs/dot-lang.scm|https://gitee.com/XmacsLabs/mogan/blob/branch-1.1/plugins/code/progs/dot-lang.scm>

      <\scm-code>
        (tm-define (parser-feature lan key)

        \ \ (:require

        \ \ \ (and (== lan "dot") (== key "keyword")))

        \ \ `(,(string-\<gtr\>symbol key)

        \ \ \ \ (declare_type "graph" "node" "edge" "digraph" "subgraph")))
      </scm-code>

      <\dot-code>
        digraph G {

        \ \ \ node A, B C;

        \ \ \ A -\<gtr\> B;

        \ \ \ A -\<gtr\> C;

        }
      </dot-code>
    </slide>

    <\slide>
      \;

      <\section-slide>
        Code Editing
      </section-slide>
    </slide>

    <\slide>
      <tit|Bracket>

      \;

      <\scm-code>
        ()

        (())

        []

        {}
      </scm-code>
    </slide>

    <\slide>
      <tit|Yasnippet>

      \;

      <key|\\ l c p u>

      <value|lcpu>

      \;

      <key|\\ u s t c l u g>

      <value|ustclug>

      \;

      <key|\\ u s t c u g>

      <ustcug|<LaTeX>>

      <ustcug|\<#58A8\>\<#5E72\>>
    </slide>

    <\slide>
      <tit|Key Bindings>

      \;

      <\session|scheme|default>
        <\unfolded-io|Scheme] >
          (kbd-map

          \ \ ("p s v m"

          \ \ \ (begin

          \ \ \ \ (insert "public static int main() {}")

          \ \ \ \ (go-to-previous)

          \ \ \ \ (insert-return)

          \ \ \ \ (insert-raw-return)

          \ \ \ \ (go-to-previous))))
        <|unfolded-io>
          ("p s v m")
        </unfolded-io>

        <\input|Scheme] >
          \;
        </input>
      </session>

      \;
    </slide>
  </slideshow>
</body>

<\initial>
  <\collection>
    <associate|font|frak=TeX Gyre Pagella,cal=TeX Gyre
    Termes,math=roman,Fira>
    <associate|font-base-size|12>
    <associate|font-family|rm>
    <associate|info-flag|minimal>
    <associate|item-vsep|<macro|0fn>>
    <associate|page-border|attached>
    <associate|page-medium|paper>
    <associate|page-offset|1>
    <associate|page-packet|2>
    <associate|par-par-sep|0.2222fn>
    <associate|preamble|false>
  </collection>
</initial>