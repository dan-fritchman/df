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

for d in dotfiles:
	os.chdir(os.environ['HOME'])
	os.system(f'ln -fs {d}')
