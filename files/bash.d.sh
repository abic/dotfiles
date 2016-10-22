if [ -d ~/.bash.d ]; then
  for include in ~/.bash.d/*.sh; do
  . $include
  done
fi
