# == Schema Information
#
# Table name: tickets
#
#  id               :integer(4)      not null, primary key
#  subject          :string(255)
#  description      :text
#  due_date         :date
#  ticket_status_id :integer(4)
#  priority_id      :integer(4)
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
