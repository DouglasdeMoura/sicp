# SICP exercises

Installing MIT Scheme on Ubuntu:
`sudo apt install mit-scheme`

Executing Scheme programs:
`mit-scheme --quiet < HelloWorld.scm`

Improving mit-scheme REPL with autocompletion:
`sudo apt install rlwrap`

Adding autocompletion for mit-scheme:
`wget https://gist.githubusercontent.com/bobbyno/3325982/raw/fc0208d287e56adc12b4c76114fcd21a107082ad/mit_scheme_bindings.txt && mkdir .mit-scheme && mv mit_scheme_bindings.txt ~/.mit-scheme/mit-scheme-bindings.txt`

Add these aliases for a better user experience:
`alias sicp="rlwrap -r -c -f ~/.mit-scheme/mit-scheme-bindings.txt mit-scheme`
`alias esicp="mit-scheme --quiet < "`
