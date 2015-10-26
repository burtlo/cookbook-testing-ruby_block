def add_rbenv_to_path(rbenv_root)
  ENV['PATH'] = "#{rbenv_root}/shims:#{rbenv_root}/bin:#{ENV['PATH']}"
end
