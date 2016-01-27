require 'rugged'

huga = Rugged::Repository.init_at('./dotfiles')
huga.remotes.create 'origin', 'https://github.com/raa0121/dotfiles'
huga.fetch 'origin'
huga.branches.create("master", "origin/master")
huga.checkout 'master'
huga.submodules.add('https://gist.github.com/raa0121/37db77d02251381d9665.git', 'gist')