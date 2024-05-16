<TeXmacs|2.1.2>

<style|<tuple|beamer|no-page-numbers|chinese|python|s7>>

<\body>
  <\hide-preamble>
    <assign|dfn|<macro|x|<strong|<arg|x>>>>
  </hide-preamble>

  <\slideshow>
    <\slide>
      \;

      \;

      \;

      \;

      <doc-data|<doc-title|\<#96F6\>\<#57FA\>\<#7840\>SICP
      10>|<doc-author|<author-data|<author-name|>>>|<doc-author|<author-data|<author-name|\<#6C88\>\<#6D6A\>\<#718A\>\<#732B\>\<#513F\>>>>|<doc-author|<author-data|<author-name|MathAgape>>>|<doc-subtitle|\<#51FD\>\<#6570\>\<#5F0F\>\<#7F16\>\<#7A0B\>\<#4E09\>\<#677F\>\<#65A7\>>>
    </slide>

    <\slide>
      <tit|\<#96F6\>\<#57FA\>\<#7840\>SICP\<#FF1A\>\<#7B2C\>10\<#8BFE\>>

      <\wide-tabular>
        <tformat|<cwith|2|-1|1|-1|cell-height|40px>|<cwith|2|-1|1|-1|cell-vmode|exact>|<table|<row|<\cell>
          <\large>
            <strong|\<#6570\>\<#636E\>\<#62BD\>\<#8C61\>\<#5BFC\>\<#5F15\>>
          </large>
        </cell>|<\cell>
          <\large>
            <strong|Introduction to Data Abstractio>n
          </large>
        </cell>>|<row|<\cell>
          \<#5B9E\>\<#4F8B\>\<#FF1A\>\<#6709\>\<#7406\>\<#6570\>\<#7684\>\<#7B97\>\<#672F\>\<#8FD0\>\<#7B97\>
        </cell>|<\cell>
          Example: Arithmetic Operations for Rational Numbers
        </cell>>|<row|<\cell>
          \<#62BD\>\<#8C61\>\<#5C42\>\<#7EA7\>
        </cell>|<\cell>
          Abstraction Barriers
        </cell>>|<row|<\cell>
          \<#6570\>\<#636E\>\<#610F\>\<#5473\>\<#7740\>\<#4EC0\>\<#4E48\>
        </cell>|<\cell>
          What Is Meant by Data?
        </cell>>|<row|<\cell>
          <large|<strong|\<#5C42\>\<#6B21\>\<#6027\>\<#6570\>\<#636E\>\<#548C\><todo|\<#95ED\>\<#5305\>\<#6027\>\<#8D28\>>>>
        </cell>|<\cell>
          <large|<strong|Hierarchical Data and the Closure Property>>
        </cell>>|<row|<\cell>
          \<#5E8F\>\<#5217\>\<#7684\>\<#8868\>\<#793A\>
        </cell>|<\cell>
          Representing Sequences
        </cell>>|<row|<\cell>
          \<#5C42\>\<#6B21\>\<#6027\>\<#7ED3\>\<#6784\>
        </cell>|<\cell>
          Hierarchical Structures
        </cell>>|<row|<\cell>
          \<#5E8F\>\<#5217\>\<#4F5C\>\<#4E3A\>\<#4E00\>\<#79CD\>\<#7EA6\>\<#5B9A\>\<#7684\>\<#63A5\>\<#53E3\>
        </cell>|<\cell>
          Sequences as Conventional Interfaces
        </cell>>>>
      </wide-tabular>

      \;

      <strong|\<#5229\>\<#7528\>\<#51FD\>\<#6570\>\<#5F0F\>\<#7F16\>\<#7A0B\>\<#4E09\>\<#677F\>\<#65A7\>\<#FF08\>\<#6620\>\<#5C04\>/\<#8FC7\>\<#6EE4\>/\<#6298\>\<#53E0\>\<#FF09\>\<#548C\>\<#884D\>\<#751F\>\<#7B97\>\<#5B50\>\<#63CF\>\<#8FF0\>\<#6570\>\<#636E\>\<#5904\>\<#7406\>\<#903B\>\<#8F91\>\<#3002\>>

      \;
    </slide>

    <\slide>
      <tit|\<#5B9A\>\<#4E49\>\<#6570\>\<#636E\>\<#FF1A\>list>

      \<#901A\>\<#8FC7\>\<#5B9A\>\<#4E49\>\<#4E00\>\<#7EC4\><strong|\<#903B\>\<#8F91\>\<#81EA\>\<#6D3D\>>\<#7684\>\<#9009\>\<#62E9\>\<#51FD\>\<#6570\>\<#548C\>\<#6784\>\<#9020\>\<#51FD\>\<#6570\>\<#FF0C\>\<#5B9A\>\<#4E49\>\<#6570\>\<#636E\>\<#3002\>

      <\with|par-columns|2>
        \<#6784\>\<#9020\>\<#5668\>

        <\session|s7|default>
          <\unfolded-io>
            \<gtr\>\ 
          <|unfolded-io>
            (list 1 2 3 4)
          <|unfolded-io>
            (1 2 3 4)
          </unfolded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (cons 5 (list 1 2 3 4))
          <|folded-io>
            (5 1 2 3 4)
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            ()
          <|folded-io>
            ()
          </folded-io>

          <\input>
            \<gtr\>\ 
          <|input>
            \;
          </input>
        </session>

        \<#9009\>\<#62E9\>\<#5668\>

        <\session|s7|default>
          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (car (list 1 2 3 4))
          <|folded-io>
            1
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (cdr (list 1 2 3 4))
          <|folded-io>
            (2 3 4)
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (cadr (list 1 2 3 4))
          <|folded-io>
            2
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (list-ref (list 1 2 3 4) 3)
          <|folded-io>
            4
          </folded-io>

          <\input>
            \<gtr\>\ 
          <|input>
            \;
          </input>
        </session>

        \<#6027\>\<#8D28\>

        <\session|s7|default>
          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (list? (list 1))
          <|folded-io>
            #t
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (list? 1)
          <|folded-io>
            #f
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (eq? () ())
          <|folded-io>
            #t
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (eq? () (list 1))
          <|folded-io>
            #f
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (null? ())
          <|folded-io>
            #t
          </folded-io>

          <\input>
            \<gtr\>\ 
          <|input>
            (length (list 1 2 3 4))
          </input>
        </session>
      </with>
    </slide>

    <\slide>
      <tit|\<#4E09\>\<#677F\>\<#65A7\>\<#4E4B\>\<#6620\>\<#5C04\>\<#FF1A\>map>

      <scm|map>\<#662F\>S7 Scheme\<#7684\>\<#5185\>\<#7F6E\>\<#51FD\>\<#6570\>

      <\session|s7|default>
        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define (square x) (* x x))
        <|folded-io>
          square
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (map square (list 1 2 3 4 5))
        <|folded-io>
          (1 4 9 16 25)
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (map (lambda (x) (* x x)) (list 1 2 3 4 5))
        <|folded-io>
          (1 4 9 16 25)
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (map (lambda (x) (+ x 1)) (list 1 2 3 4 5))
        <|folded-io>
          (2 3 4 5 6)
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (map (lambda (x) (append x "@liii.pro")) (list "da" "nian"))
        <|folded-io>
          ("da@liii.pro" "nian@liii.pro")
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (map odd? (list 1 2 3 4 5))
        <|folded-io>
          (#t #f #t #f #t)
        </folded-io>

        <\input>
          \<gtr\>\ 
        <|input>
          \;
        </input>
      </session>
    </slide>

    <\slide>
      <tit|\<#4E09\>\<#677F\>\<#65A7\>\<#4E4B\>\<#8FC7\>\<#6EE4\>\<#FF1A\>filter>

      <hlink|SRFI-1: List Library|https://srfi.schemers.org/srfi-1/srfi-1.html>\<#4E2D\>\<#5B9A\>\<#4E49\>\<#4E86\><scm|filter>\<#FF0C\>\<#6211\>\<#4EEC\>\<#9700\>\<#8981\>\<#81EA\>\<#5DF1\>\<#5B9E\>\<#73B0\>

      <\with|par-columns|2>
        \<#5B9E\>\<#73B0\>

        <\session|s7|default>
          <\unfolded-io>
            \<gtr\>\ 
          <|unfolded-io>
            (define (filter pred? seq)

            \ \ (cond

            \ \ \ ((null? seq) ())

            \ \ \ ((pred? (car seq))

            \ \ \ \ (cons (car seq)

            \ \ \ \ \ \ \ \ \ \ (filter pred? (cdr seq))))

            \ \ \ (else (filter pred? (cdr seq)))))
          <|unfolded-io>
            filter
          </unfolded-io>
        </session>

        \<#5E94\>\<#7528\>

        <\session|s7|default>
          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (filter odd? (list 1 2 3 4 5))
          <|folded-io>
            (1 3 5)
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (filter even? (list 1 2 3 4 5))
          <|folded-io>
            (2 4)
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (filter (lambda (x) (\<gtr\> x 3)) '(1 3 5))
          <|folded-io>
            (5)
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (filter (lambda (x) (= x 3)) `(1 3 5))
          <|folded-io>
            (3)
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (filter (lambda (x) (\<gtr\> x 20))

            \ (map (lambda (x) (* x x))

            \ \ (list 1 2 3 4 5 6)))
          <|folded-io>
            (25 36)
          </folded-io>

          <\input>
            \<gtr\>\ 
          <|input>
            \;
          </input>
        </session>
      </with>
    </slide>

    <\slide>
      <tit|\<#4E09\>\<#677F\>\<#65A7\>\<#4E4B\>\<#6298\>\<#53E0\>\<#FF1A\>fold\<#548C\>fold-right>

      <hlink|SRFI-1: List Library|https://srfi.schemers.org/srfi-1/srfi-1.html>\<#4E2D\>\<#5B9A\>\<#4E49\>\<#4E86\><scm|fold>\<#FF0C\>\<#6211\>\<#4EEC\>\<#9700\>\<#8981\>\<#81EA\>\<#5DF1\>\<#5B9E\>\<#73B0\>

      <\with|par-columns|2>
        \<#5B9E\>\<#73B0\>

        <\session|s7|default>
          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (define (fold op initial seq)

            \ (if (null? seq)

            \ \ initial

            \ \ (fold op

            \ \ \ \ \ \ \ \ (op (car seq) initial)

            \ \ \ \ \ \ \ \ (cdr seq))))
          <|folded-io>
            fold
          </folded-io>

          <\folded-io>
            \<gtr\>\ 
          <|folded-io>
            (define (fold-right op initial seq)

            \ (if (null? seq)

            \ \ initial

            \ \ (op (car seq)

            \ \ \ \ \ \ (fold-right op

            \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ initial

            \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (cdr seq)))))
          <|folded-io>
            fold-right
          </folded-io>
        </session>

        \<#5E94\>\<#7528\>

        <\session|s7|default>
          <\unfolded-io>
            \<gtr\>\ 
          <|unfolded-io>
            (fold + 0 (list 1 2 3 4))
          <|unfolded-io>
            10
          </unfolded-io>

          <\unfolded-io>
            \<gtr\>\ 
          <|unfolded-io>
            (fold-right + 0 (list 1 2 3 4))
          <|unfolded-io>
            10
          </unfolded-io>

          <\unfolded-io>
            \<gtr\>\ 
          <|unfolded-io>
            (fold cons () (list 1 2 3 4))
          <|unfolded-io>
            (4 3 2 1)
          </unfolded-io>

          <\unfolded-io>
            \<gtr\>\ 
          <|unfolded-io>
            (fold-right cons () (list 1 2 3 4))
          <|unfolded-io>
            (1 2 3 4)
          </unfolded-io>

          <\input>
            \<gtr\>\ 
          <|input>
            \;
          </input>
        </session>
      </with>
    </slide>

    <\slide>
      <tit|\<#7406\>\<#89E3\>\<#5DE6\>\<#6298\>\<#53E0\>fold>

      \<#901A\>\<#8FC7\>\<#53EF\>\<#89C6\>\<#5316\>\<#7406\>\<#89E3\><scm|(fold
      cons () (list 1 2 3))>

      <\with|par-columns|4>
        <\scm-code>
          ; Step 0

          (fold cons\ 

          \ \ ()

          \ <tree|\<box\>|1|<tree|\<box\>|2|<tree|\<box\>|3|\<box\>>>>)

          ; Step 1

          (fold cons\ 

          \ \ <tree|\<box\>|1|\<box\>>

          \;

          \ <tree|\<box\>|2|<tree|\<box\>|3|\<box\>>>)

          ; Step 2

          (fold cons \ <tree|\<box\>|2|<tree|\<box\>|1|\<box\>>>

          \;

          \ \ <tree|\<box\>|3|\<box\>>)

          \;

          ; Step 3

          (fold cons <tree|\<box\>|3|<tree|\<box\>|2|<tree|\<box\>|1|\<box\>>>>
          ())
        </scm-code>
      </with>
    </slide>

    <\slide>
      <tit|\<#7406\>\<#89E3\>\<#53F3\>\<#6298\>\<#53E0\>fold-right\<#6B65\>\<#9AA4\>0-1>

      \<#901A\>\<#8FC7\>\<#53EF\>\<#89C6\>\<#5316\>\<#7406\>\<#89E3\><scm|(fold-right
      cons () (list 1 2 3))>

      <\with|par-columns|2>
        <\scm-code>
          ; Step 0

          (fold-right cons () <tree|\<box\>|1|<tree|\<box\>|2|<tree|\<box\>|3|\<box\>>>>)

          ; Step 1

          (cons 1

          \ (fold-right cons () <tree|\<box\>|2|<tree|\<box\>|3|\<box\>>>)))

          \;

          \;
        </scm-code>
      </with>
    </slide>

    <\slide>
      <tit|\<#7406\>\<#89E3\>\<#53F3\>\<#6298\>\<#53E0\>fold-right\<#6B65\>\<#9AA4\>2-3>

      \<#901A\>\<#8FC7\>\<#53EF\>\<#89C6\>\<#5316\>\<#7406\>\<#89E3\><scm|(fold-right
      cons () (list 1 2 3))>

      <\with|par-columns|2>
        <\scm-code>
          ; Step 2

          (cons 1

          \ (cons 2

          \ \ (fold-right cons () <tree|\<box\>|3|\<box\>>)))

          \;

          \;

          \;

          \;

          \;

          \;

          ; Step 3

          (cons 1 (cons 2 (cons 3 ()))))

          <tree|\<box\>|1|<tree|\<box\>|2|<tree|\<box\>|3|\<box\>>>>

          \;
        </scm-code>
      </with>
    </slide>

    <\slide>
      <tit|\<#884D\>\<#751F\>\<#7B97\>\<#5B50\>\<#FF1A\>flatmap>

      <\session|s7|default>
        <\unfolded-io>
          \<gtr\>\ 
        <|unfolded-io>
          (define (flatmap f seq)

          \ \ (fold-right append () (map f seq)))
        <|unfolded-io>
          flatmap
        </unfolded-io>

        <\unfolded-io>
          \<gtr\>\ 
        <|unfolded-io>
          (flatmap (lambda (x) (list x x)) (list 1 2 3 4))
        <|unfolded-io>
          (1 1 2 2 3 3 4 4)
        </unfolded-io>

        <\unfolded-io>
          \<gtr\>\ 
        <|unfolded-io>
          (map (lambda (x) (list x x)) (list 1 2 3 4))
        <|unfolded-io>
          ((1 1) (2 2) (3 3) (4 4))
        </unfolded-io>

        <\input>
          \<gtr\>\ 
        <|input>
          \;
        </input>
      </session>

      <\equation*>
        map:<block|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>|<cell|4>>>>><long-arrow|\<rubber-rightarrow\>|<scm|(lambda
        (x) (list x x))>><block|<tformat|<table|<row|<cell|<subtable|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>>|<cell|<subtable|<tformat|<table|<row|<cell|2>>|<row|<cell|2>>>>>>|<cell|<subtable|<tformat|<table|<row|<cell|3>>|<row|<cell|3>>>>>>|<cell|<subtable|<tformat|<table|<row|<cell|4>>|<row|<cell|4>>>>>>>>>>
      </equation*>

      <\equation*>
        flatmap:<block|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>|<cell|4>>>>><long-arrow|\<rubber-rightarrow\>|<scm|(lambda
        (x) (list x x))>><block|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|2>|<cell|2>|<cell|3>|<cell|3>|<cell|4>|<cell|4>>>>>
      </equation*>
    </slide>

    <\slide>
      <tit|\<#884D\>\<#751F\>\<#7B97\>\<#5B50\>\<#FF1A\>flatmap\<#7684\>\<#5E94\>\<#7528\>>

      <\session|s7|default>
        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define (remove item sequence)

          \ \ (filter (lambda (x) (not (= x item)))

          \ \ \ \ \ \ \ \ \ \ sequence))
        <|folded-io>
          remove
        </folded-io>

        <\folded-io>
          \<gtr\>\ 
        <|folded-io>
          (define (permutations s)

          \ \ (if (null? s) \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ; empty set?

          \ \ \ \ \ \ (list ()) \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ;
          sequence containing empty set

          \ \ \ \ \ \ (flatmap (lambda (x)

          \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (map (lambda (p) (cons x p))

          \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (permutations (remove x
          s))))

          \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ s)))
        <|folded-io>
          permutations
        </folded-io>

        <\unfolded-io>
          \<gtr\>\ 
        <|unfolded-io>
          (permutations (list 1 2 3))
        <|unfolded-io>
          ((1 2 3) (1 3 2) (2 1 3) (2 3 1) (3 1 2) (3 2 1))
        </unfolded-io>

        <\input>
          \<gtr\>\ 
        <|input>
          \;
        </input>
      </session>
    </slide>

    <\slide>
      <tit|\<#603B\>\<#7ED3\>>

      <\itemize>
        <item>\<#5B9A\>\<#4E49\>\<#6570\>\<#636E\>: list

        <item>\<#4E09\>\<#677F\>\<#65A7\>\<#4E4B\>\<#6620\>\<#5C04\>map

        <item>\<#4E09\>\<#677F\>\<#65A7\>\<#4E4B\>\<#8FC7\>\<#6EE4\>filter

        <item>\<#4E09\>\<#677F\>\<#65A7\>\<#4E4B\>\<#6298\>\<#53E0\>fold/fold-right

        <item>\<#884D\>\<#751F\>\<#7B97\>\<#5B50\>\<#FF1A\>\<#53C2\>\<#8003\><hlink|SRFI-1:
        List Library|https://srfi.schemers.org/srfi-1/srfi-1.html>

        <\itemize>
          <item>flatmap

          <item>find

          <item>any (\<exists\>)

          <item>every (\<forall\>)

          <item>count

          <item>reduce/reduce-right
        </itemize>
      </itemize>
    </slide>
  </slideshow>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
    <associate|marked-color|pastel yellow>
    <associate|page-border|attached>
    <associate|page-medium|paper>
    <associate|page-offset|1>
    <associate|page-packet|2>
    <associate|page-screen-margin|false>
    <associate|par-columns|1>
    <associate|preamble|false>
  </collection>
</initial>