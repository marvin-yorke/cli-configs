if which rbenv > /dev/null;
  # setup rbenv
  rbenv init - fish | source
  abbr -a be 'bundle exec'
end

