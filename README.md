dotfiles.git
============

[![Join the chat at https://gitter.im/yang6n/dotfiles](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/yang6n/dotfiles?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
Clone and run this on a new EC2 instance running Ubuntu 12.04.2 LTS to
configure your `bash` and `emacs` development environment as follows:

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/yang6n/dotfiles?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

```sh
cd $HOME
git clone https://github.com/yang6n/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
ln -sb dotfiles/.vimrc .
ln -sb dotfiles/.zshrc .
ln -sb dotfiles/.zshrc_custom .
ln -sb ~/dotfiles/theme/jyang.zsh-theme ~/.oh-my-zsh/themes
```

See also http://github.com/yang6n/setup to install prerequisite
programs. If all goes well, in addition to a more useful prompt, now you can
do `emacs -nw hello.js` and hitting `C-c!` to launch an interactive SSJS
REPL, among many other features. See the
[Startup Engineering Video Lectures 4a/4b](https://class.coursera.org/startup-001/lecture/index)
for more details.
