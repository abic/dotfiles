
if [[ -e "$HOME/.local/share/chruby/chruby.sh" ]]; then
  . "$HOME/.local/share/chruby/chruby.sh"
  chruby 'ruby-2.3.1'
fi
