<TeXmacs|2.1.2>

<style|<tuple|tmdoc|old-spacing|old-dots|old-lengths|british|compact-list>>

<\body>
  <tmdoc-title|Welcome to Mogan Editor>

  <with|color|dark red|<\warning*>
    Please use <hlink|<name|Mogan> v1.1.0|https://github.com/XmacsLabs/mogan/releases/tag/v1.1.0>
    if you are viewing this document with messy code (They should be Chinese
    characters).
  </warning*>>

  <name|Mogan> is a structure editor delivered by <name|<hlink|Xmacs
  Labs|https://github.com/XmacsLabs>>, which is a fork of <hlink|GNU
  <TeXmacs>|https://www.texmacs.org>. Its latest version is
  <name|<strong|Mogan v1.1.1>>.

  GNU <TeXmacs> is a structured editor developed since the late 1990s by
  <hlink|<person|Joris van der Hoeven>|http://www.texmacs.org/joris/main/joris.html>,
  a mathematician at CNRS in France. It is designed to write high-quality
  technical documents using an intuitive and easy-to-use graphical interface,
  and able to achieve the same level of results as <LaTeX>. Its main users
  are currently primary and secondary school teachers (mostly in France) and
  university researchers.

  <hlink|<person|Darcy Shen>|https://github.com/darcy-shen> released
  <name|Mogan> v1.0.0 on January 30, 2022, and created <name|Xmacs Labs>, a
  non-profit organization that aims to popularize GNU <TeXmacs> and make it
  available to more people to enjoy the excellent software developed by
  <person|Joris van der Hoeven>.

  <section*|What is GNU <TeXmacs>>

  Highly recommended to watch the following official demo of <TeXmacs> 2.1

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
    <TeXmacs> is <strong|not> based on <TeX>/<LaTeX>.

    <item>Its rendering engine uses <strong|high-quality typesetting
    algorithms> so as to produce professionally looking documents, which can
    either be printed out or presented from a laptop.

    <item>New styles can be written by the user and new features can be added
    to the editor using the Scheme extension language.

    <item>Runs on all major <name|Unix> platforms, <name|macOS>, and
    <name|Windows>.
  </itemize-minus>

  \;

  <name|Mogan> inherits all the above features from GNU <TeXmacs> (see
  <hlink|the homepage of GNU <TeXmacs>|https://www.texmacs.org>), so it can
  also be used as a efficient study tool for students, teachers, and
  researchers in science and technology, and suitable to create high-quality
  assignment documents, report slides, and <LaTeX>-level papers.\ 

  Based on GNU <TeXmacs>, <name|Mogan> has more bugs fixed,
  performance-optimized, and the interface beautified.

  <section*|Goal>

  <strong|We create <name|Mogan> for everyone to learn and create science and
  technology.>

  <section*|Contact us>

  <strong|You are welcome to contact us via the following ways to share your
  experience, provide suggestions or report issues on <name|Mogan Editor>.
  Interested developers and volunteer contributors are also most welcome to
  join <name|Xmacs Labs>.>

  <\with|par-columns|2>
    <\itemize>
      <\with|par-columns|1>
        <item><name|Bilibili>: <hlink|<with|font|FandolSong|\<#6C88\>\<#6D6A\>\<#718A\>\<#732B\>\<#513F\>>|https://space.bilibili.com/28058658>

        <item><name|Gitee>: <hlink|<with|font|FandolSong|\<#58A8\>\<#8005\>\<#5B9E\>\<#9A8C\>\<#5BA4\>>|https://gitee.com/XmacsLabs/>

        <item><name|GitHub>: <hlink|<name|XmacsLabs>|https://github.com/XmacsLabs>

        <item><name|Douban> Group: <hlink|GNU
        <TeXmacs>|https://www.douban.com/group/texmacs/>

        <item><name|Zhihu>: <hlink|<with|font|FandolSong|\<#58A8\>\<#5E72\>\<#7F16\>\<#8F91\>\<#5668\>>|https://www.zhihu.com/people/xmacs>

        <item><name|WeChat> Official Account:
        <with|font|FandolSong|\<#58A8\>\<#8005\>\<#5B9E\>\<#9A8C\>\<#5BA4\>>
        (xmacs2020)

        <item><name|WeChat> Group: <with|font|FandolSong|\<#58A8\>\<#5BA2\>\<#793E\>\<#533A\>>\<#FF08\>Join
        via account <name|XmacsLabs>)

        <item><name|WeChat> Group: <with|font|FandolSong|\<#58A8\>\<#5E72\>\<#7F16\>\<#8F91\>\<#5668\>>\<#FF08\>Join
        via account <name|XmacsLabs>\<#FF09\>

        <item><name|QQ> Group: GNU <TeXmacs><space|0.6spc><with|font|FandolSong|\<#4E2D\>\<#6587\>\<#793E\>\<#533A\>>
        (934456971)
      </with>
    </itemize>
  </with>

  You are also welcome to consult the TeXmacs community, especially the
  official forum, if you encounter problems while using Mogan.

  <\itemize>
    <item>Official Forum: <hlink|The GNU <TeXmacs>
    forum|http://forum.texmacs.cn>

    <item><name|GitHub>: <hlink|GNU <TeXmacs>|https://github.com/texmacs>

    <item><name|Twitter>: <hlink|GNU <TeXmacs>|https://twitter.com/gnu_texmacs>

    <item><name|Gitter>: <hlink|texmacs/Lobby|https://gitter.im/texmacs/Lobby>\ 

    <item><name|YouTube>: <hlink|<TeXmacs>
    Videos|https://www.youtube.com/channel/UCLaZZkOj3GPYFu9pVsEbthg>

    <item><hlink|Mailing lists for <TeXmacs>|https://www.texmacs.org/tmweb/home/ml.en.html>
  </itemize>

  <section*|<name|Xmacs Planet>>

  <hlink|<name|Xmacs Planet>|<math|http://git.tmml.wiki/XmacsLabs/planet/raw/main/index.tm>>
  is an aggregation of <TeXmacs> documents submitted by <name|Mogan> users.
  The topic of <name|Xmacs Planet> focuses on Science and Technology.

  Selected <TeXmacs> documents\<#FF1A\>

  <\itemize>
    <item><hlink|\<#6C88\>\<#6D6A\>\<#718A\>\<#732B\>\<#513F\>\<#FF1A\>\<#5B9A\>\<#5236\>\<#5FEB\>\<#6377\>\<#952E\>\<#5FEB\>\<#901F\>\<#8F93\>\<#5165\>\<#4EE5\>1\<#4E3A\>\<#5206\>\<#5B50\>\<#7684\>\<#5206\>\<#5F0F\>|http://git.tmml.wiki/XmacsLabs/planet/raw/main/\<#6C88\>\<#6D6A\>\<#718A\>\<#732B\>\<#513F\>/\<#5B9A\>\<#5236\>\<#5FEB\>\<#6377\>\<#952E\>\<#5FEB\>\<#901F\>\<#8F93\>\<#5165\>\<#4EE5\>1\<#4E3A\>\<#5206\>\<#5B50\>\<#7684\>\<#5206\>\<#5F0F\>.tm>

    <item><hlink|2019\<#5E74\>\<#5168\>\<#56FD\>\<#9AD8\>\<#4E2D\>\<#6570\>\<#5B66\>\<#8054\>\<#5408\>\<#7ADE\>\<#8D5B\>\<#4E00\>\<#8BD5\>\<#8BD5\>\<#9898\>A\<#5377\>|http://git.tmml.wiki/XmacsLabs/planet/raw/c029037c2f11ec60cfebee2afbd74ceeddc74a4b/doc/2019\<#5E74\>\<#5168\>\<#56FD\>\<#9AD8\>\<#4E2D\>\<#6570\>\<#5B66\>\<#8054\>\<#5408\>\<#7ADE\>\<#8D5B\>\<#4E00\>\<#8BD5\>\<#8BD5\>\<#9898\>A\<#5377\>.tm>

    <item><hlink|\<#9AD8\>\<#8003\>\<#6570\>\<#5B66\>|http://git.tmml.wiki/XmacsLabs/planet/raw/main/\<#9AD8\>\<#8003\>\<#6570\>\<#5B66\>/index.tm>
  </itemize>

  <section*|The Name "Mogan">

  <\quote-env>
    <name|Mogan> is named after <hlink|<name|Mount
    Mogan>|https://en.wikipedia.org/wiki/Mount_Mogan>, a famous attraction in
    my hometown. <with|font|FandolSong|\<#58A8\>\<#5E72\>>(<name|Mogan>)
    literally means "dried ink". The word is derived from
    <name|\<#83AB\>\<#5E72\>>(<name|Mogan>) which is a combination of
    <hlink|\<#83AB\>(Mo) and \<#5E72\>(Gan)|https://en.wikipedia.org/wiki/Gan_Jiang_and_Mo_Ye>.

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