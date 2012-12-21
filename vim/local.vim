" colorscheme zenburn
colorscheme neverland

set foldlevel=0

" au BufWritePost *.py :silent! !{rm ~/git/mancx/django/plugin/src/plugin/**/*.pyc ; kill -s SIGHUP `ps haux | grep -i plugin | grep -Ev '(grep)' | head -1 | awk '{print $2}'`}
