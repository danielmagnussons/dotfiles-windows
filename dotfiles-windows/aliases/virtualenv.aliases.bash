
alias ve='virtualenv '
complete -o default -o nospace -F _virtualenv ve


alias ve-create="virtualenv --no-site-packages env"
alias ve-activate="source env/Scripts/activate"