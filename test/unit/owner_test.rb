# == Schema Information
#
# Table name: owners
#
#  id          :integer(4)      not null, primary key
#  ticket_id   :integer(4)
#  employee_id :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class OwnerTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
