Facter.add('git_version') do
  confine :osfamily => 'Linux'
  setcode do
    Facter::Core::Execution.exec('/usr/bin/git --version |/usr/bin/awk \'{print $3}\'')
  end
end
