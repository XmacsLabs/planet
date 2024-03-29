<TeXmacs|2.1.2>

<style|<tuple|tmdoc|chinese>>

<\body>
  <tmdoc-title|墨干V1.1.1的版本历史记录>

  墨干V1.1.1是V1.1.x系列的第二个版本。

  <\section*>
    墨干V1.1.1与GNU <TeXmacs> 2.1.2的三大区别
  </section*>

  ① 墨干优先服务教育，尤其是中学教育，基于GNU
  <TeXmacs>，从软件本身角度上讲，墨干会尽力降低GNU
  <TeXmacs>的使用门槛。

  ② 墨干是<name|墨客实验室>旗下结构化编辑器，将会和<name|墨者实验室>旗下<name|墨客星球>深度集成。<name|墨客星球>致力于解决网络上GNU
  <TeXmacs>文档匮乏的现状，是科技和教育领域的内容平台。

  ③ 墨干V1.1.0基于GNU <TeXmacs> 2.1.2定制，采用高性能的S7
  Scheme脚本引擎，并且已经升级到了Qt 5.15.x。

  <section*|重要变更>

  <\itemize>
    <item>文档：TM格式默认兼容GNU <TeXmacs>
    2.1.2。（可以启用<menu|Edit|Preferences|Others|Use UTF8 for CJK in
    TM format>，这样TM格式用文本编辑器打开可以直接看到中文，但是<TeXmacs>官方版本打开会乱码。）

    <item>文档：修复包含路径中含有中文的<TeXmacs>文档失败的问题

    <item>文档：修复<menu|Help|Search|Recent
    documents...>中相关文档路径包含中文不能跳转的问题

    <item>排版：改善PDF图片渲染的清晰度

    <item>排版：修复标签里面中文显示为Cork编码的问题，比如<label|我是一个中文标签>

    <item><LaTeX>：新增了<markup|Bmatrix>这个命令，用于输入
    <math|<Bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|4>>>>>>\ 

    <item>版本：修复Git仓库中文档具体版本无法插件的问题（由S7
    Scheme引入）

    <item>版本：修复路径名中包含中文的Git对象的相关功能

    <item>版本：修复<menu|Version|Compare
    with>中Git历史记录被翻译，导致出现Cork编码的问题

    <item>版本：修复粒度为粗糙时，两个文档对比导致<TeXmacs>崩溃的问题

    <item><strong|界面：主要工具栏和模式工具栏采用KDE
    Breeze图标>

    <item>代码：修复JavaScript代码高亮失效的问题
  </itemize>

  <tmdoc-copyright|2022|墨客实验室>

  <tmdoc-license|Permission is granted to copy, distribute and/or modify this
  document under the terms of the GNU Free Documentation License, Version 1.1
  or any later version published by the Free Software Foundation; with no
  Invariant Sections, with no Front-Cover Texts, and with no Back-Cover
  Texts. A copy of the license is included in the section entitled "GNU Free
  Documentation License".>

  \;
</body>

<\initial>
  <\collection>
    <associate|info-flag|detailed>
  </collection>
</initial>