Facter.add(:test_fact) do
  setcode do
    test_fact = {}
    test_fact['key1'] = 'value1'
    test_fact['key2'] = Facter::Core::Execution.execute('/usr/bin/uname -a', on_fail: nil)
    key3 = Facter::Core::Execution.execute('/usr/bin/idontexist', on_fail: nil)
    test_fact['key3'] = key3 unless key3.nil? || key3.empty?
    test_fact['key4'] = Facter::Core::Execution.execute('/usr/bin/idontexist', on_fail: '')
    test_fact['key5'] = {}
    test_fact['key6'] = {}
    nest1 = Facter::Core::Execution.execute('/usr/bin/idontexist -r', on_fail: nil)
    test_fact['key6']['nest1'] = nest1 unless nest1.nil? || nest1.empty?
    test_fact['key6']['nest2'] = 'value6nest2'
    test_fact
  end
end
