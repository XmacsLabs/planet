<TeXmacs|2.1.2>

<style|<tuple|generic|chinese|doc>>

<\body>
  <doc-data|<doc-title|\<#5982\>\<#4F55\>\<#5B89\>\<#88C5\>Fandol\<#5B57\>\<#4F53\>>>

  \<#58A8\>\<#5E72\>\<#7528\>\<#6237\>\<#53EF\>\<#901A\>\<#8FC7\><menu|Help|Planet>\<#4E2D\>\<#6C88\>\<#6D6A\>\<#718A\>\<#732B\>\<#513F\>\<#7684\>\<#7A7A\>\<#95F4\>\<#627E\>\<#5230\>\<#672C\>\<#6587\>\<#6863\>\<#3002\>\<#901A\>\<#8FC7\>\<#672C\>\<#6587\>\<#6863\>\<#4E2D\>\<#53EF\>\<#6267\>\<#884C\>\<#7684\>Shell\<#4F1A\>\<#8BDD\>\<#FF0C\>\<#7528\>\<#6237\>\<#53EF\>\<#4EE5\>\<#5B8C\>\<#6210\>Fandol\<#5B57\>\<#4F53\>\<#7684\>\<#5B89\>\<#88C5\>\<#3002\>

  \<#76EE\>\<#524D\>\<#6211\>\<#4EEC\>\<#5DF2\>\<#7ECF\>\<#9488\>\<#5BF9\>macOS\<#548C\>Windows\<#505A\>\<#4E86\>\<#4E2D\>\<#6587\>\<#5B57\>\<#4F53\>\<#7684\>\<#9002\>\<#914D\>\<#FF0C\>\<#672C\>\<#6587\>\<#7684\>\<#76EE\>\<#6807\>\<#8BFB\>\<#8005\>\<#662F\>GNU/Linux\<#7528\>\<#6237\>\<#FF0C\>\<#6211\>\<#4F1A\>\<#5C3D\>\<#53EF\>\<#80FD\>\<#4FDD\>\<#8BC1\>\<#5728\>GNU/Linux\<#4E0A\>\<#FF0C\>\<#672C\>\<#6587\>\<#7684\>Shell\<#4F1A\>\<#8BDD\>\<#53EF\>\<#4EE5\>\<#6B63\>\<#5E38\>\<#6267\>\<#884C\>\<#3002\>

  <section*|\<#5B89\>\<#88C5\>\<#4F9D\>\<#8D56\>\<#8F6F\>\<#4EF6\>>

  \<#672C\>\<#6587\>\<#4F9D\>\<#8D56\>\<#5982\>\<#4E0B\>\<#8F6F\>\<#4EF6\>\<#FF0C\>\<#8BF7\>\<#81EA\>\<#884C\>\<#5B89\>\<#88C5\>\<#FF1A\>

  <\session|shell|default>
    <\output>
      Shell session inside TeXmacs pid = 11257
    </output>

    <\unfolded-io|Shell] >
      wget --version \| head -n 1
    <|unfolded-io>
      GNU Wget 1.21.3 \<#5728\> linux-gnu
      \<#4E0A\>\<#7F16\>\<#8BD1\>\<#3002\>
    </unfolded-io>

    <\input|Shell] >
      \;
    </input>
  </session>

  <section*|\<#4E0B\>\<#8F7D\>Fandol\<#5B57\>\<#4F53\>\<#5230\>\<#6307\>\<#5B9A\>\<#76EE\>\<#5F55\>>

  <\session|shell|default>
    <\input|Shell] >
      mkdir -p $TEXMACS_HOME_PATH/fonts/truetype
    </input>

    <\input|Shell] >
      export FANDOL_URI=https://mirrors.ustc.edu.cn/CTAN/fonts/fandol/
    </input>

    <\input|Shell] >
      export TT_PATH=$TEXMACS_HOME_PATH/fonts/truetype
    </input>

    <\input|Shell] >
      [ ! -e $TT_PATH/FandolSong-Regular.otf ] && cd $TT_PATH && wget
      $FANDOL_URI/FandolSong-Regular.otf
    </input>

    <\input|Shell] >
      [ ! -e $TT_PATH/FandolSong-Bold.otf ] && cd $TT_PATH && wget
      $FANDOL_URI/FandolSong-Bold.otf
    </input>

    <\input|Shell] >
      [ ! -e $TT_PATH/FandolHei-Regular.otf ] && cd $TT_PATH && wget
      $FANDOL_URI/FandolHei-Regular.otf
    </input>

    <\input|Shell] >
      [ ! -e $TT_PATH/FandolHei-Bold.otf ] && cd $TT_PATH && wget
      $FANDOL_URI/FandolHei-Bold.otf
    </input>

    <\input|Shell] >
      [ ! -e $TT_PATH/FandolFang-Regular.otf ] && cd $TT_PATH && wget
      $FANDOL_URI/FandolFang-Regular.otf
    </input>

    <\unfolded-io|Shell] >
      ls $TT_PATH/
    <|unfolded-io>
      FandolFang-Regular.otf \ FandolHei-Regular.otf \ FandolSong-Regular.otf

      FandolHei-Bold.otf \ \ \ \ \ FandolSong-Bold.otf
    </unfolded-io>

    <\input|Shell] >
      \;
    </input>
  </session>

  <section*|\<#6E05\>\<#9664\>\<#5B57\>\<#4F53\>\<#7F13\>\<#5B58\>\<#5E76\>\<#91CD\>\<#542F\>\<#58A8\>\<#5E72\>>

  \<#70B9\>\<#51FB\><menu|Tools|Font|Clear font
  cache>\<#4E4B\>\<#540E\>\<#FF0C\>\<#91CD\>\<#542F\>\<#58A8\>\<#5E72\>\<#FF0C\>\<#5C31\>\<#53EF\>\<#4EE5\>\<#70B9\>\<#51FB\><menu|Document|Font>\<#FF0C\>\<#627E\>\<#5230\>Fandol\<#5B57\>\<#4F53\>\<#3002\>GNU/Linux\<#4E0B\>\<#7684\>\<#9ED8\>\<#8BA4\>\<#4E2D\>\<#6587\>\<#5B57\>\<#4F53\>\<#5C31\>\<#662F\>Fandol\<#FF0C\>\<#5C31\>\<#58A8\>\<#5E72\>V1.0.4\<#800C\>\<#8A00\>\<#FF0C\>\<#5728\>\<#91CD\>\<#542F\>\<#4E4B\>\<#540E\>\<#FF0C\>\<#6587\>\<#6863\>\<#4E2D\>\<#6807\>\<#70B9\>\<#7B26\>\<#53F7\>\<#7684\>\<#5C55\>\<#793A\>\<#80FD\>\<#5F97\>\<#5230\>\<#6BD4\>\<#8F83\>\<#5927\>\<#7684\>\<#6539\>\<#5584\>\<#FF0C\>\<#6BD4\>\<#5982\>\<#53E5\>\<#53F7\>\<#FF0C\>\<#5982\>\<#679C\>\<#4E0D\>\<#5B89\>\<#88C5\>Fandol\<#5B57\>\<#4F53\>\<#FF0C\>\<#9ED8\>\<#8BA4\>\<#662F\>\<#5C45\>\<#4E2D\>\<#7684\>\<#FF0C\>\<#5B89\>\<#88C5\>\<#4E4B\>\<#540E\>\<#5C31\>\<#80FD\>\<#6B63\>\<#786E\>\<#5C55\>\<#793A\>\<#3002\>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?>>
    <associate|auto-2|<tuple|?|?>>
    <associate|auto-3|<tuple|?|?>>
    <associate|auto-4|<tuple|?|?>>
    <associate|auto-5|<tuple|?|?>>
    <associate|auto-6|<tuple|?|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|font-family|<quote|ss>|\<#5E2E\>\<#52A9\>>|<with|font-family|<quote|ss>|\<#58A8\>\<#5BA2\>\<#661F\>\<#7403\>>>|<pageref|auto-1>>

      <tuple|<tuple|<with|font-family|<quote|ss>|\<#5DE5\>\<#5177\>>|<with|font-family|<quote|ss>|\<#5B57\>\<#4F53\>>|<with|font-family|<quote|ss>|\<#6E05\>\<#9664\>\<#5B57\>\<#4F53\>\<#7F13\>\<#5B58\>>>|<pageref|auto-5>>

      <tuple|<tuple|<with|font-family|<quote|ss>|\<#6587\>\<#6863\>>|<with|font-family|<quote|ss>|\<#5B57\>\<#4F53\>>>|<pageref|auto-6>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|\<#5B89\>\<#88C5\>\<#4F9D\>\<#8D56\>\<#8F6F\>\<#4EF6\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|\<#4E0B\>\<#8F7D\>Fandol\<#5B57\>\<#4F53\>\<#5230\>\<#6307\>\<#5B9A\>\<#76EE\>\<#5F55\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|\<#6E05\>\<#9664\>\<#5B57\>\<#4F53\>\<#7F13\>\<#5B58\>\<#5E76\>\<#91CD\>\<#542F\>\<#58A8\>\<#5E72\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>