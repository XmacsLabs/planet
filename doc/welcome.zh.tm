<TeXmacs|2.1.2>

<style|<tuple|tmdoc|chinese|old-spacing|old-dots|old-lengths|compact-list>>

<\body>
  <tmdoc-title|欢迎使用墨干>

  <with|color|dark red|<\warning*>
    如果你在查看这个文件时，中文乱码，请使用
    <hlink|<name|墨干<space|0.2spc>V1.1.1>|https://gitee.com/XmacsLabs/mogan/releases/tag/v1.1.1>（它们应该是中文字符）。
  </warning*>>

  <name|墨干>是<hlink|墨者实验室|http://git.tmml.wiki/XmacsLabs/planet/raw/main/墨者实验室/index.tm>旗下结构化编辑器，衍生自
  GNU <TeXmacs>，有如下不同：

  <\description>
    <item*|合理的配置调优>比如在墨干中默认的快捷键风格是
    <name|Emacs> 风格，这样在不同平台快捷键是一致的。如果你想切换回
    <key|Ctrl-c> 或者 <key|Command-c> 这种随系统不同变化的快捷键风格，可以在
    <menu|Edit|Preferences|General|Look and feel> 中改回来。

    <item*|激进的技术选型>比如墨干将 <name|GUI> 框架从
    <name|Qt 4.8.x> 切换到了 <name|Qt 5.15.x>，将脚本执行引擎从
    <name|Guile> 1.8.x 切换到了 <name|S7
    Scheme>，在享受新技术带来的优势的同时，也会有不少不稳定的因素。
  </description>

  当前<hlink|最新版本的墨干编辑器|https://gitee.com/XmacsLabs/mogan/releases>是
  <strong|墨干<space|0.2spc>V1.1.1>：

  <\itemize>
    <math|\<Longrightarrow\>> 查看<hlink|墨干所有版本|http://git.tmml.wiki/XmacsLabs/planet/raw/main/doc/mogan_index.zh.tm>

    <math|\<Longrightarrow\>> 查看<hlink|墨干<space|0.2spc>V1.1.1的更新记录|http://git.tmml.wiki/XmacsLabs/planet/raw/main/doc/mogan_v1.1.1.zh.tm>
  </itemize>

  <section*|学习墨干>

  <\description>
    <item*|<TeXmacs>的官方文档>在帮助菜单下可以直接浏览。需要注意的一点是，如果界面语言是中文，那么已经完成翻译的帮助文档也是中文文档；如果界面语言是英文，那么帮助文档是英文的。

    <item*|墨客星球>简称星球，通过
    <hlink|<menu|Help|Planet>|http://git.tmml.wiki/XmacsLabs/planet/raw/main/index.tm>
    可以直接访问。

    <item*|视频资源><hlink|视频集锦|http://git.tmml.wiki/XmacsLabs/planet/raw/main/视频集锦/index.tm>
    是星球中的文档，收录了大量的教学视频。
  </description>

  <section*|联系我们>

  <strong|衷心欢迎大家通过以下方式联系我们，交流经验、提供建议或报告问题。也热情欢迎感兴趣的开发者和志愿贡献者加入墨者实验室。>

  <\with|par-columns|2>
    <\itemize>
      <\with|par-columns|1>
        <item><name|Bilibili>: <hlink|<with|font|FandolSong|沈浪熊猫儿>|https://space.bilibili.com/28058658>

        <item><name|Gitee>: <hlink|<with|font|FandolSong|墨者实验室>|https://gitee.com/XmacsLabs/>

        <item><name|GitHub>: <hlink|<name|XmacsLabs>|https://github.com/XmacsLabs>

        <item>豆瓣小组: <hlink|GNU <TeXmacs>|https://www.douban.com/group/texmacs/>

        <item>知乎: <hlink|<with|font|FandolSong|墨干编辑器>|https://www.zhihu.com/people/xmacs>

        <item>微信公众号: <with|font|FandolSong|墨者实验室>
        (<name|xmacs2020>)

        <item>微信群: <with|font|FandolSong|墨客社区>（通过微信号
        <name|XmacsLabs> 入群)

        <item><name|QQ>群: GNU <TeXmacs><space|0.6spc><with|font|FandolSong|中文社区>
        (934456971)
      </with>
    </itemize>
  </with>

  使用墨干时遇到问题也欢迎咨询 <TeXmacs>
  社区，特别是官方论坛。

  <\itemize>
    <item>官方论坛: <hlink|The GNU <TeXmacs>
    forum|http://forum.texmacs.cn>

    <item><name|YouTube>: <hlink|<TeXmacs>
    Videos|https://www.youtube.com/channel/UCLaZZkOj3GPYFu9pVsEbthg>

    <item><name|GitHub>: <hlink|GNU <TeXmacs>|https://github.com/texmacs>

    <item><name|Twitter>: <hlink|GNU <TeXmacs>|https://twitter.com/gnu_texmacs>

    <item><name|Gitter>: <hlink|texmacs/Lobby|https://gitter.im/texmacs/Lobby>\ 

    <item>邮件列表: <hlink|Mailing lists for
    <TeXmacs>|https://www.texmacs.org/tmweb/home/ml.en.html>
  </itemize>

  <section*|中学教育>

  墨者实验室会持续关注墨干在中学教育中的应用，以下是若干示例文档。

  <\itemize-arrow>
    <item><hlink|2019年全国高中数学联合竞赛一试试题A卷|http://git.tmml.wiki/XmacsLabs/planet/raw/c029037c2f11ec60cfebee2afbd74ceeddc74a4b/doc/2019年全国高中数学联合竞赛一试试题A卷.tm>

    <item><hlink|高考数学|http://git.tmml.wiki/XmacsLabs/planet/raw/main/高考数学/index.tm>
  </itemize-arrow>

  在中学教育实践中，<name|Gnuplot>
  可用于函数曲线的绘制，欧几里得可用于平面几何的绘制，<name|Maxima>
  作为计算机代数系统可用于自动求导、表达式自动化简等教学需求。这三个软件在墨干中都有对应的插件。

  <section*|墨者百科>

  正在建设中，示例词条 <hlink|自然数|https://gitee.com/XmacsLabs/tmmlwiki/raw/main/数学/自然数.tm>。感兴趣加入墨者百科的建设，请联系微信号
  <name|XmacsLabs> 并备注墨者百科。

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