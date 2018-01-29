require "spec_helper"

# profile
describe file("/etc/profile.d/prometheus.sh") do
  it { should be_file }
  its(:content) { should match /2\.1\.0/ }
end

# config
# TODO: add here

# systemd
describe file("/etc/systemd/system/prometheus.service") do
  it { should be_file }
  its(:content) { should contain("ExecStart=/usr/local/prometheus/prometheus-2.1.0.linux-amd64/prometheus") }
end
