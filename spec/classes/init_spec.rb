require 'spec_helper'
describe 'custom_facts' do

  context 'with defaults for all parameters' do
    it { should contain_class('custom_facts') }
  end
end
