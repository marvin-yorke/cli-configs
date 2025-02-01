if which pyenv > /dev/null;
  # setup PyEnv
  set -x PYENV_ROOT "$HOME/.pyenv"

  command -v pyenv >/dev/null || fish_add_path "$PYENV_ROOT/bin"
  pyenv init - fish | source

  if which pyenv-virtualenv-init > /dev/null;
    pyenv virtualenv-init - | source
  end
end

