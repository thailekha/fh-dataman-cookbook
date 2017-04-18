require 'spec_helper'

describe service('fh-appstore') do
  it { should be_enabled }
  it { should be_running }
end

describe port(8821) do
  it { should be_listening }
end

describe command(node_version_cmd_for('fh-appstore')) do
  its(:stdout) { should match node_version_format_for('fh-appstore') }
end