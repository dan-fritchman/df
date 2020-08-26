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


