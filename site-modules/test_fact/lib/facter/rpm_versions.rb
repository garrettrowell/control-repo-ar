# rpm_versions fact
# Returns the highest [epoch:]version-release of every RPM installed on the system
#
module Util
  def self.add_fact
    Facter.add(:rpm_versions) do
      confine 'os' do |os|
        os['family'] == 'RedHat'
      end
      setcode do
        versions = {}
        vstring = Facter::Core::Execution.execute('rpm -qa --qf \'%{NAME} %{EPOCH}:%{VERSION}-%{RELEASE}\n\' | sort -V')

        vstring.split("\n").each do |item|
          name, evr = item.split(' ')
          versions[name] = evr.sub(%r{^\(none\):}, '')
        end

        versions
      end
    end
  end
end

Util.add_fact
