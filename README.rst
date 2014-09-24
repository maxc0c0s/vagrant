Vagrant
=======
Provisioning
------------------
set_timezone.sh
^^^^^^^^^^^^^^^^^^^^^
Can be customized from the script.

install_from_apt.sh
^^^^^^^^^^^^^^^^^^^^^
Install Git and Chromium Browser. To access to browser you have to start the vm using: vagrant ssh -- -X

user_setup.sh
^^^^^^^^^^^^^^^^^^^^^
Generate an rsa ssh key. Send the key to github. Note: customization can be done through custom.sh

install_from_git.sh
^^^^^^^^^^^^^^^^^^^^^
Install maxc0c0s/dotfiles. Note: customization can be done through custom.sh

custom.sh
^^^^^^^^^^^^^^^^^^^^^
This file must be added manually.
available variables:

- git_email(if not specified, the value from .gitconfig in dotfiles will be taken)
- git_name(if not specified, the value from .gitconfig in dotfiles will be taken)
- username(Github)(required)
- password(Github)(required)
- key_title(title of the key sent to Github)
