# == Schema Information
#
# Table name: ticket_updates
#
#  id          :integer(4)      not null, primary key
#  comment     :text
#  employee_id :integer(4)
#  ticket_id   :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class TicketUpdateTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
