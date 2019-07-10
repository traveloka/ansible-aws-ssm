if os.release == "14.04"
  describe service("amazon-ssm-agent") do
    it { should be_installed }
    it { should be_enabled }
  end
end

if os.release == "16.04"
  describe command('ls -l /var/lib/snapd/snaps/amazon-ssm-agent*.snap') do
   its('stderr') { should eq '' }
   its('exit_status') { should eq 0 }
  end
  describe processes('amazon-ssm-agent') do
    it { should exist }
  end
end
