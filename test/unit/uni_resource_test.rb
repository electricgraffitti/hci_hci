# == Schema Information
#
# Table name: uni_resources
#
#  id                          :integer(4)      not null, primary key
#  title                       :string(255)
#  description                 :text
#  featured                    :boolean(1)
#  permalink                   :string(255)
#  created_at                  :datetime
#  updated_at                  :datetime
#  uni_res_avatar_file_name    :string(255)
#  uni_res_avatar_content_type :string(255)
#  uni_res_avatar_file_size    :integer(4)
#  uni_res_avatar_updated_at   :datetime
#

require 'test_helper'

class UniResourceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
