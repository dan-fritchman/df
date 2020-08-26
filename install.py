"""
Dotfile Installation  
"""

import os 
from pathlib import Path 

dotfiles = [
	'.profile', 
	'.zprofile',
	'.zshrc',
	'.bashrc',
	'.vimrc',
]
dotfiles = [Path(d).absolute() for d in dotfiles]

os.chdir(os.environ['HOME'])
for d in dotfiles:
	os.system(f'ln -fs {d}')

# Install some more stuff 
# os.system(f'curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash')

