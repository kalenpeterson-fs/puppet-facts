Facter.add('date') do
  confine :kernel => 'Linux'
  setcode do
    Facter::Core::Execution.exec('/usr/bin/date +"%s"')
  end
end
