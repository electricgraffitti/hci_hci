# == Schema Information
#
# Table name: ticket_assets
#
#  id              :integer(4)      not null, primary key
#  attachable_id   :integer(4)
#  attachable_type :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class TicketAssetTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
