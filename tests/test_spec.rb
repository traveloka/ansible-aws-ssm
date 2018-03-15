describe package("amazon-ssm-agent") do
  it { should be_installed }
  it { should be_running }
  it { should be_enabled }
end

describe service("amazon-ssm-agent") do
    it { should be_installed }
    it { should be_running }
    it { should be_enabled }
  end