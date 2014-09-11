dotfiles
========

Contains configuration files that I share across installations.

Setup is:

* xterm (configured with Xresources to use Solarized)
* dircolors
* solarized ansi-universal dircolors. Don't forget this - causes confusion.
* vim (with solarized colorscheme). Plugins:
  * pathogen
  * vim-clojure-static (ships with modern versions of vim)
  * rainbow parens
  * fireplace (works best with a cider repl in the project)
  * leiningen (has dependencies)
    * fireplace
    * projectionist
    * dispatch
Remaining configuration files/setup to deal with or test:

* tmux
* consider a paredit alternative
* Does leiningen.vim affect non-clojure loads?
