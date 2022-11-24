<TeXmacs|2.1.2>

<style|<tuple|tmdoc|old-spacing|old-dots|old-lengths|british|compact-list>>

<\body>
  <tmdoc-title|Welcome to Mogan Editor>

  <with|color|dark red|<\warning*>
    Please use <hlink|<name|Mogan Editor>
    v1.1.1|https://github.com/XmacsLabs/mogan/releases/tag/v1.1.1> or later
    if you are viewing this document with messy code (They should be Chinese
    characters).
  </warning*>>

  <name|Mogan Editor> is a structure editor delivered by <name|<hlink|Xmacs
  Labs|https://github.com/XmacsLabs>>, which is a fork of <hlink|GNU
  <TeXmacs>|https://www.texmacs.org>. Its latest version is
  <name|<strong|Mogan Editor v1.1.1>>.

  GNU <TeXmacs> is a structured editor developed since the late 1990s by
  <hlink|<person|Joris van der Hoeven>|http://www.texmacs.org/joris/main/joris.html>,
  a mathematician at CNRS in France. It is designed to write high-quality
  technical documents using an intuitive and easy-to-use graphical interface,
  and able to achieve the same level of results as <LaTeX>. Its main users
  are currently primary and secondary school teachers (mostly in France) and
  university researchers.

  <hlink|<person|Darcy Shen>|https://github.com/darcy-shen> released
  <name|Mogan Editor v1.0.0> on January 30, 2022, and created <name|Xmacs
  Labs>, a non-profit organization that aims to popularize GNU <TeXmacs> and
  make it available to more people to enjoy the excellent software developed
  by Joris <person|van der Hoeven>.

  <section*|What is GNU <TeXmacs>>

  Highly recommended to watch the following official demo of GNU <TeXmacs>
  2.1

  <\padded-center>
    <hlink|<with|font|TeX Gyre Pagella|font-base-size|20|A quick tour of
    <TeXmacs>>|https://youtu.be/H46ON2FB30U>
  </padded-center>

  <\itemize-minus>
    <item>GNU <TeXmacs> is a <strong|free scientific editing platform>
    designed to create beautiful technical documents using a <strong|wysiwyg
    interface>.

    <item>It provides a <strong|unified and user friendly framework> for
    editing structured documents with different types of content: text,
    mathematics, graphics, interactive content, slides, etc.

    <item><TeXmacs> can be used as a <strong|graphical front-end> for many
    systems in computer algebra, numerical analysis, statistics, etc.

    <item>Documents can be saved in <TeXmacs>, <name|Xml> or <name|Scheme>
    format and printed as <name|Pdf> or <name|Postscript> files. Converters
    exist for <TeX>/<LaTeX> and <name|Html>/<name|Mathml>. Notice that
    <TeXmacs> is <em|not> based on <TeX>/<LaTeX>.

    <item>Its rendering engine uses <strong|high-quality typesetting
    algorithms> so as to produce professionally looking documents, which can
    either be printed out or presented from a laptop.

    <item>New styles can be written by the user and new features can be added
    to the editor using the Scheme extension language.

    <item>Runs on all major <name|Unix> platforms, <name|macOS>, and
    <name|Windows>.
  </itemize-minus>

  <name|Mogan Editor> inherits all the above features from GNU <TeXmacs> (see
  <hlink|the homepage of GNU <TeXmacs>|https://www.texmacs.org>), so it can
  also be used as a efficient study tool for students, teachers, and
  researchers in science and technology, and suitable to create high-quality
  assignment documents, report slides, and <LaTeX>-level papers.\ 

  Based on GNU <TeXmacs>, <name|Mogan Editor> has more bugs fixed,
  performance-optimized, and the interface beautified.

  <section*|Goal>

  <strong|We create <name|Mogan Editor> for everyone to learn and create
  science and technology more easily.>

  <section*|Contact us>

  <\strong>
    You are sincerely welcome to contact us via the following ways to share
    your experience, provide suggestions or report issues on <name|Mogan
    Editor>.\ 

    Interested developers and volunteer contributors are also warmly welcome
    to join <name|Xmacs Labs>.
  </strong>

  <\padded-center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|2|2|1|-1|cell-background|#f0f0f0>|<cwith|4|4|1|-1|cell-background|#f0f0f0>|<cwith|6|6|1|-1|cell-background|#f0f0f0>|<cwith|8|8|1|-1|cell-background|#f0f0f0>|<table|<row|<cell|<name|Bilibili>>|<cell|<hlink|<with|font|FandolSong|沈浪熊猫儿>|https://space.bilibili.com/28058658>>>|<row|<cell|<name|Gitee>>|<cell|<hlink|<with|font|FandolSong|墨者实验室>|https://gitee.com/XmacsLabs/>>>|<row|<cell|<name|GitHub>>|<cell|<hlink|<name|XmacsLabs>|https://github.com/XmacsLabs>>>|<row|<cell|<name|Douban>
    Group>|<cell|<hlink|GNU <TeXmacs>|https://www.douban.com/group/texmacs/>>>|<row|<cell|<name|Zhihu>>|<cell|<hlink|<with|font|FandolSong|墨干编辑器>|https://www.zhihu.com/people/xmacs>>>|<row|<cell|<name|WeChat>
    Official Account>|<cell|<with|font|FandolSong|墨者实验室>
    (<name|xmacs2020>)>>|<row|<cell|<name|WeChat>
    Group>|<cell|<with|font|FandolSong|墨客社区> (Join via <name|WeChat>
    account <name|XmacsLabs>)>>|<row|<cell|<name|QQ> Group>|<cell|GNU
    <TeXmacs> 中文社区 (934456971)>>>>>
  </padded-center>

  You are also welcome to consult the TeXmacs community, especially the
  official forum, if you encounter problems while using <name|Mogan Editor>.

  <\padded-center>
    <tabular|<tformat|<cwith|2|2|1|-1|cell-background|#f0f0f0>|<cwith|7|7|1|-1|cell-background|#f0f0f0>|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|7|7|1|-1|cell-row-span|1>|<cwith|7|7|1|-1|cell-col-span|2>|<cwith|6|6|1|-1|cell-background|#f0f0f0>|<cwith|7|7|1|1|cell-background|>|<cwith|4|4|1|2|cell-halign|c>|<cwith|4|4|1|-1|cell-background|#f0f0f0>|<cwith|5|5|1|-1|cell-background|>|<table|<row|<cell|Official
    Forum>|<cell|<hlink|The GNU <TeXmacs>
    forum|http://forum.texmacs.cn>>>|<row|<cell|<name|YouTube>>|<cell|<hlink|<TeXmacs>
    Videos|https://www.youtube.com/channel/UCLaZZkOj3GPYFu9pVsEbthg>>>|<row|<cell|<name|GitHub>>|<cell|<hlink|GNU
    <TeXmacs>|https://github.com/texmacs>>>|<row|<cell|<name|Mastodon>>|<cell|<hlink|GNU
    <TeXmacs>|https://mathstodon.xyz/@gnu_texmacs>>>|<row|<cell|<name|Twitter>>|<cell|<hlink|GNU
    <TeXmacs>|https://twitter.com/gnu_texmacs>>>|<row|<cell|<name|Gitter>>|<cell|<hlink|texmacs/Lobby|https://gitter.im/texmacs/Lobby>>>|<row|<cell|<hlink|Mailing
    lists for <TeXmacs>|https://www.texmacs.org/tmweb/home/ml.en.html>>|<cell|>>>>>
  </padded-center>

  <section*|<name|Xmacs Planet>>

  <hlink|<name|Xmacs Planet>|<math|http://git.tmml.wiki/XmacsLabs/planet/raw/main/index.tm>>
  is an aggregation of <TeXmacs> documents submitted by <name|Mogan Editor>
  users. The topic of <name|Xmacs Planet> focuses on Science and Technology.

  Selected <TeXmacs> documents：

  <\itemize>
    <item><hlink|<with|font|FandolSong|沈浪熊猫儿：定制快捷键快速输入以1为分子的分式>|http://git.tmml.wiki/XmacsLabs/planet/raw/main/沈浪熊猫儿/定制快捷键快速输入以1为分子的分式.tm>

    <item><hlink|<with|font|FandolSong|2019年全国高中数学联合竞赛一试试题A卷>|http://git.tmml.wiki/XmacsLabs/planet/raw/c029037c2f11ec60cfebee2afbd74ceeddc74a4b/doc/2019年全国高中数学联合竞赛一试试题A卷.tm>

    <item><hlink|<with|font|FandolSong|高考数学>|http://git.tmml.wiki/XmacsLabs/planet/raw/main/高考数学/index.tm>
  </itemize>

  <section*|The Name "Mogan">

  <\quote-env>
    <name|Mogan> is named after <hlink|<name|Mount
    Mogan>|https://en.wikipedia.org/wiki/Mount_Mogan>, a famous attraction in
    my hometown. <with|font|FandolSong|墨干>(<name|Mogan>) literally means
    "dried ink". The word is derived from <name|莫干>(<name|Mogan>) which
    is a combination of <hlink|莫(Mo) and
    干(Gan)|https://en.wikipedia.org/wiki/Gan_Jiang_and_Mo_Ye>.

    \V Darcy
  </quote-env>

  <tmdoc-copyright|2020\U2022|<name|Xmacs> Labs>

  <tmdoc-license|Permission is granted to copy, distribute and/or modify this
  document under the terms of the GNU Free Documentation License, Version 1.1
  or any later version published by the Free Software Foundation; with no
  Invariant Sections, with no Front-Cover Texts, and with no Back-Cover
  Texts. A copy of the license is included in the section entitled "GNU Free
  Documentation License".>
</body>

<initial|<\collection>
</collection>>