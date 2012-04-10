# Usage:
#
# context "factory" do
#   it { should have_valid_factory(:address) }
# end
RSpec::Matchers.define :have_valid_factory do |factory_name|
  match do |model|
    Factory(factory_name).new_record?.should be_false
  end
end