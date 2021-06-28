Config for bash shell
=====================

Installation
------------

```
$ git clone git@github.com:kaineer/config-profile.git ~/git/config/profile
$ echo "source ~/git/config/profile/bash" > .bash_profile
```

Implements
----------

 * Shell options
   * checkwinsize - used to check for window size after each command
 * Shell variables
   * BROWSER
   * SSH_KEY_PATH
 * Loads
   * assets from [bin-assets](https://gitlab.com:kaineer/bin-assets)
   * [fasd](https://github.com/clvv/fasd)
   * [nvm and nvm autocompletion](https://github.com/nvm-sh/nvm)
   * [fzf](https://github.com/junegunn/fzf)
   * [starship prompt](https://starship.rs/)
