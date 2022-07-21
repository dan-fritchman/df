"""
# Dotfile Installation  
"""

import os
from typing import Optional, List
from dataclasses import dataclass
from pathlib import Path


@dataclass
class Dotfile:
    local: str
    linkto: Optional[str] = None


dotfiles = [
    Dotfile(".profile"),
    Dotfile(".zshrc"),
    Dotfile(".bash_profile"),
    Dotfile(".vimrc"),
    Dotfile(".tmux.conf"),
    Dotfile(".ssh.config", linkto=".ssh/config"),
]

here = Path(__file__).parent
commands: List[str] = []

os.chdir(os.environ["HOME"])

for d in dotfiles:
    local = here / Path(d.local)
    local = local.absolute()
    if d.linkto is not None:
        linkto = Path(d.linkto).absolute()
        commands.append(f"ln -fs {local} {linkto}")
    else:
        commands.append(f"ln -fs {local}")

# Excecute all those commands. Comment for "dry runs".
for cmd in commands:
    print(cmd)
    os.system(cmd)

# Install some more stuff
# os.system(f'curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash')
#  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# rustup component add rust-src
