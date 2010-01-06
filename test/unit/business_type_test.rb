# == Schema Information
#
# Table name: business_types
#
#  id            :integer(4)      not null, primary key
#  business_type :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class BusinessTypeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
