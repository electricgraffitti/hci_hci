# == Schema Information
#
# Table name: ticket_assignments
#
#  id          :integer(4)      not null, primary key
#  ticket_id   :integer(4)
#  employee_id :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class TicketAssignmentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
