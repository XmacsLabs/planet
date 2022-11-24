<TeXmacs|2.1.2>

<style|<tuple|tmdoc|chinese|old-spacing|old-dots|old-lengths|compact-list|smart-ref|preview-ref>>

<\body>
  <tmdoc-title|欢迎使用墨干编辑器>

  <with|color|dark red|<with|font|Songti SC|<with|font-base-size|8|<\render-remark|提醒>
    与<space|0.4spc>GNU <TeXmacs><space|0.4spc>一样，西文排版在<space|0.4spc><name|墨干编辑器><space|0.4spc>中已经相对完善，但中文排版离完善还有很长的路，我们请求用户的理解、耐心和帮助，非常感谢！

    如果您使用中遇到问题，欢迎通过下文“联系我们”里的方式联系我们，谢谢；这种情况下，如果您愿意到墨干编辑器的<space|0.4spc><hlink|<name|GitHub<with|font-shape|italic|>>|https://github.com/XmacsLabs/mogan/issues><space|0.4spc>或<space|0.4spc><hlink|<name|Gitee><with|font-shape|italic|>|https://gitee.com/XmacsLabs/mogan/issues><space|0.4spc>撰写工单并具体描述问题，或上传可复现问题的文档，我们会无限感激。

    在开始使用前，请新用户注意下面两个问题：

    <\itemize-dot>
      <item>如果你在查看这个文件时，中文乱码，请使用<space|0.4spc><hlink|<name|墨干编辑器<space|0.2spc>v1.1.1>|https://gitee.com/XmacsLabs/mogan/releases/tag/v1.1.1><space|0.4spc>或更新版本，中文字符即可正确显示。

      <item>由于加载字体等等内容，头几次启动后程序可能运行缓慢或卡顿，通常之后会正常。
    </itemize-dot>
  </render-remark>>>>

  <name|墨干编辑器>是<hlink|墨者实验室|http://git.tmml.wiki/XmacsLabs/planet/raw/main/墨者实验室/index.tm>旗下结构化编辑器，衍生自<space|0.4spc>GNU
  <TeXmacs>，有如下不同：

  <\description>
    <item*|合理的配置调优>比如在墨干编辑器中默认的快捷键风格是<space|0.4spc><name|Emacs><space|0.4spc>风格，这样在不同平台快捷键是一致的。<with|color|dark
    red|如果你想切换回<space|0.4spc><key|Ctrl-c><space|0.4spc>或者<space|0.4spc><key|Command-c><space|0.4spc>这种随系统不同变化的快捷键风格，可以在<space|0.4spc><menu|Edit|Preferences|General|Look
    and feel><space|0.4spc>中改回来。>

    <item*|激进的技术选型>比如墨干编辑器将<space|0.4spc><name|GUI><space|0.4spc>框架从<space|0.4spc><name|Qt<space|0.4spc>4.8.x><space|0.4spc>切换到了<space|0.4spc><name|Qt<space|0.4spc>5.15.x>，将脚本执行引擎从<space|0.4spc><name|Guile><space|0.4spc>1.8.x<space|0.4spc>切换到了<space|0.4spc><name|S7
    Scheme>，在享受新技术带来的优势的同时，也会有不少不稳定的因素。
  </description>

  当前<hlink|最新版本的墨干编辑器|https://gitee.com/XmacsLabs/mogan/releases>是<space|0.4spc><strong|墨干编辑器<space|0.2spc>v1.1.1>：

  <\itemize>
    <math|\<Longrightarrow\>>查看<hlink|墨干编辑器所有版本|http://git.tmml.wiki/XmacsLabs/planet/raw/main/doc/mogan_index.zh.tm>

    <math|\<Longrightarrow\>>查看<hlink|墨干编辑器<space|0.2spc>V1.1.1的更新记录|http://git.tmml.wiki/XmacsLabs/planet/raw/main/doc/mogan_v1.1.1.zh.tm>
  </itemize>

  <section*|如何入门>

  新用户请观看视频

  <\padded-center>
    <hlink|A quick tour of <TeXmacs>|https://youtu.be/H46ON2FB30U>
    (<hlink|<name|YouTube>|https://youtu.be/H46ON2FB30U>/<hlink|<name|Bilibili>|https://www.bilibili.com/video/BV1bo4y1D7wN>)
  </padded-center>

  了解诸多特色功能。之后推荐观看播放列表\ 

  <\padded-center>
    <hlink|GNU TeXmacs for scientists<space|0.4spc>(<name|YouTube>)|https://youtube.com/playlist?list=PLjlnuLy3KEpYmUQvFIFSFgeYQjVYO2gxi><space|0.6spc>/<space|0.4spc><hlink|<TeXmacs>
    入门<space|0.4spc>(<name|Bilibili>)|https://www.bilibili.com/medialist/play/617908?from=space&business=space_series&business_id=2765862&desc=1><space|0.4spc>/<space|0.4spc><hlink|<TeXmacs>
    入门<space|0.4spc>(知乎)|https://www.zhihu.com/collection/844048143>
  </padded-center>

  作为入门教程。

  进一步学习可以参考以下资源：

  <\description>
    <item*|GNU <TeXmacs><space|0.4spc>的官方文档>在帮助菜单下可以直接浏览。需要注意的一点是，如果界面语言是中文，那么已经完成翻译的帮助文档也是中文文档；如果界面语言是英文，那么帮助文档是英文的。

    <item*|墨客星球>简称星球，通过<space|0.4spc><hlink|<menu|Help|Planet>|http://git.tmml.wiki/XmacsLabs/planet/raw/main/index.tm><space|0.4spc>可以直接访问。

    <item*|视频资源><hlink|视频集锦|http://git.tmml.wiki/XmacsLabs/planet/raw/main/视频集锦/index.tm><space|0.4spc>是星球中的文档，收录了大量的教学视频。
  </description>

  <section*|联系我们><label|sec:contact us>

  <with|color|orange|<\strong>
    衷心欢迎大家通过以下方式联系我们，交流经验、提供建议或报告问题。

    也热情欢迎感兴趣的开发者和志愿贡献者加入墨者实验室。
  </strong>>

  <\padded-center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|2|2|1|-1|cell-background|#f0f0f0>|<cwith|4|4|1|-1|cell-background|#f0f0f0>|<cwith|6|6|1|-1|cell-background|#f0f0f0>|<cwith|8|8|1|-1|cell-background|#f0f0f0>|<table|<row|<cell|<name|Bilibili>>|<cell|<hlink|<with|font|FandolSong|沈浪熊猫儿>|https://space.bilibili.com/28058658>>>|<row|<cell|<name|Gitee>>|<cell|<hlink|<with|font|FandolSong|墨者实验室>|https://gitee.com/XmacsLabs/>>>|<row|<cell|<name|GitHub>>|<cell|<hlink|<name|XmacsLabs>|https://github.com/XmacsLabs>>>|<row|<cell|豆瓣小组>|<cell|<hlink|GNU
    <TeXmacs>|https://www.douban.com/group/texmacs/>>>|<row|<cell|知乎>|<cell|<hlink|<with|font|FandolSong|墨干编辑器>|https://www.zhihu.com/people/xmacs>>>|<row|<cell|微信公众号>|<cell|<with|font|FandolSong|墨者实验室>
    (<name|xmacs2020>)>>|<row|<cell|微信群>|<cell|<with|font|FandolSong|墨客社区>
    (通过微信号<space|0.4spc><name|XmacsLabs><space|0.4spc>入群)>>|<row|<cell|QQ群>|<cell|GNU
    <TeXmacs><space|0.4spc>中文社区 (934456971)>>>>>
  </padded-center>

  使用墨干编辑器时遇到问题也欢迎咨询<space|0.4spc><TeXmacs><space|0.4spc>社区，特别是官方论坛。

  <\padded-center>
    <tabular|<tformat|<cwith|2|2|1|-1|cell-background|#f0f0f0>|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|6|6|1|-1|cell-background|#f0f0f0>|<cwith|7|7|1|-1|cell-background|>|<cwith|4|4|1|2|cell-halign|c>|<cwith|4|4|1|2|cell-halign|c>|<cwith|4|4|1|-1|cell-background|#f0f0f0>|<cwith|5|5|1|-1|cell-background|>|<table|<row|<cell|官方论坛>|<cell|<hlink|The
    GNU <TeXmacs> forum|http://forum.texmacs.cn>>>|<row|<cell|<name|YouTube>>|<cell|<hlink|<TeXmacs>
    Videos|https://www.youtube.com/channel/UCLaZZkOj3GPYFu9pVsEbthg>>>|<row|<cell|<name|GitHub>>|<cell|<hlink|GNU
    <TeXmacs>|https://github.com/texmacs>>>|<row|<cell|<name|Mastodon>>|<cell|<hlink|GNU
    <TeXmacs>|https://mathstodon.xyz/@gnu_texmacs>>>|<row|<cell|<name|Twitter>>|<cell|<hlink|GNU
    <TeXmacs>|https://twitter.com/gnu_texmacs>>>|<row|<cell|<name|Gitter>>|<cell|<hlink|texmacs/Lobby|https://gitter.im/texmacs/Lobby>>>|<row|<cell|邮件列表>|<cell|<hlink|Mailing
    lists for <TeXmacs>|https://www.texmacs.org/tmweb/home/ml.en.html>>>>>>
  </padded-center>

  <section*|中学教育>

  墨者实验室会持续关注墨干编辑器在中学教育中的应用，以下是若干示例文档。

  <\itemize-arrow>
    <item><hlink|2019年全国高中数学联合竞赛一试试题A卷|http://git.tmml.wiki/XmacsLabs/planet/raw/c029037c2f11ec60cfebee2afbd74ceeddc74a4b/doc/2019年全国高中数学联合竞赛一试试题A卷.tm>

    <item><hlink|高考数学|http://git.tmml.wiki/XmacsLabs/planet/raw/main/高考数学/index.tm>
  </itemize-arrow>

  在中学教育实践中，<name|Gnuplot><space|0.4spc>可用于函数曲线的绘制，欧几里得可用于平面几何的绘制，<name|Maxima><space|0.4spc>作为计算机代数系统可用于自动求导、表达式自动化简等教学需求。这三个软件在墨干编辑器中都有对应的插件。

  <section*|墨者百科>

  正在建设中，示例词条<space|0.4spc><hlink|自然数|https://gitee.com/XmacsLabs/tmmlwiki/raw/main/数学/自然数.tm>。感兴趣加入墨者百科的建设，请联系微信号<space|0.4spc><name|XmacsLabs><space|0.4spc>并备注墨者百科。

  <tmdoc-copyright|2020-2022|墨者实验室>

  <tmdoc-license|Permission is granted to copy, distribute and/or modify this
  document under the terms of the GNU Free Documentation License, Version 1.1
  or any later version published by the Free Software Foundation; with no
  Invariant Sections, with no Front-Cover Texts, and with no Back-Cover
  Texts. A copy of the license is included in the section entitled "GNU Free
  Documentation License".>
</body>

<initial|<\collection>
</collection>>