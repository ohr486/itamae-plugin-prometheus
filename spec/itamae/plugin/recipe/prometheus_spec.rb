require "spec_helper"

RSpec.describe Itamae::Plugin::Recipe::Prometheus do
  it "has a version number" do
    expect(Itamae::Plugin::Recipe::Prometheus::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
