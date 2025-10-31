Facter.add(:test_fact) do
  setcode do
    test_fact = {}
    test_fact['key1'] = 'value1'
    test_fact['key2'] = Facter::Core::Execution.execute('/usr/bin/uname -a', on_fail: nil)
    test_fact['key3'] = Facter::Core::Execution.execute('/usr/bin/idontexist', on_fail: nil)
    test_fact['key4'] = Facter::Core::Execution.execute('/usr/bin/idontexist', on_fail: '')
    test_fact
  end
end
