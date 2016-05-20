#!/bin/bash

for prefix in .local .local/svsm .local/scripts; do
  if [[ -d "$HOME/${prefix}/bin" && $PATH != *"$HOME/${prefix}/bin"* ]]; then
    export PATH="$HOME/${prefix}/bin${PATH:+:$PATH}"
  fi
  if [[ -d "$HOME/${prefix}/lib/pkgconfig" && $PKG_CONFIG_PATH != *"$HOME/${prefix}/lib/pkgconfig"* ]]; then
    export PKG_CONFIG_PATH="$HOME/${prefix}/lib/pkgconfig${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}"
  fi
  if [[ -d "$HOME/${prefix}/lib" && $LD_LIBRARY_PATH != *"$HOME/${prefix}/lib"* ]]; then
    export LD_LIBRARY_PATH="$HOME/${prefix}/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
  fi
  if [[ -d "$HOME/${prefix}/include" && $C_INCLUDE_PATH != *"$HOME/${prefix}/include"* ]]; then
    export C_INCLUDE_PATH="$HOME/${prefix}/include${C_INCLUDE_PATH:+:$C_INCLUDE_PATH}"
  fi
  if [[ -d "$HOME/${prefix}/share/man" && $MANPATH != *"$HOME/${prefix}/share/man"* ]]; then
    export MANPATH="$HOME/${prefix}/share/man${MANPATH:+:$MANPATH}"
  fi
done
