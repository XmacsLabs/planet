<TeXmacs|2.1.2>

<style|<tuple|generic|chinese|doc>>

<\body>
  <doc-data|<doc-title|\<#96F6\>\<#57FA\>\<#7840\>SICP>>

  <\itemize>
    <item>SICP\<#8BFE\>\<#672C\>

    SICP\<#5B98\>\<#7F51\>\<#FF1A\><hlink|Structure and Interpretation of
    Computer Programs|https://mitp-content-server.mit.edu/books/content/sectbyfn/books_pres_0/6515/sicp.zip/index.html>

    \<#4EA4\>\<#4E92\>\<#5F0F\>SICP\<#FF1A\><slink|https://gitee.com/XmacsLabs/interactive-sicp>

    \<#5982\>\<#4F55\>\<#4E0A\>\<#4EA4\>\<#4F5C\>\<#4E1A\>\<#FF1A\>

    <\itemize>
      <item><menu|File|Export|Pdf with embedded
      document>\<#7136\>\<#540E\>\<#5C06\>PDF\<#4F5C\>\<#4E3A\>\<#9644\>\<#4EF6\>

      <item>\<#90AE\>\<#4EF6\>\<#6807\>\<#9898\>\<#FF1A\>\<#96F6\>\<#57FA\>\<#7840\>SICP-\<#7B2C\>x\<#8BFE\>-who

      <item>\<#76EE\>\<#6807\>\<#90AE\>\<#7BB1\>\<#FF1A\>shenda AT ustc.edu
    </itemize>

    <item>\<#7B2C\>3\<#8BFE\>\<#FF1A\>\<#7528\>\<#51FD\>\<#6570\>\<#505A\>\<#62BD\>\<#8C61\>

    \<#8BFE\>\<#4EF6\>\<#FF1A\><hlink|\<#4EA4\>\<#4E92\>\<#5F0F\>\<#8BB2\>\<#4E49\>03|https://gitee.com/XmacsLabs/interactive-sicp/raw/main/course03.tm>

    <item>\<#7B2C\>2\<#8BFE\>\<#FF1A\>\<#7F16\>\<#7A0B\>\<#7684\>\<#57FA\>\<#672C\>\<#539F\>\<#7406\>\<#FF08\>\<#4E60\>\<#9898\>\<#8BFE\>\<#FF09\>

    \<#8BFE\>\<#4EF6\>\<#FF1A\><hlink|\<#4E60\>\<#9898\>\<#8BFE\>\<#4EF6\>02|https://gitee.com/XmacsLabs/interactive-sicp/raw/main/exercise02.tm>

    <item>\<#7B2C\>1\<#8BFE\>\<#FF1A\>\<#7F16\>\<#7A0B\>\<#7684\>\<#57FA\>\<#672C\>\<#539F\>\<#7406\>

    \<#8BB2\>\<#4E49\>\<#FF1A\><hlink|\<#4EA4\>\<#4E92\>\<#5F0F\>\<#8BB2\>\<#4E49\>01|https://gitee.com/XmacsLabs/interactive-sicp/raw/main/course01.tm>

    \<#8BFE\>\<#4EF6\>\<#FF1A\><hlink|\<#5E7B\>\<#706F\>\<#7247\>|slide01.tm>

    \<#56DE\>\<#653E\>\<#FF1A\><hlink|B\<#7AD9\>\<#89C6\>\<#9891\>|https://www.bilibili.com/video/BV1cp421f7xP/>

    \<#8BFE\>\<#540E\>\<#FF1A\>\<#8BF7\>\<#5B8C\>\<#6210\>\<#8BB2\>\<#4E49\>\<#4E2D\>\<#7684\>\<#4E60\>\<#9898\>

    \<#52D8\>\<#8BEF\>1\<#FF1A\>

    <\session|scheme|default>
      <\unfolded-io|Scheme] >
        (define pi 3.14159)
      <|unfolded-io>
        <errput|define: pi is immutable>
      </unfolded-io>

      <\unfolded-io|Scheme] >
        pi
      <|unfolded-io>
        3.141592653589793
      </unfolded-io>

      <\input|Scheme] >
        \;
      </input>
    </session>

    \<#51FA\>\<#73B0\>\<#4E0A\>\<#8FF0\>\<#63D0\>\<#793A\>\<#7684\>\<#539F\>\<#56E0\>\<#662F\>\<#FF0C\>\<#3C0\>\<#5DF2\>\<#7ECF\>\<#88AB\>\<#5B9A\>\<#4E49\>\<#4E86\>\<#3002\>

    \<#52D8\>\<#8BEF\>2\<#FF1A\>

    normal order evaluation\<#5E94\>\<#8BE5\>\<#7FFB\>\<#8BD1\>\<#4E3A\>\<#6B63\>\<#5219\>\<#5E8F\>\<#6C42\>\<#503C\>\<#3002\>B\<#7AD9\>\<#7B2C\>1\<#8BFE\>\<#7684\>\<#6B63\>\<#5219\>\<#5E8F\>\<#6C42\>\<#503C\>\<#548C\>\<#5E94\>\<#7528\>\<#5E8F\>\<#6C42\>\<#503C\>\<#8BB2\>\<#53CD\>\<#4E86\>\<#3002\>\<#6B63\>\<#5219\>\<#5E8F\>\<#662F\>\<#5148\>\<#5C55\>\<#5F00\>\<#FF0C\>\<#518D\>\<#6C42\>\<#503C\>\<#3002\>\<#5E94\>\<#7528\>\<#5E8F\>\<#6C42\>\<#503C\>\<#662F\>\<#5148\>\<#5BF9\>\<#64CD\>\<#4F5C\>\<#6570\>\<#6C42\>\<#503C\>\<#FF0C\>\<#518D\>\<#5E94\>\<#7528\>\<#64CD\>\<#4F5C\>\<#7B26\>\<#3002\>

    <item>\<#7B2C\>0\<#8BFE\>\<#FF1A\>\<#51C6\>\<#5907\>Scheme\<#7F16\>\<#7A0B\>\<#7684\>\<#73AF\>\<#5883\>

    \<#8BFE\>\<#4EF6\>\<#FF1A\><hlink|\<#5E7B\>\<#706F\>\<#7247\>|slide00.tm>

    \<#8BFE\>\<#540E\>\<#FF1A\>\<#8BF7\>\<#9884\>\<#4E60\>\<#7B2C\>1\<#8BFE\>\<#7684\>\<#8BB2\>\<#4E49\>
  </itemize>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|<with|mode|<quote|math>|<rigid|\<circ\>>>|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|font-family|<quote|ss>|\<#6587\>\<#4EF6\>>|<with|font-family|<quote|ss>|\<#5BFC\>\<#51FA\>>|<with|font-family|<quote|ss>|\<#53EF\>\<#7F16\>\<#8F91\>PDF>>|<pageref|auto-1>>
    </associate>
  </collection>
</auxiliary>