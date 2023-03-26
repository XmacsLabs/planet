<TeXmacs|2.1.2>

<style|<tuple|seminar|comment>>

<\body>
  <doc-data|<doc-title|Seminar X202303>|<doc-author|<author-data|<author-name|BadVortex>>>>

  <section|Welcome>

  <section|Topic: How to create a pull request in Gitee?>

  https://gitee.com/XmacsLabs/planet/issues/I6JNE2

  <subsection|Some simple preparations>

  1) You already have a Gitee account.

  2) Open <strong|the terminal> and run the following command:

  <\verbatim-code>
    git --version
  </verbatim-code>

  <subsection|Generate and add SSH public key>

  1) We need to generate SSH key by run the following command:

  <\verbatim-code>
    ssh-keygen -t ed25519 -C "xxxxx@xxxxx.com" \ 

    # Generating public/private ed25519 key pair...
  </verbatim-code>

  * The xxxxx@xxxxx.com here is just the name of the generated SSH key, and
  does not restrict or require it to be specifically named as a certain
  mailbox.

  * Just press Enter three times, and the ssh key will be generated, and
  <strong|no password required>.

  \;

  2) We can print SSH public key using the <verbatim|cat> command:

  <\verbatim-code>
    cat ~/.ssh/id_ed25519.pub
  </verbatim-code>

  3) Copy the SSH public key to your clipboard.

  4) In the upper-right corner of any page of Gitee, click your profile
  photo, then click<nbsp><strong|Settings>. In the side bar, click
  <strong|SSH public key>.

  5) Paste your public key into the Key field. Click <strong|Add SSH key>.

  <subsection|Git clone>

  * I already have the developer permission of the warehouse
  "XmacsLabs/planet".

  1) Go to the <strong|Code> page of "XmacsLabs/planet", click the
  <strong|Clone/Download> button, switch to SSH, and copy it.

  2) Return to your home directory in The Terminal using the <verbatim|cd>
  command.

  3) We need to clone the warehouse by run the following command:

  <\verbatim-code>
    git clone git@gitee.com:XmacsLabs/planet.git
  </verbatim-code>

  (If prompted, enter YES.)

  <subsection|Git add>

  1) Open the planet folder by file manager, and paste the files to be added
  here.

  2) Enter the directory in The Terminal using the <verbatim|cd> command:

  <\verbatim-code>
    cd planet
  </verbatim-code>

  3) We can see which changes have been staged using the <verbatim|git
  status> command.

  4) Use the <verbatim|git status> command:

  <\verbatim-code>
    git add XmacsLabs/X202303.tm
  </verbatim-code>

  <subsection|Git config>

  1) Add your own username using the <verbatim|git config> command:

  <\verbatim-code>
    git config --global user.name "\<#58A8\>\<#5BA2\>\<#5B9E\>\<#9A8C\>\<#5BA4\>\<#673A\>\<#5668\>\<#4EBA\>"
  </verbatim-code>

  2) Add your own E-mail using the <verbatim|git config> command:

  <\verbatim-code>
    git config --global user.email ``bot@xmacs.net"
  </verbatim-code>

  3) You can view which changes have been done using the <verbatim|cat>
  command:

  <\verbatim-code>
    cat ~/.gitconfig
  </verbatim-code>

  <subsection|Git commit>

  1) You can make a commit using the <verbatim|git commit -m> command:

  <\verbatim-code>
    git commit -m "2023\<#5E74\>\<#7B2C\>\<#4E09\>\<#6B21\>\<#7814\>\<#8BA8\>\<#4F1A\>"
  </verbatim-code>

  <subsection|Git push>

  1) You can make a push using the <verbatim|git push origin main> command.

  <section|Topic: to purchase a Loongson laptop>
</body>

<\initial>
  <\collection>
    <associate|info-flag|detailed>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|3|4>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|2.1|2>>
    <associate|auto-4|<tuple|2.2|2>>
    <associate|auto-5|<tuple|2.3|3>>
    <associate|auto-6|<tuple|2.4|3>>
    <associate|auto-7|<tuple|2.5|4>>
    <associate|auto-8|<tuple|2.6|4>>
    <associate|auto-9|<tuple|2.7|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Welcome>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Topic:
      How to create a pull request in Gitee?>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Some simple preparations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Generate and add SSH public
      key <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Git clone
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Git add
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>Git config
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.6<space|2spc>Git commit
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.7<space|2spc>Git push
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Topic:
      to purchase a Loongson laptop> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>