dotfiles.git
============

[![Join the chat at https://gitter.im/yang6n/dotfiles](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/yang6n/dotfiles?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
Clone and run this on a new EC2 instance running Ubuntu 12.04.2 LTS to
configure your `bash` and `emacs` development environment as follows:

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/yang6n/dotfiles?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

```sh
cd $HOME
git clone https://github.com/yang6n/dotfiles.git
ln -s dotfiles/.screenrc .
ln -s dotfiles/.bash_profile .
ln -s dotfiles/.bashrc .
ln -s dotfiles/.bashrc_custom .
mv .emacs.d .emacs.d~
ln -s dotfiles/.emacs.d .
ln -s dotfiles/.vimrc .
```

See also http://github.com/startup-class/setup to install prerequisite
programs. If all goes well, in addition to a more useful prompt, now you can
do `emacs -nw hello.js` and hitting `C-c!` to launch an interactive SSJS
REPL, among many other features. See the
[Startup Engineering Video Lectures 4a/4b](https://class.coursera.org/startup-001/lecture/index)
for more details.
