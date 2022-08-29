<TeXmacs|2.1.3>

<style|<tuple|generic|chinese|doc>>

<\body>
  <doc-data|<doc-title|如何安装Fandol字体>>

  墨干用户可通过<menu|Help|Planet>中沈浪熊猫儿的空间找到本文档。通过本文档中可执行的Shell会话，用户可以完成Fandol字体的安装。

  目前我们已经针对macOS和Windows做了中文字体的适配，本文的目标读者是GNU/Linux用户，我会尽可能保证在GNU/Linux上，本文的Shell会话可以正常执行。

  <section*|安装依赖软件>

  本文依赖如下软件，请自行安装：

  <\session|shell|default>
    <\output>
      Shell session inside TeXmacs pid = 11257
    </output>

    <\unfolded-io|Shell] >
      wget --version \| head -n 1
    <|unfolded-io>
      GNU Wget 1.21.3 在 linux-gnu 上编译。
    </unfolded-io>

    <\input|Shell] >
      \;
    </input>
  </session>

  <section*|下载Fandol字体到指定目录>

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

  <section*|清除字体缓存并重启墨干>

  点击<menu|Tools|Font|Clear font cache>之后，重启墨干，就可以点击<menu|Document|Font>，找到Fandol字体。GNU/Linux下的默认中文字体就是Fandol，就墨干V1.0.4而言，在重启之后，文档中标点符号的展示能得到比较大的改善，比如句号，如果不安装Fandol字体，默认是居中的，安装之后就能正确展示。
</body>

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