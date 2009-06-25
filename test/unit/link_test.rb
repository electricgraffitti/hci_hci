# == Schema Information
#
# Table name: links
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  description :text
#  link_url    :string(255)
#  keywords    :string(255)
#  permalink   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
