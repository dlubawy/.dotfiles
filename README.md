# Yet Another Dotfiles Project

***

## About

This used to be my must-haves project. That project was intended to make it
easy for me to get up and running on a Windows machine with Cygwin. It also
held my `.vimrc` file so I could easily get back my Vim environment. However,
as time went on I found myself customizing a great deal more than just Vim and
adding certain Cygwin packages. This made me realize I needed a better way to
bootstrap my new environments along with better organization.

I came across [GitHub's dotfiles page](https://dotfiles.github.io/) and after
taking inspiration from a lot of different projects, I set out to streamline my
own environment. The actual bootstrapping relies on
[Dotbot](https://github.com/anishathalye/dotbot) which I found performed
exactly the way I needed. I've included instructions for how I setup a fresh
install in case anyone else wants my same setup.

***

## Setup

### Cygwin

To setup for Cygwin, you'll need to [download the
installer](https://cygwin.com/install.html). Then clone my repository in a
temporary place. Inside the repository is
`.dotfiles/cygwin/bin/cygwin_installer.bat`. Run this in the same directory as
the Cygwin installer. It'll go through the GUI installation process with a
bunch of preselected packages. Modify as you wish or leave it if you want a
copy exactly like mine. Proceed with the installation.

After installation you can copy the `.dotfiles` folder to your Cygwin home
directory. For fresh setup uncomment `force: true` in `default.conf.yaml` and
`cygwin.conf.yaml`. Now just `./install` and follow the prompts. I highly
recommend y for everything. After that, just finish the setup for Vundle, in
Vim `PluginInstall` and TPM, in Tmux `<prefix> - I`. Everything should be good
to go after, just recomment the force lines from earlier so you don't keep
deleting links and relinking.

### Linux (Debian based)

Clone the repository to your `$HOME` directory. For fresh setup uncomment
`force: true` in `default.conf.yaml` and `linux.conf.yaml`. Then `./install` I
recommend y to every prompt. You should now be completely setup, just recomment
those force lines from earlier.

***

## Future Plans and Ideas

* Go over the cygwin installation as I'm sure I have a huge amount of
  unnecessary or unused packages.
* Check the Linux side of things to make sure it propery works (I'm mostly on
  Windows like a loser).
* Maybe split the Linux portion for different distros.
* Get better automation to avoid manually editing files.
* Look into more bootstrapping efforts for Linux packages.
