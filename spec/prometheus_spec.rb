require "spec_helper"

# profile
describe file("/etc/profile.d/prometheus.sh") do
  it { should be_file }
  its(:content) { should match /2\.1\.0/ }
end

# config
# TODO: add here

# systemd
# TODO: add here
