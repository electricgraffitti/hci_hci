# == Schema Information
#
# Table name: priorities
#
#  id            :integer(4)      not null, primary key
#  priority_name :string(255)
#  priority_type :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class PriorityTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
