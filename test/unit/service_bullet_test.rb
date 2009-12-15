# == Schema Information
#
# Table name: service_bullets
#
#  id           :integer(4)      not null, primary key
#  service_id   :integer(4)
#  bullet_point :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class ServiceBulletTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
