require 'spec_helper'

describe file('/etc/feedhenry/fh-appstore') do
  it { should be_directory }
  it { should be_owned_by 'henryd' }
  it { should be_grouped_into 'henryg' }
  it { should be_mode 770 }
end

describe file('/etc/feedhenry/fh-appstore/conf.json') do
  it { should be_file }
  it { should be_mode 644 }
end