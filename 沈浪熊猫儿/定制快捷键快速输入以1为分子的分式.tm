<TeXmacs|2.1.2>

<style|<tuple|generic|chinese|doc>>

<\body>
  <doc-data|<doc-title|\<#5FEB\>\<#901F\>\<#8F93\>\<#5165\>\<#4EE5\>1\<#4E3A\>\<#5206\>\<#5B50\>\<#7684\>\<#5206\>\<#5F0F\>>>

  \<#5728\>\<#6570\>\<#5B66\>\<#6A21\>\<#5F0F\>\<#4E2D\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#5E0C\>\<#671B\>\<#901A\>\<#8FC7\>\<#6309\>\<#952E\>\<#5E8F\>\<#5217\><code*|1/>\<#83B7\>\<#5F97\>\<#4E00\>\<#4E2A\>\<#4EE5\>1\<#4E3A\>\<#5206\>\<#5B50\>\<#7684\>\<#5206\>\<#5F0F\>\<#FF0C\>\<#5E76\>\<#628A\>\<#5149\>\<#6807\>\<#79FB\>\<#52A8\>\<#5230\>\<#5206\>\<#6BCD\>\<#4E2D\>\<#FF0C\>\<#4EE5\>\<#65B9\>\<#4FBF\>\<#540E\>\<#7EED\>\<#8F93\>\<#5165\>\<#3002\>

  <\equation*>
    <frac|1|1+<frac|1|1+<frac|1|1+<frac|1|1+<frac|1|1+<frac|1|1+<frac|1|1+<frac|1|1+<frac|1|>>>>>>>>>
  </equation*>

  \<#53EF\>\<#4EE5\>\<#901A\>\<#8FC7\>\<#5982\>\<#4E0B\>\<#65B9\>\<#5F0F\>\<#5B9E\>\<#73B0\>\<#8FD9\>\<#6837\>\<#7684\>\<#529F\>\<#80FD\>\<#FF1A\>

  <\enumerate>
    <item>\<#70B9\>\<#51FB\><menu|Tools|Developer
    tool>\<#FF0C\>\<#6FC0\>\<#6D3B\><menu|Developer>\<#83DC\>\<#5355\>

    <item>\<#70B9\>\<#51FB\><menu|Developer|Open my-init-texmacs.scm>

    <item>\<#5728\>\<#8BE5\>\<#6587\>\<#4EF6\>\<#7684\>\<#672B\>\<#5C3E\>\<#6DFB\>\<#52A0\>\<#5982\>\<#4E0B\>\<#4EE3\>\<#7801\>

    <item>\<#91CD\>\<#542F\><TeXmacs>
  </enumerate>

  <\scm-code>
    (kbd-map (:mode in-math?)

    \ \ \ \ \ \ \ \ \ ("1 /" (begin (math-insert `(frac "1" ""))

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (go-to-previous-word))))
  </scm-code>

  \<#7136\>\<#540E\>\<#FF0C\>\<#4F60\>\<#5C31\>\<#53EF\>\<#4EE5\>\<#6109\>\<#5FEB\>\<#5730\>\<#5728\>\<#6570\>\<#5B66\>\<#6A21\>\<#5F0F\>\<#4E2D\>\<#FF0C\>\<#7528\><key|1><key|/>\<#5FEB\>\<#901F\>\<#8F93\>\<#5165\>\<#5206\>\<#5B50\>\<#4E3A\>1\<#7684\>\<#5206\>\<#5F0F\>\<#4E86\>\<#3002\>

  \;

  \<#539F\>\<#6587\>\<#5728\>2019\<#5E74\>9\<#6708\>13\<#53F7\>\<#FF0C\>\<#5728\><slink|http://tmml.wiki>\<#7684\>WordPress\<#535A\>\<#5BA2\>\<#4E0A\>\<#53D1\>\<#5E03\>\<#3002\>2022\<#5E74\>4\<#6708\>30\<#65E5\>\<#FF0C\>\<#5728\><hlink|\<#58A8\>\<#5BA2\>\<#661F\>\<#7403\>|https://gitee.com/XmacsLabs/planet>\<#4F5C\>\<#4E3A\>\<#7B2C\>\<#4E00\>\<#7BC7\>\<#6587\>\<#7AE0\>\<#53D1\>\<#5E03\>\<#3002\>
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
      <tuple|<tuple|<with|font-family|<quote|ss>|\<#5DE5\>\<#5177\>>|<with|font-family|<quote|ss>|\<#5F00\>\<#53D1\>\<#5DE5\>\<#5177\>>>|<pageref|auto-1>>

      <tuple|<tuple|<with|font-family|<quote|ss>|\<#5F00\>\<#53D1\>\<#8005\>>>|<pageref|auto-2>>

      <tuple|<tuple|<with|font-family|<quote|ss>|\<#5F00\>\<#53D1\>\<#8005\>>|<with|font-family|<quote|ss>|\<#6253\>\<#5F00\>my-init-texmacs.scm\<#6587\>\<#4EF6\>>>|<pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>