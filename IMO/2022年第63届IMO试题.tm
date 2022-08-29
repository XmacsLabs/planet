<TeXmacs|2.1.3>

<style|<tuple|generic|chinese>>

<\body>
  <doc-data|<doc-title|2022年第63届IMO试题>>

  <\problem>
    奥斯陆银行发行了两种货币：铝币（记为A）和铜币（记为B）.
    玛丽安有<math|n>枚铝币和<math|n>枚铜币,
    以任意初始方式排成一排. 定义一条<strong|链>为任意由相同类型货币构成的连续子列.
    给定正整数<math|k\<less\> 2n>，玛丽安重复地进行如下操作：她找出包含（从左到右）第<math|k>枚硬币的最长链.
    然后把该链中所有货币移到序列最左端.

    例如，<math|n = 4,k = 4>时，对于初始序列AABBBABA,过程如下：

    <\equation*>
      AAB<math-bf|B>BABA\<rightarrow\> BBB<math-bf|A>AABA
      \<rightarrow\>AAA<math-bf|B>BBBA \<rightarrow\>AAA<math-bf|A>BBBB.
    </equation*>

    求所有满足<math|1\<leqslant\>k\<leqslant\>2n>的数组<math|<around*|(|n,k|)>>,使得对任意初始序列，都可以在有限次操作内使左端为<math|n>枚相同的货币.
  </problem>

  <\problem>
    求所有函数<math|f:\<bbb-R\><rsup|+>\<rightarrow\>\<bbb-R\><rsup|+>>,使得对任意<math|x\<in\>\<bbb-R\><rsup|+>>,有且仅有一个<math|y\<in\>\<bbb-R\><rsup|+>>满足

    <\equation*>
      x*f(y) + y*f(x) \<leqslant\>2.
    </equation*>
  </problem>

  <\problem>
    给定正整数<math|k,S>是一个由有限个奇素数构成的集合.
    证明：至多只有一种方式（旋转或对称后相同视为同种方式）把<math|S>中的元素放置在一个圆周上，满足任意两个相邻元素的乘积均可以写成<math|x<rsup|2>+x+k>的形式。（其中<math|x>为正整数）
  </problem>

  <\problem>
    令<math|<math-it|ABCDE>>为一凸多边形，满足<math|BC=DE>，假设在<math|<math-it|ABCDE>>内部存在一点<math|T>使得<math|TB=TD,TC=TE且\<angle\>
    <math-it|ABT>=\<angle\> <math-it|TEA>>.
    令直线<math|<math-it|AB>>分别与直线<math|<math-it|CD>>和<math|<math-it|CT>>交于点<math|P>和<math|Q>.
    假设<math|P,B,A,Q>在同一直线上按照此顺序排列.
    令直线<math|<math-it|AE>>分别与直线<math|<math-it|CD>>和<math|<math-it|DT>>交于点<math|R>和<math|S>.
    假设<math|R,E,A,S>在同一直线上按照此顺序排列.
    证明<math|P,S,Q,R>落在同一个圆上.
  </problem>

  <\problem>
    找出所有三元正整数组<math|<around*|(|a,b,p|)>>，满足<math|p>是素数且

    <\equation*>
      a<rsup|p>=b!+p.
    </equation*>
  </problem>

  <\problem>
    令<math|n>为一正整数. 一个「北欧方阵」是一个包含<math|1>至<math|n<rsup|2>>所有整数的<math|n\<times\>
    n>方格表，使得每个方格内恰有一个数字.
    两个相异方格是相邻的如果他们有公共边.
    一个方格被称为「山谷」，若其内的数字比所有相邻方格内的数字都小.
    一条「上坡路径」是一个包含一或多个方格的序列，满足：(i)序列的每一个方格是山谷，(ii)序列中随后的每个方格都和其前一个方格相邻，且(iii)序列中方格内所写的数字递增.
    试求一个北欧方阵中上坡路径数量的最小可能值，以<math|n>的函数表示之.
  </problem>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>