# == Schema Information
#
# Table name: advertisements
#
#  id                    :integer(4)      not null, primary key
#  title                 :string(255)
#  description           :text
#  ad_type               :string(255)
#  active                :boolean(1)
#  created_at            :datetime
#  updated_at            :datetime
#  ad_image_file_name    :string(255)
#  ad_image_content_type :string(255)
#  ad_image_file_size    :integer(4)
#  ad_image_updated_at   :datetime
#  link_url              :string(255)
#  listed_order          :integer(4)
#  expiration_date       :date
#

require 'test_helper'

class AdvertisementTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
