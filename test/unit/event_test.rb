# == Schema Information
#
# Table name: events
#
#  id               :integer(4)      not null, primary key
#  title            :string(255)
#  description      :text
#  meta_description :text
#  keywords         :string(255)
#  permalink        :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  start_date       :date
#  end_date         :date
#  website_url      :string(255)
#  place            :string(255)
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
