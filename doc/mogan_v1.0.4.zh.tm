<TeXmacs|2.1.3>

<style|<tuple|tmdoc|chinese>>

<\body>
  <tmdoc-title|墨干编辑器V1.0.4的版本历史记录>

  墨干编辑器V1.0.4是V1.0.x系列最后一个版本。

  <section*|墨干编辑器的宗旨>

  总结一下墨干编辑器V1.0.4和GNU <TeXmacs> 2.1.1的三大区别：

  ① 墨干编辑器优先服务教育，尤其是中学教育，基于<TeXmacs>，从软件本身角度上讲，墨干编辑器会尽力降低<TeXmacs>的使用门槛。

  ② 墨干编辑器是墨者实验室旗下结构化编辑器，将会和墨者实验室旗下墨客星球深度集成。墨客星球致力于解决网络上<TeXmacs>文档匮乏的现状，是科技和教育领域的内容平台。

  ③ 墨干编辑器V1.0.4基于GNU <TeXmacs>
  2.1.1定制，采用高性能的S7 Scheme脚本引擎，并且已经升级到了Qt
  5.15.x。

  <section*|重要变更>

  <\itemize>
    <item>经过多次迭代，S7 Scheme脚本引擎对于初级用户的常用功能来说，已经十分稳定流畅

    <item>通过 帮助<math|\<rightarrow\>>墨客星球
    ，只要连接互联网，就可以免费获得

    <\itemize>
      <item>2021年十份高考数学试题真题（例如：<hlink|示说网PDF在线查看：2021年浙江高考数学试题|https://www.slidestalk.com/u282/zjmath202182681>）

      <item>基础数学结构和希腊字母的输入方式，并配有B站教学<hlink|视频合集|https://www.bilibili.com/video/BV1tU4y1171q>（共六个10分钟以内的视频）
    </itemize>

    <item><strong|插件>：修复Gnuplot插件若干问题，并录制Gnuplot插件<hlink|安装|https://www.bilibili.com/video/BV1mS4y1B7Hd>和<hlink|使用|https://www.bilibili.com/video/BV1K34y1E7dp>两个教学视频，可用于<strong|中学教育>中函数图像的绘制

    <item><strong|插件>：内置200K以内的欧几里得绘图软件可执行文件，欧几里得插件默认可用（Windows平台仍需从应用商店安装Python），可用于<strong|中学教育>中的平面几何教学

    <item><strong|修复了困扰<TeXmacs>中文用户多年的中文输入法漏字（非期望提交上屏）的问题>

    <item><strong|修复了 帮助<math|\<rightarrow\>>查找<math|\<rightarrow\>>文档
    弹窗使用中文输入法直接崩溃的问题>

    <item><strong|修复了远程文档中非<TeXmacs>文档链接的跳转问题，V1.0.4开始，非<TeXmacs>文档链接可以直接跳转到浏览器打开>

    <item>修复了分段函数的排版问题，由于该修复是临时解决方案，暂时没有反馈到上游GNU
    <TeXmacs>代码仓库

    <item><strong|易用性>：在右键菜单中顶部增加了复制、剪切、粘贴三个菜单项，更加符合用户日常使用习惯

    <item><strong|易用性>：在中文文档中，新增一系列按键序列转化以方便输入①②③，例如：<key|@><key|1>用于输入①

    <item><strong|易用性>：调整了一些<TeXmacs>的默认配置，比如默认使用Emacs快捷键，具体请看发布会视频
  </itemize>

  <tmdoc-copyright|2022|墨者实验室>

  <tmdoc-license|Permission is granted to copy, distribute and/or modify this
  document under the terms of the GNU Free Documentation License, Version 1.1
  or any later version published by the Free Software Foundation; with no
  Invariant Sections, with no Front-Cover Texts, and with no Back-Cover
  Texts. A copy of the license is included in the section entitled "GNU Free
  Documentation License".>

  \;
</body>