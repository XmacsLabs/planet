<TeXmacs|2.1.3>

<style|<tuple|tmdoc|chinese>>

<\body>
  <tmdoc-title|墨干V1.1.0的版本历史记录>

  墨干V1.1.0是V1.1.x系列的第一个版本。

  <\section*>
    墨干V1.1.0与GNU <TeXmacs> 2.1.2的三大区别
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
    <item>中日韩：tm格式里面中文的序列化从Cork编码切换到了Unicode

    <item>性能：通过预计算字体位置的方式大大优化了初次启动和初次使用墨干中某项功能的性能

    <item>BibTeX: 大量BibTeX相关错误修复和功能增强
    (<hlink||https://gitee.com/XmacsLabs/mogan/issues/I5L42P>详见：<hlink|BibTeX相关工单汇总|https://gitee.com/XmacsLabs/mogan/issues/I5L42P>)

    <item>LaTeX: 修复了LaTeX文档的导入和导出

    <item>代码：优化了墨干阅读和编辑代码的体验

    <item>界面：图标由太极风格的砚台改为书法风格的墨干二字

    <item>幻灯片：大量主题资源文件内置，避免由网络不畅引起的错误

    <item>样式：为中文文档做了大量样式调整，尽可能避免使用斜体
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

<initial|<\collection>
</collection>>