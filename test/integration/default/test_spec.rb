if os.release == "14.04"
  describe service("amazon-ssm-agent") do
    it { should be_installed }
    it { should be_enabled }
  end
end 

if os.release == "16.04"
  describe systemd_service("amazon-ssm-agent") do
    it { should be_installed }
    it { should be_enabled }
  end
end
