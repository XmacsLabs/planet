<TeXmacs|2.1.2>

<style|<tuple|seminar|comment>>

<\body>
  <doc-data|<doc-title|Seminar X202303>|<doc-author|<author-data|<author-name|BadVortex>>>>

  <section|Welcome>

  <section|Topic: How to create a pull request in Gitee?>

  https://gitee.com/XmacsLabs/planet/issues/I6JNE2

  <subsection|Some simple preparations>

  <\enumerate>
    <item>You already have a Gitee account.

    <item>Open <strong|the terminal> and run the following command:

    <\shell-code>
      git --version
    </shell-code>
  </enumerate>

  <subsection|Generate and add SSH public key>

  <\enumerate>
    <item>We need to generate SSH key by run the following command:

    <\shell-code>
      ssh-keygen -t ed25519 -C "xxxxx@xxxxx.com" \ 

      # Generating public/private ed25519 key pair...
    </shell-code>

    * The xxxxx@xxxxx.com here is just the name of the generated SSH key, and
    does not restrict or require it to be specifically named as a certain
    mailbox.

    * Just press Enter three times, and the ssh key will be generated, and
    <strong|no password required>.

    <item>We can print SSH public key using the <verbatim|cat> command:

    <\shell-code>
      cat ~/.ssh/id_ed25519.pub
    </shell-code>

    <item>Copy the SSH public key to your clipboard.

    <item>In the upper-right corner of any page of Gitee, click your profile
    photo, then click<nbsp><strong|Settings>. In the side bar, click
    <strong|SSH public key>.

    <item>Paste your public key into the Key field. Click <strong|Add SSH
    key>.
  </enumerate>

  <subsection|Git clone>

  <\enumerate>
    <item>Go to the <strong|Code> page of "XmacsLabs/planet", click the
    <strong|Clone/Download> button, switch to SSH, and copy it.

    <item>Return to your home directory in The Terminal using the
    <verbatim|cd> command.

    <item>We need to clone the warehouse by run the following command:

    <\verbatim-code>
      git clone git@gitee.com:XmacsLabs/planet.git
    </verbatim-code>

    (If prompted, enter YES.)
  </enumerate>

  <subsection|Git add>

  <\itemize>
    <item>Open the planet folder by file manager, and paste the files to be
    added here.

    <item>Enter the directory in The Terminal using the <verbatim|cd>
    command:

    <\verbatim-code>
      cd planet
    </verbatim-code>

    <item>We can see which changes have been staged using the <verbatim|git
    status> command.

    <item>Use the <verbatim|git status> command:

    <\verbatim-code>
      git add XmacsLabs/X202303.tm
    </verbatim-code>
  </itemize>

  <subsection|Git config>

  <\enumerate>
    <item>Add your own username using the <verbatim|git config> command:

    <\verbatim-code>
      git config --global user.name "墨客实验室机器人"
    </verbatim-code>

    <item>Add your own E-mail using the <verbatim|git config> command:

    <\verbatim-code>
      git config --global user.email "bot@xmacs.net"
    </verbatim-code>

    <item>You can view which changes have been done using the <verbatim|cat>
    command:

    <\verbatim-code>
      cat ~/.gitconfig
    </verbatim-code>
  </enumerate>

  <subsection|Git commit>

  You can make a commit using the <verbatim|git commit -m> command:

  <\verbatim-code>
    git commit -m "2023年第三次研讨会"
  </verbatim-code>

  <subsection|Git push>

  <\note*>
    I already have the developer permission of the repository
    "XmacsLabs/planet". That's why I can push the code to the main branch and
    generate a pull request on Gitee. If you do not have the developer
    permission of the repository, you have to learn how to fork a
    Gitee/Github project and then create the pull request via the
    Gitee/Github web.
  </note*>

  You can make a push using the <verbatim|git push origin main> command. The
  pull request will be generated automatically.

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