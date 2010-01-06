# == Schema Information
#
# Table name: service_inquiries
#
#  id               :integer(4)      not null, primary key
#  business_type_id :integer(4)
#  claim_type_id    :integer(4)
#  goal_type_id     :integer(4)
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class ServiceInquiryTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
