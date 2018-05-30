describe service("amazon-ssm-agent") do
  it { should be_installed }
  it { should be_enabled }
end