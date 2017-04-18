require 'spec_helper'

describe service('fh-dataman') do
  it { should be_enabled }
  it { should be_running }
end

describe port(44444) do
  it { should be_listening }
end

describe command(node_version_cmd_for('fh-dataman')) do
  its(:stdout) { should match node_version_format_for('fh-dataman') }
end