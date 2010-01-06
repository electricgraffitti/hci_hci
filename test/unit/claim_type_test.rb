# == Schema Information
#
# Table name: claim_types
#
#  id         :integer(4)      not null, primary key
#  claim_type :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class ClaimTypeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
