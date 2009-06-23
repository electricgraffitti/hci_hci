# == Schema Information
#
# Table name: services
#
#  id                  :integer(4)      not null, primary key
#  title               :string(255)
#  description         :text
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer(4)
#  avatar_updated_at   :datetime
#  keywords            :string(255)
#  permalink           :string(255)
#

require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
