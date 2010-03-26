# == Schema Information
#
# Table name: banners
#
#  id                  :integer(4)      not null, primary key
#  headline            :string(255)
#  content             :text
#  secondary_banners   :boolean(1)
#  created_at          :datetime
#  updated_at          :datetime
#  banner_file_name    :string(255)
#  banner_content_type :string(255)
#  banner_file_size    :integer(4)
#  banner_updated_at   :datetime
#  button_color        :string(255)
#  button_position     :string(255)
#  button_text         :string(255)
#  button_url          :string(255)
#  banner_count        :integer(4)
#  active_banner       :boolean(1)
#

require 'test_helper'

class BannerTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
