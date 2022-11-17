<TeXmacs|2.1.3>

<style|<tuple|generic|chinese|doc>>

<\body>
  <doc-data|<doc-title|快速输入以1为分子的分式>>

  在数学模式中，我们希望通过按键序列<code*|1/>获得一个以1为分子的分式，并把光标移动到分母中，以方便后续输入。

  <\equation*>
    <frac|1|1+<frac|1|1+<frac|1|1+<frac|1|1+<frac|1|1+<frac|1|1+<frac|1|1+<frac|1|1+<frac|1|>>>>>>>>>
  </equation*>

  可以通过如下方式实现这样的功能：

  <\enumerate>
    <item>点击<menu|Tools|Developer tool>，激活<menu|Developer>菜单

    <item>点击<menu|Developer|Open my-init-texmacs.scm>

    <item>在该文件的末尾添加如下代码

    <item>重启<TeXmacs>
  </enumerate>

  <\scm-code>
    (kbd-map (:mode in-math?)

    \ \ \ \ \ \ \ \ \ ("1 /" (begin (math-insert `(frac "1" ""))

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (go-to-previous-word))))
  </scm-code>

  然后，你就可以愉快地在数学模式中，用<key|1><key|/>快速输入分子为1的分式了。

  \;

  原文在2019年9月13号，在<slink|http://tmml.wiki>的WordPress博客上发布。2022年4月30日，在<hlink|墨客星球|https://gitee.com/XmacsLabs/planet>作为第一篇文章发布。
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|font-family|<quote|ss>|工具>|<with|font-family|<quote|ss>|开发工具>>|<pageref|auto-1>>

      <tuple|<tuple|<with|font-family|<quote|ss>|开发者>>|<pageref|auto-2>>

      <tuple|<tuple|<with|font-family|<quote|ss>|开发者>|<with|font-family|<quote|ss>|打开my-init-texmacs.scm文件>>|<pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>