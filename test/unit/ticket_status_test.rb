# == Schema Information
#
# Table name: ticket_statuses
#
#  id          :integer(4)      not null, primary key
#  status_type :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class TicketStatusTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
